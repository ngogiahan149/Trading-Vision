Є/
Е
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
С
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
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
і
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
Ћ
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleщelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements#
handleщelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintџџџџџџџџџ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

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
"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28и -
|
dense_114/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_114/kernel
u
$dense_114/kernel/Read/ReadVariableOpReadVariableOpdense_114/kernel*
_output_shapes

:
*
dtype0
t
dense_114/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_114/bias
m
"dense_114/bias/Read/ReadVariableOpReadVariableOpdense_114/bias*
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

lstm_342/lstm_cell_342/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*.
shared_namelstm_342/lstm_cell_342/kernel

1lstm_342/lstm_cell_342/kernel/Read/ReadVariableOpReadVariableOplstm_342/lstm_cell_342/kernel*
_output_shapes
:	*
dtype0
Ћ
'lstm_342/lstm_cell_342/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*8
shared_name)'lstm_342/lstm_cell_342/recurrent_kernel
Є
;lstm_342/lstm_cell_342/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_342/lstm_cell_342/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_342/lstm_cell_342/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelstm_342/lstm_cell_342/bias

/lstm_342/lstm_cell_342/bias/Read/ReadVariableOpReadVariableOplstm_342/lstm_cell_342/bias*
_output_shapes	
:*
dtype0

lstm_343/lstm_cell_343/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dШ*.
shared_namelstm_343/lstm_cell_343/kernel

1lstm_343/lstm_cell_343/kernel/Read/ReadVariableOpReadVariableOplstm_343/lstm_cell_343/kernel*
_output_shapes
:	dШ*
dtype0
Ћ
'lstm_343/lstm_cell_343/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2Ш*8
shared_name)'lstm_343/lstm_cell_343/recurrent_kernel
Є
;lstm_343/lstm_cell_343/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_343/lstm_cell_343/recurrent_kernel*
_output_shapes
:	2Ш*
dtype0

lstm_343/lstm_cell_343/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ш*,
shared_namelstm_343/lstm_cell_343/bias

/lstm_343/lstm_cell_343/bias/Read/ReadVariableOpReadVariableOplstm_343/lstm_cell_343/bias*
_output_shapes	
:Ш*
dtype0

lstm_344/lstm_cell_344/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_344/lstm_cell_344/kernel

1lstm_344/lstm_cell_344/kernel/Read/ReadVariableOpReadVariableOplstm_344/lstm_cell_344/kernel*
_output_shapes

:2(*
dtype0
Њ
'lstm_344/lstm_cell_344/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_344/lstm_cell_344/recurrent_kernel
Ѓ
;lstm_344/lstm_cell_344/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_344/lstm_cell_344/recurrent_kernel*
_output_shapes

:
(*
dtype0

lstm_344/lstm_cell_344/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_344/lstm_cell_344/bias

/lstm_344/lstm_cell_344/bias/Read/ReadVariableOpReadVariableOplstm_344/lstm_cell_344/bias*
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

Adam/dense_114/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_114/kernel/m

+Adam/dense_114/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_114/kernel/m*
_output_shapes

:
*
dtype0

Adam/dense_114/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_114/bias/m
{
)Adam/dense_114/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_114/bias/m*
_output_shapes
:*
dtype0
Ѕ
$Adam/lstm_342/lstm_cell_342/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_342/lstm_cell_342/kernel/m

8Adam/lstm_342/lstm_cell_342/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_342/lstm_cell_342/kernel/m*
_output_shapes
:	*
dtype0
Й
.Adam/lstm_342/lstm_cell_342/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_342/lstm_cell_342/recurrent_kernel/m
В
BAdam/lstm_342/lstm_cell_342/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_342/lstm_cell_342/recurrent_kernel/m*
_output_shapes
:	d*
dtype0

"Adam/lstm_342/lstm_cell_342/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_342/lstm_cell_342/bias/m

6Adam/lstm_342/lstm_cell_342/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_342/lstm_cell_342/bias/m*
_output_shapes	
:*
dtype0
Ѕ
$Adam/lstm_343/lstm_cell_343/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dШ*5
shared_name&$Adam/lstm_343/lstm_cell_343/kernel/m

8Adam/lstm_343/lstm_cell_343/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_343/lstm_cell_343/kernel/m*
_output_shapes
:	dШ*
dtype0
Й
.Adam/lstm_343/lstm_cell_343/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2Ш*?
shared_name0.Adam/lstm_343/lstm_cell_343/recurrent_kernel/m
В
BAdam/lstm_343/lstm_cell_343/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_343/lstm_cell_343/recurrent_kernel/m*
_output_shapes
:	2Ш*
dtype0

"Adam/lstm_343/lstm_cell_343/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ш*3
shared_name$"Adam/lstm_343/lstm_cell_343/bias/m

6Adam/lstm_343/lstm_cell_343/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_343/lstm_cell_343/bias/m*
_output_shapes	
:Ш*
dtype0
Є
$Adam/lstm_344/lstm_cell_344/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_344/lstm_cell_344/kernel/m

8Adam/lstm_344/lstm_cell_344/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_344/lstm_cell_344/kernel/m*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_344/lstm_cell_344/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_344/lstm_cell_344/recurrent_kernel/m
Б
BAdam/lstm_344/lstm_cell_344/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_344/lstm_cell_344/recurrent_kernel/m*
_output_shapes

:
(*
dtype0

"Adam/lstm_344/lstm_cell_344/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_344/lstm_cell_344/bias/m

6Adam/lstm_344/lstm_cell_344/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_344/lstm_cell_344/bias/m*
_output_shapes
:(*
dtype0

Adam/dense_114/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_114/kernel/v

+Adam/dense_114/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_114/kernel/v*
_output_shapes

:
*
dtype0

Adam/dense_114/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_114/bias/v
{
)Adam/dense_114/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_114/bias/v*
_output_shapes
:*
dtype0
Ѕ
$Adam/lstm_342/lstm_cell_342/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_342/lstm_cell_342/kernel/v

8Adam/lstm_342/lstm_cell_342/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_342/lstm_cell_342/kernel/v*
_output_shapes
:	*
dtype0
Й
.Adam/lstm_342/lstm_cell_342/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*?
shared_name0.Adam/lstm_342/lstm_cell_342/recurrent_kernel/v
В
BAdam/lstm_342/lstm_cell_342/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_342/lstm_cell_342/recurrent_kernel/v*
_output_shapes
:	d*
dtype0

"Adam/lstm_342/lstm_cell_342/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_342/lstm_cell_342/bias/v

6Adam/lstm_342/lstm_cell_342/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_342/lstm_cell_342/bias/v*
_output_shapes	
:*
dtype0
Ѕ
$Adam/lstm_343/lstm_cell_343/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dШ*5
shared_name&$Adam/lstm_343/lstm_cell_343/kernel/v

8Adam/lstm_343/lstm_cell_343/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_343/lstm_cell_343/kernel/v*
_output_shapes
:	dШ*
dtype0
Й
.Adam/lstm_343/lstm_cell_343/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2Ш*?
shared_name0.Adam/lstm_343/lstm_cell_343/recurrent_kernel/v
В
BAdam/lstm_343/lstm_cell_343/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_343/lstm_cell_343/recurrent_kernel/v*
_output_shapes
:	2Ш*
dtype0

"Adam/lstm_343/lstm_cell_343/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ш*3
shared_name$"Adam/lstm_343/lstm_cell_343/bias/v

6Adam/lstm_343/lstm_cell_343/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_343/lstm_cell_343/bias/v*
_output_shapes	
:Ш*
dtype0
Є
$Adam/lstm_344/lstm_cell_344/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_344/lstm_cell_344/kernel/v

8Adam/lstm_344/lstm_cell_344/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_344/lstm_cell_344/kernel/v*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_344/lstm_cell_344/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_344/lstm_cell_344/recurrent_kernel/v
Б
BAdam/lstm_344/lstm_cell_344/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_344/lstm_cell_344/recurrent_kernel/v*
_output_shapes

:
(*
dtype0

"Adam/lstm_344/lstm_cell_344/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_344/lstm_cell_344/bias/v

6Adam/lstm_344/lstm_cell_344/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_344/lstm_cell_344/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
хA
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0* A
valueABA BA
В
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

cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api

cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api

cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api


!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api

(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3m4m5m!v"v-v.v/v0v1v2v3v4v5v
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
­
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
Г
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
Й

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
Г
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
Й

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
Г
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
Й

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
VARIABLE_VALUEdense_114/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_114/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

!0
"1

!0
"1
 
­
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
VARIABLE_VALUElstm_342/lstm_cell_342/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_342/lstm_cell_342/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_342/lstm_cell_342/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_343/lstm_cell_343/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_343/lstm_cell_343/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_343/lstm_cell_343/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_344/lstm_cell_344/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_344/lstm_cell_344/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_344/lstm_cell_344/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
­
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
­
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
­
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
VARIABLE_VALUEAdam/dense_114/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_114/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_342/lstm_cell_342/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_342/lstm_cell_342/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_342/lstm_cell_342/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_343/lstm_cell_343/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_343/lstm_cell_343/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_343/lstm_cell_343/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_344/lstm_cell_344/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_344/lstm_cell_344/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_344/lstm_cell_344/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_114/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_114/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_342/lstm_cell_342/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_342/lstm_cell_342/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_342/lstm_cell_342/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_343/lstm_cell_343/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_343/lstm_cell_343/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_343/lstm_cell_343/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_344/lstm_cell_344/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_344/lstm_cell_344/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_344/lstm_cell_344/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_342_inputPlaceholder*+
_output_shapes
:џџџџџџџџџ*
dtype0* 
shape:џџџџџџџџџ
 
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_342_inputlstm_342/lstm_cell_342/kernel'lstm_342/lstm_cell_342/recurrent_kernellstm_342/lstm_cell_342/biaslstm_343/lstm_cell_343/kernel'lstm_343/lstm_cell_343/recurrent_kernellstm_343/lstm_cell_343/biaslstm_344/lstm_cell_344/kernel'lstm_344/lstm_cell_344/recurrent_kernellstm_344/lstm_cell_344/biasdense_114/kerneldense_114/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_596174
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
У
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_114/kernel/Read/ReadVariableOp"dense_114/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_342/lstm_cell_342/kernel/Read/ReadVariableOp;lstm_342/lstm_cell_342/recurrent_kernel/Read/ReadVariableOp/lstm_342/lstm_cell_342/bias/Read/ReadVariableOp1lstm_343/lstm_cell_343/kernel/Read/ReadVariableOp;lstm_343/lstm_cell_343/recurrent_kernel/Read/ReadVariableOp/lstm_343/lstm_cell_343/bias/Read/ReadVariableOp1lstm_344/lstm_cell_344/kernel/Read/ReadVariableOp;lstm_344/lstm_cell_344/recurrent_kernel/Read/ReadVariableOp/lstm_344/lstm_cell_344/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_114/kernel/m/Read/ReadVariableOp)Adam/dense_114/bias/m/Read/ReadVariableOp8Adam/lstm_342/lstm_cell_342/kernel/m/Read/ReadVariableOpBAdam/lstm_342/lstm_cell_342/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_342/lstm_cell_342/bias/m/Read/ReadVariableOp8Adam/lstm_343/lstm_cell_343/kernel/m/Read/ReadVariableOpBAdam/lstm_343/lstm_cell_343/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_343/lstm_cell_343/bias/m/Read/ReadVariableOp8Adam/lstm_344/lstm_cell_344/kernel/m/Read/ReadVariableOpBAdam/lstm_344/lstm_cell_344/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_344/lstm_cell_344/bias/m/Read/ReadVariableOp+Adam/dense_114/kernel/v/Read/ReadVariableOp)Adam/dense_114/bias/v/Read/ReadVariableOp8Adam/lstm_342/lstm_cell_342/kernel/v/Read/ReadVariableOpBAdam/lstm_342/lstm_cell_342/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_342/lstm_cell_342/bias/v/Read/ReadVariableOp8Adam/lstm_343/lstm_cell_343/kernel/v/Read/ReadVariableOpBAdam/lstm_343/lstm_cell_343/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_343/lstm_cell_343/bias/v/Read/ReadVariableOp8Adam/lstm_344/lstm_cell_344/kernel/v/Read/ReadVariableOpBAdam/lstm_344/lstm_cell_344/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_344/lstm_cell_344/bias/v/Read/ReadVariableOpConst*5
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
GPU 2J 8 *(
f#R!
__inference__traced_save_599386

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_114/kerneldense_114/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_342/lstm_cell_342/kernel'lstm_342/lstm_cell_342/recurrent_kernellstm_342/lstm_cell_342/biaslstm_343/lstm_cell_343/kernel'lstm_343/lstm_cell_343/recurrent_kernellstm_343/lstm_cell_343/biaslstm_344/lstm_cell_344/kernel'lstm_344/lstm_cell_344/recurrent_kernellstm_344/lstm_cell_344/biastotalcountAdam/dense_114/kernel/mAdam/dense_114/bias/m$Adam/lstm_342/lstm_cell_342/kernel/m.Adam/lstm_342/lstm_cell_342/recurrent_kernel/m"Adam/lstm_342/lstm_cell_342/bias/m$Adam/lstm_343/lstm_cell_343/kernel/m.Adam/lstm_343/lstm_cell_343/recurrent_kernel/m"Adam/lstm_343/lstm_cell_343/bias/m$Adam/lstm_344/lstm_cell_344/kernel/m.Adam/lstm_344/lstm_cell_344/recurrent_kernel/m"Adam/lstm_344/lstm_cell_344/bias/mAdam/dense_114/kernel/vAdam/dense_114/bias/v$Adam/lstm_342/lstm_cell_342/kernel/v.Adam/lstm_342/lstm_cell_342/recurrent_kernel/v"Adam/lstm_342/lstm_cell_342/bias/v$Adam/lstm_343/lstm_cell_343/kernel/v.Adam/lstm_343/lstm_cell_343/recurrent_kernel/v"Adam/lstm_343/lstm_cell_343/bias/v$Adam/lstm_344/lstm_cell_344/kernel/v.Adam/lstm_344/lstm_cell_344/recurrent_kernel/v"Adam/lstm_344/lstm_cell_344/bias/v*4
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_599516им+
ѓЄ

"__inference__traced_restore_599516
file_prefix3
!assignvariableop_dense_114_kernel:
/
!assignvariableop_1_dense_114_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_342_lstm_cell_342_kernel:	M
:assignvariableop_8_lstm_342_lstm_cell_342_recurrent_kernel:	d=
.assignvariableop_9_lstm_342_lstm_cell_342_bias:	D
1assignvariableop_10_lstm_343_lstm_cell_343_kernel:	dШN
;assignvariableop_11_lstm_343_lstm_cell_343_recurrent_kernel:	2Ш>
/assignvariableop_12_lstm_343_lstm_cell_343_bias:	ШC
1assignvariableop_13_lstm_344_lstm_cell_344_kernel:2(M
;assignvariableop_14_lstm_344_lstm_cell_344_recurrent_kernel:
(=
/assignvariableop_15_lstm_344_lstm_cell_344_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_114_kernel_m:
7
)assignvariableop_19_adam_dense_114_bias_m:K
8assignvariableop_20_adam_lstm_342_lstm_cell_342_kernel_m:	U
Bassignvariableop_21_adam_lstm_342_lstm_cell_342_recurrent_kernel_m:	dE
6assignvariableop_22_adam_lstm_342_lstm_cell_342_bias_m:	K
8assignvariableop_23_adam_lstm_343_lstm_cell_343_kernel_m:	dШU
Bassignvariableop_24_adam_lstm_343_lstm_cell_343_recurrent_kernel_m:	2ШE
6assignvariableop_25_adam_lstm_343_lstm_cell_343_bias_m:	ШJ
8assignvariableop_26_adam_lstm_344_lstm_cell_344_kernel_m:2(T
Bassignvariableop_27_adam_lstm_344_lstm_cell_344_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_344_lstm_cell_344_bias_m:(=
+assignvariableop_29_adam_dense_114_kernel_v:
7
)assignvariableop_30_adam_dense_114_bias_v:K
8assignvariableop_31_adam_lstm_342_lstm_cell_342_kernel_v:	U
Bassignvariableop_32_adam_lstm_342_lstm_cell_342_recurrent_kernel_v:	dE
6assignvariableop_33_adam_lstm_342_lstm_cell_342_bias_v:	K
8assignvariableop_34_adam_lstm_343_lstm_cell_343_kernel_v:	dШU
Bassignvariableop_35_adam_lstm_343_lstm_cell_343_recurrent_kernel_v:	2ШE
6assignvariableop_36_adam_lstm_343_lstm_cell_343_bias_v:	ШJ
8assignvariableop_37_adam_lstm_344_lstm_cell_344_kernel_v:2(T
Bassignvariableop_38_adam_lstm_344_lstm_cell_344_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_344_lstm_cell_344_bias_v:(
identity_41ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Ш
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*ю
valueфBс)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHТ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ю
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*К
_output_shapesЇ
Є:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp!assignvariableop_dense_114_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_114_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_342_lstm_cell_342_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_342_lstm_cell_342_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_342_lstm_cell_342_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_343_lstm_cell_343_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_343_lstm_cell_343_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_343_lstm_cell_343_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_344_lstm_cell_344_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_344_lstm_cell_344_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_344_lstm_cell_344_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_114_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_114_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_342_lstm_cell_342_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Г
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_342_lstm_cell_342_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_342_lstm_cell_342_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_343_lstm_cell_343_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Г
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_343_lstm_cell_343_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_343_lstm_cell_343_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_344_lstm_cell_344_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Г
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_344_lstm_cell_344_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_344_lstm_cell_344_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_114_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_114_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_342_lstm_cell_342_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Г
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_342_lstm_cell_342_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_342_lstm_cell_342_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_343_lstm_cell_343_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Г
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_343_lstm_cell_343_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_343_lstm_cell_343_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_344_lstm_cell_344_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Г
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_344_lstm_cell_344_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_344_lstm_cell_344_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 П
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: Ќ
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
лB
№

lstm_342_while_body_596287.
*lstm_342_while_lstm_342_while_loop_counter4
0lstm_342_while_lstm_342_while_maximum_iterations
lstm_342_while_placeholder 
lstm_342_while_placeholder_1 
lstm_342_while_placeholder_2 
lstm_342_while_placeholder_3-
)lstm_342_while_lstm_342_strided_slice_1_0i
elstm_342_while_tensorarrayv2read_tensorlistgetitem_lstm_342_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_342_while_lstm_cell_96_matmul_readvariableop_resource_0:	Q
>lstm_342_while_lstm_cell_96_matmul_1_readvariableop_resource_0:	dL
=lstm_342_while_lstm_cell_96_biasadd_readvariableop_resource_0:	
lstm_342_while_identity
lstm_342_while_identity_1
lstm_342_while_identity_2
lstm_342_while_identity_3
lstm_342_while_identity_4
lstm_342_while_identity_5+
'lstm_342_while_lstm_342_strided_slice_1g
clstm_342_while_tensorarrayv2read_tensorlistgetitem_lstm_342_tensorarrayunstack_tensorlistfromtensorM
:lstm_342_while_lstm_cell_96_matmul_readvariableop_resource:	O
<lstm_342_while_lstm_cell_96_matmul_1_readvariableop_resource:	dJ
;lstm_342_while_lstm_cell_96_biasadd_readvariableop_resource:	Ђ2lstm_342/while/lstm_cell_96/BiasAdd/ReadVariableOpЂ1lstm_342/while/lstm_cell_96/MatMul/ReadVariableOpЂ3lstm_342/while/lstm_cell_96/MatMul_1/ReadVariableOp
@lstm_342/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   г
2lstm_342/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_342_while_tensorarrayv2read_tensorlistgetitem_lstm_342_tensorarrayunstack_tensorlistfromtensor_0lstm_342_while_placeholderIlstm_342/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Џ
1lstm_342/while/lstm_cell_96/MatMul/ReadVariableOpReadVariableOp<lstm_342_while_lstm_cell_96_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0е
"lstm_342/while/lstm_cell_96/MatMulMatMul9lstm_342/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_342/while/lstm_cell_96/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџГ
3lstm_342/while/lstm_cell_96/MatMul_1/ReadVariableOpReadVariableOp>lstm_342_while_lstm_cell_96_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0М
$lstm_342/while/lstm_cell_96/MatMul_1MatMullstm_342_while_placeholder_2;lstm_342/while/lstm_cell_96/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЙ
lstm_342/while/lstm_cell_96/addAddV2,lstm_342/while/lstm_cell_96/MatMul:product:0.lstm_342/while/lstm_cell_96/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ­
2lstm_342/while/lstm_cell_96/BiasAdd/ReadVariableOpReadVariableOp=lstm_342_while_lstm_cell_96_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Т
#lstm_342/while/lstm_cell_96/BiasAddBiasAdd#lstm_342/while/lstm_cell_96/add:z:0:lstm_342/while/lstm_cell_96/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџm
+lstm_342/while/lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_342/while/lstm_cell_96/splitSplit4lstm_342/while/lstm_cell_96/split/split_dim:output:0,lstm_342/while/lstm_cell_96/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split
#lstm_342/while/lstm_cell_96/SigmoidSigmoid*lstm_342/while/lstm_cell_96/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
%lstm_342/while/lstm_cell_96/Sigmoid_1Sigmoid*lstm_342/while/lstm_cell_96/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdЁ
lstm_342/while/lstm_cell_96/mulMul)lstm_342/while/lstm_cell_96/Sigmoid_1:y:0lstm_342_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd
 lstm_342/while/lstm_cell_96/ReluRelu*lstm_342/while/lstm_cell_96/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdГ
!lstm_342/while/lstm_cell_96/mul_1Mul'lstm_342/while/lstm_cell_96/Sigmoid:y:0.lstm_342/while/lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdЈ
!lstm_342/while/lstm_cell_96/add_1AddV2#lstm_342/while/lstm_cell_96/mul:z:0%lstm_342/while/lstm_cell_96/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
%lstm_342/while/lstm_cell_96/Sigmoid_2Sigmoid*lstm_342/while/lstm_cell_96/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd
"lstm_342/while/lstm_cell_96/Relu_1Relu%lstm_342/while/lstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdЗ
!lstm_342/while/lstm_cell_96/mul_2Mul)lstm_342/while/lstm_cell_96/Sigmoid_2:y:00lstm_342/while/lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdщ
3lstm_342/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_342_while_placeholder_1lstm_342_while_placeholder%lstm_342/while/lstm_cell_96/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвV
lstm_342/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_342/while/addAddV2lstm_342_while_placeholderlstm_342/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_342/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_342/while/add_1AddV2*lstm_342_while_lstm_342_while_loop_counterlstm_342/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_342/while/IdentityIdentitylstm_342/while/add_1:z:0^lstm_342/while/NoOp*
T0*
_output_shapes
: 
lstm_342/while/Identity_1Identity0lstm_342_while_lstm_342_while_maximum_iterations^lstm_342/while/NoOp*
T0*
_output_shapes
: t
lstm_342/while/Identity_2Identitylstm_342/while/add:z:0^lstm_342/while/NoOp*
T0*
_output_shapes
: Ё
lstm_342/while/Identity_3IdentityClstm_342/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_342/while/NoOp*
T0*
_output_shapes
: 
lstm_342/while/Identity_4Identity%lstm_342/while/lstm_cell_96/mul_2:z:0^lstm_342/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_342/while/Identity_5Identity%lstm_342/while/lstm_cell_96/add_1:z:0^lstm_342/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdє
lstm_342/while/NoOpNoOp3^lstm_342/while/lstm_cell_96/BiasAdd/ReadVariableOp2^lstm_342/while/lstm_cell_96/MatMul/ReadVariableOp4^lstm_342/while/lstm_cell_96/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_342_while_identity lstm_342/while/Identity:output:0"?
lstm_342_while_identity_1"lstm_342/while/Identity_1:output:0"?
lstm_342_while_identity_2"lstm_342/while/Identity_2:output:0"?
lstm_342_while_identity_3"lstm_342/while/Identity_3:output:0"?
lstm_342_while_identity_4"lstm_342/while/Identity_4:output:0"?
lstm_342_while_identity_5"lstm_342/while/Identity_5:output:0"T
'lstm_342_while_lstm_342_strided_slice_1)lstm_342_while_lstm_342_strided_slice_1_0"|
;lstm_342_while_lstm_cell_96_biasadd_readvariableop_resource=lstm_342_while_lstm_cell_96_biasadd_readvariableop_resource_0"~
<lstm_342_while_lstm_cell_96_matmul_1_readvariableop_resource>lstm_342_while_lstm_cell_96_matmul_1_readvariableop_resource_0"z
:lstm_342_while_lstm_cell_96_matmul_readvariableop_resource<lstm_342_while_lstm_cell_96_matmul_readvariableop_resource_0"Ь
clstm_342_while_tensorarrayv2read_tensorlistgetitem_lstm_342_tensorarrayunstack_tensorlistfromtensorelstm_342_while_tensorarrayv2read_tensorlistgetitem_lstm_342_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2h
2lstm_342/while/lstm_cell_96/BiasAdd/ReadVariableOp2lstm_342/while/lstm_cell_96/BiasAdd/ReadVariableOp2f
1lstm_342/while/lstm_cell_96/MatMul/ReadVariableOp1lstm_342/while/lstm_cell_96/MatMul/ReadVariableOp2j
3lstm_342/while/lstm_cell_96/MatMul_1/ReadVariableOp3lstm_342/while/lstm_cell_96/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
Е
У
while_cond_598702
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_598702___redundant_placeholder04
0while_while_cond_598702___redundant_placeholder14
0while_while_cond_598702___redundant_placeholder24
0while_while_cond_598702___redundant_placeholder3
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
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
лB
№

lstm_343_while_body_596853.
*lstm_343_while_lstm_343_while_loop_counter4
0lstm_343_while_lstm_343_while_maximum_iterations
lstm_343_while_placeholder 
lstm_343_while_placeholder_1 
lstm_343_while_placeholder_2 
lstm_343_while_placeholder_3-
)lstm_343_while_lstm_343_strided_slice_1_0i
elstm_343_while_tensorarrayv2read_tensorlistgetitem_lstm_343_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_343_while_lstm_cell_97_matmul_readvariableop_resource_0:	dШQ
>lstm_343_while_lstm_cell_97_matmul_1_readvariableop_resource_0:	2ШL
=lstm_343_while_lstm_cell_97_biasadd_readvariableop_resource_0:	Ш
lstm_343_while_identity
lstm_343_while_identity_1
lstm_343_while_identity_2
lstm_343_while_identity_3
lstm_343_while_identity_4
lstm_343_while_identity_5+
'lstm_343_while_lstm_343_strided_slice_1g
clstm_343_while_tensorarrayv2read_tensorlistgetitem_lstm_343_tensorarrayunstack_tensorlistfromtensorM
:lstm_343_while_lstm_cell_97_matmul_readvariableop_resource:	dШO
<lstm_343_while_lstm_cell_97_matmul_1_readvariableop_resource:	2ШJ
;lstm_343_while_lstm_cell_97_biasadd_readvariableop_resource:	ШЂ2lstm_343/while/lstm_cell_97/BiasAdd/ReadVariableOpЂ1lstm_343/while/lstm_cell_97/MatMul/ReadVariableOpЂ3lstm_343/while/lstm_cell_97/MatMul_1/ReadVariableOp
@lstm_343/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   г
2lstm_343/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_343_while_tensorarrayv2read_tensorlistgetitem_lstm_343_tensorarrayunstack_tensorlistfromtensor_0lstm_343_while_placeholderIlstm_343/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0Џ
1lstm_343/while/lstm_cell_97/MatMul/ReadVariableOpReadVariableOp<lstm_343_while_lstm_cell_97_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0е
"lstm_343/while/lstm_cell_97/MatMulMatMul9lstm_343/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_343/while/lstm_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШГ
3lstm_343/while/lstm_cell_97/MatMul_1/ReadVariableOpReadVariableOp>lstm_343_while_lstm_cell_97_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0М
$lstm_343/while/lstm_cell_97/MatMul_1MatMullstm_343_while_placeholder_2;lstm_343/while/lstm_cell_97/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЙ
lstm_343/while/lstm_cell_97/addAddV2,lstm_343/while/lstm_cell_97/MatMul:product:0.lstm_343/while/lstm_cell_97/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ­
2lstm_343/while/lstm_cell_97/BiasAdd/ReadVariableOpReadVariableOp=lstm_343_while_lstm_cell_97_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Т
#lstm_343/while/lstm_cell_97/BiasAddBiasAdd#lstm_343/while/lstm_cell_97/add:z:0:lstm_343/while/lstm_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШm
+lstm_343/while/lstm_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_343/while/lstm_cell_97/splitSplit4lstm_343/while/lstm_cell_97/split/split_dim:output:0,lstm_343/while/lstm_cell_97/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split
#lstm_343/while/lstm_cell_97/SigmoidSigmoid*lstm_343/while/lstm_cell_97/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
%lstm_343/while/lstm_cell_97/Sigmoid_1Sigmoid*lstm_343/while/lstm_cell_97/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
lstm_343/while/lstm_cell_97/mulMul)lstm_343/while/lstm_cell_97/Sigmoid_1:y:0lstm_343_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
 lstm_343/while/lstm_cell_97/ReluRelu*lstm_343/while/lstm_cell_97/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Г
!lstm_343/while/lstm_cell_97/mul_1Mul'lstm_343/while/lstm_cell_97/Sigmoid:y:0.lstm_343/while/lstm_cell_97/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ј
!lstm_343/while/lstm_cell_97/add_1AddV2#lstm_343/while/lstm_cell_97/mul:z:0%lstm_343/while/lstm_cell_97/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
%lstm_343/while/lstm_cell_97/Sigmoid_2Sigmoid*lstm_343/while/lstm_cell_97/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
"lstm_343/while/lstm_cell_97/Relu_1Relu%lstm_343/while/lstm_cell_97/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2З
!lstm_343/while/lstm_cell_97/mul_2Mul)lstm_343/while/lstm_cell_97/Sigmoid_2:y:00lstm_343/while/lstm_cell_97/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2щ
3lstm_343/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_343_while_placeholder_1lstm_343_while_placeholder%lstm_343/while/lstm_cell_97/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвV
lstm_343/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_343/while/addAddV2lstm_343_while_placeholderlstm_343/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_343/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_343/while/add_1AddV2*lstm_343_while_lstm_343_while_loop_counterlstm_343/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_343/while/IdentityIdentitylstm_343/while/add_1:z:0^lstm_343/while/NoOp*
T0*
_output_shapes
: 
lstm_343/while/Identity_1Identity0lstm_343_while_lstm_343_while_maximum_iterations^lstm_343/while/NoOp*
T0*
_output_shapes
: t
lstm_343/while/Identity_2Identitylstm_343/while/add:z:0^lstm_343/while/NoOp*
T0*
_output_shapes
: Ё
lstm_343/while/Identity_3IdentityClstm_343/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_343/while/NoOp*
T0*
_output_shapes
: 
lstm_343/while/Identity_4Identity%lstm_343/while/lstm_cell_97/mul_2:z:0^lstm_343/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_343/while/Identity_5Identity%lstm_343/while/lstm_cell_97/add_1:z:0^lstm_343/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2є
lstm_343/while/NoOpNoOp3^lstm_343/while/lstm_cell_97/BiasAdd/ReadVariableOp2^lstm_343/while/lstm_cell_97/MatMul/ReadVariableOp4^lstm_343/while/lstm_cell_97/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_343_while_identity lstm_343/while/Identity:output:0"?
lstm_343_while_identity_1"lstm_343/while/Identity_1:output:0"?
lstm_343_while_identity_2"lstm_343/while/Identity_2:output:0"?
lstm_343_while_identity_3"lstm_343/while/Identity_3:output:0"?
lstm_343_while_identity_4"lstm_343/while/Identity_4:output:0"?
lstm_343_while_identity_5"lstm_343/while/Identity_5:output:0"T
'lstm_343_while_lstm_343_strided_slice_1)lstm_343_while_lstm_343_strided_slice_1_0"|
;lstm_343_while_lstm_cell_97_biasadd_readvariableop_resource=lstm_343_while_lstm_cell_97_biasadd_readvariableop_resource_0"~
<lstm_343_while_lstm_cell_97_matmul_1_readvariableop_resource>lstm_343_while_lstm_cell_97_matmul_1_readvariableop_resource_0"z
:lstm_343_while_lstm_cell_97_matmul_readvariableop_resource<lstm_343_while_lstm_cell_97_matmul_readvariableop_resource_0"Ь
clstm_343_while_tensorarrayv2read_tensorlistgetitem_lstm_343_tensorarrayunstack_tensorlistfromtensorelstm_343_while_tensorarrayv2read_tensorlistgetitem_lstm_343_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2h
2lstm_343/while/lstm_cell_97/BiasAdd/ReadVariableOp2lstm_343/while/lstm_cell_97/BiasAdd/ReadVariableOp2f
1lstm_343/while/lstm_cell_97/MatMul/ReadVariableOp1lstm_343/while/lstm_cell_97/MatMul/ReadVariableOp2j
3lstm_343/while/lstm_cell_97/MatMul_1/ReadVariableOp3lstm_343/while/lstm_cell_97/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
З
я
J__inference_sequential_114_layer_call_and_return_conditional_losses_595438

inputs"
lstm_342_595114:	"
lstm_342_595116:	d
lstm_342_595118:	"
lstm_343_595264:	dШ"
lstm_343_595266:	2Ш
lstm_343_595268:	Ш!
lstm_344_595414:2(!
lstm_344_595416:
(
lstm_344_595418:("
dense_114_595432:

dense_114_595434:
identityЂ!dense_114/StatefulPartitionedCallЂ lstm_342/StatefulPartitionedCallЂ lstm_343/StatefulPartitionedCallЂ lstm_344/StatefulPartitionedCall
 lstm_342/StatefulPartitionedCallStatefulPartitionedCallinputslstm_342_595114lstm_342_595116lstm_342_595118*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_342_layer_call_and_return_conditional_losses_595113Њ
 lstm_343/StatefulPartitionedCallStatefulPartitionedCall)lstm_342/StatefulPartitionedCall:output:0lstm_343_595264lstm_343_595266lstm_343_595268*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_343_layer_call_and_return_conditional_losses_595263І
 lstm_344/StatefulPartitionedCallStatefulPartitionedCall)lstm_343/StatefulPartitionedCall:output:0lstm_344_595414lstm_344_595416lstm_344_595418*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_344_layer_call_and_return_conditional_losses_595413
!dense_114/StatefulPartitionedCallStatefulPartitionedCall)lstm_344/StatefulPartitionedCall:output:0dense_114_595432dense_114_595434*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_114_layer_call_and_return_conditional_losses_595431y
IdentityIdentity*dense_114/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџг
NoOpNoOp"^dense_114/StatefulPartitionedCall!^lstm_342/StatefulPartitionedCall!^lstm_343/StatefulPartitionedCall!^lstm_344/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 2F
!dense_114/StatefulPartitionedCall!dense_114/StatefulPartitionedCall2D
 lstm_342/StatefulPartitionedCall lstm_342/StatefulPartitionedCall2D
 lstm_343/StatefulPartitionedCall lstm_343/StatefulPartitionedCall2D
 lstm_344/StatefulPartitionedCall lstm_344/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Е
У
while_cond_598559
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_598559___redundant_placeholder04
0while_while_cond_598559___redundant_placeholder14
0while_while_cond_598559___redundant_placeholder24
0while_while_cond_598559___redundant_placeholder3
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
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
8

D__inference_lstm_342_layer_call_and_return_conditional_losses_594064

inputs&
lstm_cell_96_593982:	&
lstm_cell_96_593984:	d"
lstm_cell_96_593986:	
identityЂ$lstm_cell_96/StatefulPartitionedCallЂwhile;
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
valueB:б
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
:џџџџџџџџџdR
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
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskѕ
$lstm_cell_96/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_96_593982lstm_cell_96_593984lstm_cell_96_593986*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_96_layer_call_and_return_conditional_losses_593981n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : З
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_96_593982lstm_cell_96_593984lstm_cell_96_593986*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_593995*
condR
while_cond_593994*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџdu
NoOpNoOp%^lstm_cell_96/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2L
$lstm_cell_96/StatefulPartitionedCall$lstm_cell_96/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ц"
у
while_body_594536
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_97_594560_0:	dШ.
while_lstm_cell_97_594562_0:	2Ш*
while_lstm_cell_97_594564_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_97_594560:	dШ,
while_lstm_cell_97_594562:	2Ш(
while_lstm_cell_97_594564:	ШЂ*while/lstm_cell_97/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0Г
*while/lstm_cell_97/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_97_594560_0while_lstm_cell_97_594562_0while_lstm_cell_97_594564_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_97_layer_call_and_return_conditional_losses_594477м
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_97/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_97/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_5Identity3while/lstm_cell_97/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y

while/NoOpNoOp+^while/lstm_cell_97/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_97_594560while_lstm_cell_97_594560_0"8
while_lstm_cell_97_594562while_lstm_cell_97_594562_0"8
while_lstm_cell_97_594564while_lstm_cell_97_594564_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2X
*while/lstm_cell_97/StatefulPartitionedCall*while/lstm_cell_97/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
і
Г
)__inference_lstm_344_layer_call_fn_598358

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identityЂStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_344_layer_call_and_return_conditional_losses_595629o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
8

D__inference_lstm_342_layer_call_and_return_conditional_losses_594255

inputs&
lstm_cell_96_594173:	&
lstm_cell_96_594175:	d"
lstm_cell_96_594177:	
identityЂ$lstm_cell_96/StatefulPartitionedCallЂwhile;
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
valueB:б
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
:џџџџџџџџџdR
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
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskѕ
$lstm_cell_96/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_96_594173lstm_cell_96_594175lstm_cell_96_594177*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_96_layer_call_and_return_conditional_losses_594127n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : З
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_96_594173lstm_cell_96_594175lstm_cell_96_594177*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_594186*
condR
while_cond_594185*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџdu
NoOpNoOp%^lstm_cell_96/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2L
$lstm_cell_96/StatefulPartitionedCall$lstm_cell_96/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Е
У
while_cond_594885
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_594885___redundant_placeholder04
0while_while_cond_594885___redundant_placeholder14
0while_while_cond_594885___redundant_placeholder24
0while_while_cond_594885___redundant_placeholder3
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
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
ц"
у
while_body_594345
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_97_594369_0:	dШ.
while_lstm_cell_97_594371_0:	2Ш*
while_lstm_cell_97_594373_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_97_594369:	dШ,
while_lstm_cell_97_594371:	2Ш(
while_lstm_cell_97_594373:	ШЂ*while/lstm_cell_97/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0Г
*while/lstm_cell_97/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_97_594369_0while_lstm_cell_97_594371_0while_lstm_cell_97_594373_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_97_layer_call_and_return_conditional_losses_594331м
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_97/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_97/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_5Identity3while/lstm_cell_97/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y

while/NoOpNoOp+^while/lstm_cell_97/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_97_594369while_lstm_cell_97_594369_0"8
while_lstm_cell_97_594371while_lstm_cell_97_594371_0"8
while_lstm_cell_97_594373while_lstm_cell_97_594373_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2X
*while/lstm_cell_97/StatefulPartitionedCall*while/lstm_cell_97/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
Е
У
while_cond_594535
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_594535___redundant_placeholder04
0while_while_cond_594535___redundant_placeholder14
0while_while_cond_594535___redundant_placeholder24
0while_while_cond_594535___redundant_placeholder3
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
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
ЄJ

D__inference_lstm_342_layer_call_and_return_conditional_losses_595959

inputs>
+lstm_cell_96_matmul_readvariableop_resource:	@
-lstm_cell_96_matmul_1_readvariableop_resource:	d;
,lstm_cell_96_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_96/BiasAdd/ReadVariableOpЂ"lstm_cell_96/MatMul/ReadVariableOpЂ$lstm_cell_96/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџdR
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
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_96/MatMul/ReadVariableOpReadVariableOp+lstm_cell_96_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_96/MatMulMatMulstrided_slice_2:output:0*lstm_cell_96/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_96/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_96_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_96/MatMul_1MatMulzeros:output:0,lstm_cell_96/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_96/addAddV2lstm_cell_96/MatMul:product:0lstm_cell_96/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_96/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_96_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_96/BiasAddBiasAddlstm_cell_96/add:z:0+lstm_cell_96/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_96/splitSplit%lstm_cell_96/split/split_dim:output:0lstm_cell_96/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_96/SigmoidSigmoidlstm_cell_96/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_96/Sigmoid_1Sigmoidlstm_cell_96/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_96/mulMullstm_cell_96/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_96/ReluRelulstm_cell_96/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_96/mul_1Mullstm_cell_96/Sigmoid:y:0lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_96/add_1AddV2lstm_cell_96/mul:z:0lstm_cell_96/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_96/Sigmoid_2Sigmoidlstm_cell_96/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_96/Relu_1Relulstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_96/mul_2Mullstm_cell_96/Sigmoid_2:y:0!lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_96_matmul_readvariableop_resource-lstm_cell_96_matmul_1_readvariableop_resource,lstm_cell_96_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_595875*
condR
while_cond_595874*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџdР
NoOpNoOp$^lstm_cell_96/BiasAdd/ReadVariableOp#^lstm_cell_96/MatMul/ReadVariableOp%^lstm_cell_96/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2J
#lstm_cell_96/BiasAdd/ReadVariableOp#lstm_cell_96/BiasAdd/ReadVariableOp2H
"lstm_cell_96/MatMul/ReadVariableOp"lstm_cell_96/MatMul/ReadVariableOp2L
$lstm_cell_96/MatMul_1/ReadVariableOp$lstm_cell_96/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Е
У
while_cond_595028
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_595028___redundant_placeholder04
0while_while_cond_595028___redundant_placeholder14
0while_while_cond_595028___redundant_placeholder24
0while_while_cond_595028___redundant_placeholder3
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
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
ж
Ѓ
)sequential_114_lstm_343_while_cond_593684L
Hsequential_114_lstm_343_while_sequential_114_lstm_343_while_loop_counterR
Nsequential_114_lstm_343_while_sequential_114_lstm_343_while_maximum_iterations-
)sequential_114_lstm_343_while_placeholder/
+sequential_114_lstm_343_while_placeholder_1/
+sequential_114_lstm_343_while_placeholder_2/
+sequential_114_lstm_343_while_placeholder_3N
Jsequential_114_lstm_343_while_less_sequential_114_lstm_343_strided_slice_1d
`sequential_114_lstm_343_while_sequential_114_lstm_343_while_cond_593684___redundant_placeholder0d
`sequential_114_lstm_343_while_sequential_114_lstm_343_while_cond_593684___redundant_placeholder1d
`sequential_114_lstm_343_while_sequential_114_lstm_343_while_cond_593684___redundant_placeholder2d
`sequential_114_lstm_343_while_sequential_114_lstm_343_while_cond_593684___redundant_placeholder3*
&sequential_114_lstm_343_while_identity
Т
"sequential_114/lstm_343/while/LessLess)sequential_114_lstm_343_while_placeholderJsequential_114_lstm_343_while_less_sequential_114_lstm_343_strided_slice_1*
T0*
_output_shapes
: {
&sequential_114/lstm_343/while/IdentityIdentity&sequential_114/lstm_343/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_114_lstm_343_while_identity/sequential_114/lstm_343/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
ж
Ѓ
)sequential_114_lstm_342_while_cond_593545L
Hsequential_114_lstm_342_while_sequential_114_lstm_342_while_loop_counterR
Nsequential_114_lstm_342_while_sequential_114_lstm_342_while_maximum_iterations-
)sequential_114_lstm_342_while_placeholder/
+sequential_114_lstm_342_while_placeholder_1/
+sequential_114_lstm_342_while_placeholder_2/
+sequential_114_lstm_342_while_placeholder_3N
Jsequential_114_lstm_342_while_less_sequential_114_lstm_342_strided_slice_1d
`sequential_114_lstm_342_while_sequential_114_lstm_342_while_cond_593545___redundant_placeholder0d
`sequential_114_lstm_342_while_sequential_114_lstm_342_while_cond_593545___redundant_placeholder1d
`sequential_114_lstm_342_while_sequential_114_lstm_342_while_cond_593545___redundant_placeholder2d
`sequential_114_lstm_342_while_sequential_114_lstm_342_while_cond_593545___redundant_placeholder3*
&sequential_114_lstm_342_while_identity
Т
"sequential_114/lstm_342/while/LessLess)sequential_114_lstm_342_while_placeholderJsequential_114_lstm_342_while_less_sequential_114_lstm_342_strided_slice_1*
T0*
_output_shapes
: {
&sequential_114/lstm_342/while/IdentityIdentity&sequential_114/lstm_342/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_114_lstm_342_while_identity/sequential_114/lstm_342/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:

Е
)__inference_lstm_344_layer_call_fn_598325
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identityЂStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_344_layer_call_and_return_conditional_losses_594764o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs/0
м


/__inference_sequential_114_layer_call_fn_596201

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dШ
	unknown_3:	2Ш
	unknown_4:	Ш
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityЂStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_114_layer_call_and_return_conditional_losses_595438o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Е
У
while_cond_597327
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_597327___redundant_placeholder04
0while_while_cond_597327___redundant_placeholder14
0while_while_cond_597327___redundant_placeholder24
0while_while_cond_597327___redundant_placeholder3
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
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
Е
У
while_cond_597470
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_597470___redundant_placeholder04
0while_while_cond_597470___redundant_placeholder14
0while_while_cond_597470___redundant_placeholder24
0while_while_cond_597470___redundant_placeholder3
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
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
8
а
while_body_595179
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_97_matmul_readvariableop_resource_0:	dШH
5while_lstm_cell_97_matmul_1_readvariableop_resource_0:	2ШC
4while_lstm_cell_97_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_97_matmul_readvariableop_resource:	dШF
3while_lstm_cell_97_matmul_1_readvariableop_resource:	2ШA
2while_lstm_cell_97_biasadd_readvariableop_resource:	ШЂ)while/lstm_cell_97/BiasAdd/ReadVariableOpЂ(while/lstm_cell_97/MatMul/ReadVariableOpЂ*while/lstm_cell_97/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0
(while/lstm_cell_97/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_97_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0К
while/lstm_cell_97/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
*while/lstm_cell_97/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_97_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ё
while/lstm_cell_97/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_97/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_97/addAddV2#while/lstm_cell_97/MatMul:product:0%while/lstm_cell_97/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
)while/lstm_cell_97/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_97_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ї
while/lstm_cell_97/BiasAddBiasAddwhile/lstm_cell_97/add:z:01while/lstm_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШd
"while/lstm_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_97/splitSplit+while/lstm_cell_97/split/split_dim:output:0#while/lstm_cell_97/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitz
while/lstm_cell_97/SigmoidSigmoid!while/lstm_cell_97/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_97/Sigmoid_1Sigmoid!while/lstm_cell_97/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_97/mulMul while/lstm_cell_97/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2t
while/lstm_cell_97/ReluRelu!while/lstm_cell_97/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_97/mul_1Mulwhile/lstm_cell_97/Sigmoid:y:0%while/lstm_cell_97/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_97/add_1AddV2while/lstm_cell_97/mul:z:0while/lstm_cell_97/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_97/Sigmoid_2Sigmoid!while/lstm_cell_97/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2q
while/lstm_cell_97/Relu_1Reluwhile/lstm_cell_97/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_97/mul_2Mul while/lstm_cell_97/Sigmoid_2:y:0'while/lstm_cell_97/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_97/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_97/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y
while/Identity_5Identitywhile/lstm_cell_97/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2а

while/NoOpNoOp*^while/lstm_cell_97/BiasAdd/ReadVariableOp)^while/lstm_cell_97/MatMul/ReadVariableOp+^while/lstm_cell_97/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_97_biasadd_readvariableop_resource4while_lstm_cell_97_biasadd_readvariableop_resource_0"l
3while_lstm_cell_97_matmul_1_readvariableop_resource5while_lstm_cell_97_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_97_matmul_readvariableop_resource3while_lstm_cell_97_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2V
)while/lstm_cell_97/BiasAdd/ReadVariableOp)while/lstm_cell_97/BiasAdd/ReadVariableOp2T
(while/lstm_cell_97/MatMul/ReadVariableOp(while/lstm_cell_97/MatMul/ReadVariableOp2X
*while/lstm_cell_97/MatMul_1/ReadVariableOp*while/lstm_cell_97/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
тJ

D__inference_lstm_343_layer_call_and_return_conditional_losses_597885
inputs_0>
+lstm_cell_97_matmul_readvariableop_resource:	dШ@
-lstm_cell_97_matmul_1_readvariableop_resource:	2Ш;
,lstm_cell_97_biasadd_readvariableop_resource:	Ш
identityЂ#lstm_cell_97/BiasAdd/ReadVariableOpЂ"lstm_cell_97/MatMul/ReadVariableOpЂ$lstm_cell_97/MatMul_1/ReadVariableOpЂwhile=
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
valueB:б
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
:џџџџџџџџџ2R
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
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџdD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask
"lstm_cell_97/MatMul/ReadVariableOpReadVariableOp+lstm_cell_97_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0
lstm_cell_97/MatMulMatMulstrided_slice_2:output:0*lstm_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_97/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_97_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_97/MatMul_1MatMulzeros:output:0,lstm_cell_97/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_97/addAddV2lstm_cell_97/MatMul:product:0lstm_cell_97/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
#lstm_cell_97/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_97_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_97/BiasAddBiasAddlstm_cell_97/add:z:0+lstm_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_97/splitSplit%lstm_cell_97/split/split_dim:output:0lstm_cell_97/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitn
lstm_cell_97/SigmoidSigmoidlstm_cell_97/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_97/Sigmoid_1Sigmoidlstm_cell_97/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_cell_97/mulMullstm_cell_97/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
lstm_cell_97/ReluRelulstm_cell_97/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_97/mul_1Mullstm_cell_97/Sigmoid:y:0lstm_cell_97/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2{
lstm_cell_97/add_1AddV2lstm_cell_97/mul:z:0lstm_cell_97/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_97/Sigmoid_2Sigmoidlstm_cell_97/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2e
lstm_cell_97/Relu_1Relulstm_cell_97/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_97/mul_2Mullstm_cell_97/Sigmoid_2:y:0!lstm_cell_97/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_97_matmul_readvariableop_resource-lstm_cell_97_matmul_1_readvariableop_resource,lstm_cell_97_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_597801*
condR
while_cond_597800*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2Р
NoOpNoOp$^lstm_cell_97/BiasAdd/ReadVariableOp#^lstm_cell_97/MatMul/ReadVariableOp%^lstm_cell_97/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџd: : : 2J
#lstm_cell_97/BiasAdd/ReadVariableOp#lstm_cell_97/BiasAdd/ReadVariableOp2H
"lstm_cell_97/MatMul/ReadVariableOp"lstm_cell_97/MatMul/ReadVariableOp2L
$lstm_cell_97/MatMul_1/ReadVariableOp$lstm_cell_97/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd
"
_user_specified_name
inputs/0
Р


$__inference_signature_wrapper_596174
lstm_342_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dШ
	unknown_3:	2Ш
	unknown_4:	Ш
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityЂStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCalllstm_342_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_593914o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:џџџџџџџџџ
(
_user_specified_namelstm_342_input
е

H__inference_lstm_cell_96_layer_call_and_return_conditional_losses_593981

inputs

states
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates
8

D__inference_lstm_344_layer_call_and_return_conditional_losses_594764

inputs%
lstm_cell_98_594682:2(%
lstm_cell_98_594684:
(!
lstm_cell_98_594686:(
identityЂ$lstm_cell_98/StatefulPartitionedCallЂwhile;
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
valueB:б
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
:џџџџџџџџџ
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
:џџџџџџџџџ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2D
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskѕ
$lstm_cell_98/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_98_594682lstm_cell_98_594684lstm_cell_98_594686*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_98_layer_call_and_return_conditional_losses_594681n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : З
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_98_594682lstm_cell_98_594684lstm_cell_98_594686*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_594695*
condR
while_cond_594694*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
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
:џџџџџџџџџ
u
NoOpNoOp%^lstm_cell_98/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2L
$lstm_cell_98/StatefulPartitionedCall$lstm_cell_98/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
 
_user_specified_nameinputs
Е
У
while_cond_598845
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_598845___redundant_placeholder04
0while_while_cond_598845___redundant_placeholder14
0while_while_cond_598845___redundant_placeholder24
0while_while_cond_598845___redundant_placeholder3
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
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
8

D__inference_lstm_344_layer_call_and_return_conditional_losses_594955

inputs%
lstm_cell_98_594873:2(%
lstm_cell_98_594875:
(!
lstm_cell_98_594877:(
identityЂ$lstm_cell_98/StatefulPartitionedCallЂwhile;
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
valueB:б
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
:џџџџџџџџџ
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
:џџџџџџџџџ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2D
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskѕ
$lstm_cell_98/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_98_594873lstm_cell_98_594875lstm_cell_98_594877*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_98_layer_call_and_return_conditional_losses_594827n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : З
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_98_594873lstm_cell_98_594875lstm_cell_98_594877*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_594886*
condR
while_cond_594885*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
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
:џџџџџџџџџ
u
NoOpNoOp%^lstm_cell_98/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2L
$lstm_cell_98/StatefulPartitionedCall$lstm_cell_98/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
 
_user_specified_nameinputs
Е
У
while_cond_597613
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_597613___redundant_placeholder04
0while_while_cond_597613___redundant_placeholder14
0while_while_cond_597613___redundant_placeholder24
0while_while_cond_597613___redundant_placeholder3
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
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
ы
і
-__inference_lstm_cell_96_layer_call_fn_598983

inputs
states_0
states_1
unknown:	
	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2ЂStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_96_layer_call_and_return_conditional_losses_594127o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/1
8
а
while_body_597471
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_96_matmul_readvariableop_resource_0:	H
5while_lstm_cell_96_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_96_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_96_matmul_readvariableop_resource:	F
3while_lstm_cell_96_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_96_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_96/BiasAdd/ReadVariableOpЂ(while/lstm_cell_96/MatMul/ReadVariableOpЂ*while/lstm_cell_96/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_96/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_96_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_96/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_96/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_96/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_96_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_96/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_96/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_96/addAddV2#while/lstm_cell_96/MatMul:product:0%while/lstm_cell_96/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_96/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_96_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_96/BiasAddBiasAddwhile/lstm_cell_96/add:z:01while/lstm_cell_96/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_96/splitSplit+while/lstm_cell_96/split/split_dim:output:0#while/lstm_cell_96/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_96/SigmoidSigmoid!while/lstm_cell_96/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_96/Sigmoid_1Sigmoid!while/lstm_cell_96/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_96/mulMul while/lstm_cell_96/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_96/ReluRelu!while/lstm_cell_96/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_96/mul_1Mulwhile/lstm_cell_96/Sigmoid:y:0%while/lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_96/add_1AddV2while/lstm_cell_96/mul:z:0while/lstm_cell_96/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_96/Sigmoid_2Sigmoid!while/lstm_cell_96/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_96/Relu_1Reluwhile/lstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_96/mul_2Mul while/lstm_cell_96/Sigmoid_2:y:0'while/lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_96/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_96/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_96/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_96/BiasAdd/ReadVariableOp)^while/lstm_cell_96/MatMul/ReadVariableOp+^while/lstm_cell_96/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_96_biasadd_readvariableop_resource4while_lstm_cell_96_biasadd_readvariableop_resource_0"l
3while_lstm_cell_96_matmul_1_readvariableop_resource5while_lstm_cell_96_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_96_matmul_readvariableop_resource3while_lstm_cell_96_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_96/BiasAdd/ReadVariableOp)while/lstm_cell_96/BiasAdd/ReadVariableOp2T
(while/lstm_cell_96/MatMul/ReadVariableOp(while/lstm_cell_96/MatMul/ReadVariableOp2X
*while/lstm_cell_96/MatMul_1/ReadVariableOp*while/lstm_cell_96/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
Е
У
while_cond_598086
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_598086___redundant_placeholder04
0while_while_cond_598086___redundant_placeholder14
0while_while_cond_598086___redundant_placeholder24
0while_while_cond_598086___redundant_placeholder3
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
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
Е
У
while_cond_594185
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_594185___redundant_placeholder04
0while_while_cond_594185___redundant_placeholder14
0while_while_cond_594185___redundant_placeholder24
0while_while_cond_594185___redundant_placeholder3
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
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
ЄJ

D__inference_lstm_343_layer_call_and_return_conditional_losses_595263

inputs>
+lstm_cell_97_matmul_readvariableop_resource:	dШ@
-lstm_cell_97_matmul_1_readvariableop_resource:	2Ш;
,lstm_cell_97_biasadd_readvariableop_resource:	Ш
identityЂ#lstm_cell_97/BiasAdd/ReadVariableOpЂ"lstm_cell_97/MatMul/ReadVariableOpЂ$lstm_cell_97/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџ2R
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
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask
"lstm_cell_97/MatMul/ReadVariableOpReadVariableOp+lstm_cell_97_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0
lstm_cell_97/MatMulMatMulstrided_slice_2:output:0*lstm_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_97/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_97_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_97/MatMul_1MatMulzeros:output:0,lstm_cell_97/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_97/addAddV2lstm_cell_97/MatMul:product:0lstm_cell_97/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
#lstm_cell_97/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_97_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_97/BiasAddBiasAddlstm_cell_97/add:z:0+lstm_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_97/splitSplit%lstm_cell_97/split/split_dim:output:0lstm_cell_97/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitn
lstm_cell_97/SigmoidSigmoidlstm_cell_97/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_97/Sigmoid_1Sigmoidlstm_cell_97/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_cell_97/mulMullstm_cell_97/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
lstm_cell_97/ReluRelulstm_cell_97/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_97/mul_1Mullstm_cell_97/Sigmoid:y:0lstm_cell_97/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2{
lstm_cell_97/add_1AddV2lstm_cell_97/mul:z:0lstm_cell_97/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_97/Sigmoid_2Sigmoidlstm_cell_97/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2e
lstm_cell_97/Relu_1Relulstm_cell_97/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_97/mul_2Mullstm_cell_97/Sigmoid_2:y:0!lstm_cell_97/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_97_matmul_readvariableop_resource-lstm_cell_97_matmul_1_readvariableop_resource,lstm_cell_97_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_595179*
condR
while_cond_595178*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2Р
NoOpNoOp$^lstm_cell_97/BiasAdd/ReadVariableOp#^lstm_cell_97/MatMul/ReadVariableOp%^lstm_cell_97/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџd: : : 2J
#lstm_cell_97/BiasAdd/ReadVariableOp#lstm_cell_97/BiasAdd/ReadVariableOp2H
"lstm_cell_97/MatMul/ReadVariableOp"lstm_cell_97/MatMul/ReadVariableOp2L
$lstm_cell_97/MatMul_1/ReadVariableOp$lstm_cell_97/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
є

Ѓ
/__inference_sequential_114_layer_call_fn_596079
lstm_342_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dШ
	unknown_3:	2Ш
	unknown_4:	Ш
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityЂStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCalllstm_342_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_114_layer_call_and_return_conditional_losses_596027o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:џџџџџџџџџ
(
_user_specified_namelstm_342_input
J

D__inference_lstm_344_layer_call_and_return_conditional_losses_598787

inputs=
+lstm_cell_98_matmul_readvariableop_resource:2(?
-lstm_cell_98_matmul_1_readvariableop_resource:
(:
,lstm_cell_98_biasadd_readvariableop_resource:(
identityЂ#lstm_cell_98/BiasAdd/ReadVariableOpЂ"lstm_cell_98/MatMul/ReadVariableOpЂ$lstm_cell_98/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџ
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
:џџџџџџџџџ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2D
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
"lstm_cell_98/MatMul/ReadVariableOpReadVariableOp+lstm_cell_98_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_98/MatMulMatMulstrided_slice_2:output:0*lstm_cell_98/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
$lstm_cell_98/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_98_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_98/MatMul_1MatMulzeros:output:0,lstm_cell_98/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell_98/addAddV2lstm_cell_98/MatMul:product:0lstm_cell_98/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
#lstm_cell_98/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_98_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_98/BiasAddBiasAddlstm_cell_98/add:z:0+lstm_cell_98/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(^
lstm_cell_98/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_98/splitSplit%lstm_cell_98/split/split_dim:output:0lstm_cell_98/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitn
lstm_cell_98/SigmoidSigmoidlstm_cell_98/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_98/Sigmoid_1Sigmoidlstm_cell_98/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell_98/mulMullstm_cell_98/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
h
lstm_cell_98/ReluRelulstm_cell_98/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_98/mul_1Mullstm_cell_98/Sigmoid:y:0lstm_cell_98/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
{
lstm_cell_98/add_1AddV2lstm_cell_98/mul:z:0lstm_cell_98/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_98/Sigmoid_2Sigmoidlstm_cell_98/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
e
lstm_cell_98/Relu_1Relulstm_cell_98/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_98/mul_2Mullstm_cell_98/Sigmoid_2:y:0!lstm_cell_98/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_98_matmul_readvariableop_resource-lstm_cell_98_matmul_1_readvariableop_resource,lstm_cell_98_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_598703*
condR
while_cond_598702*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
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
:џџџџџџџџџ
Р
NoOpNoOp$^lstm_cell_98/BiasAdd/ReadVariableOp#^lstm_cell_98/MatMul/ReadVariableOp%^lstm_cell_98/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2J
#lstm_cell_98/BiasAdd/ReadVariableOp#lstm_cell_98/BiasAdd/ReadVariableOp2H
"lstm_cell_98/MatMul/ReadVariableOp"lstm_cell_98/MatMul/ReadVariableOp2L
$lstm_cell_98/MatMul_1/ReadVariableOp$lstm_cell_98/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
џ7
Ъ
while_body_598846
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_98_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_98_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_98_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_98_matmul_readvariableop_resource:2(E
3while_lstm_cell_98_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_98_biasadd_readvariableop_resource:(Ђ)while/lstm_cell_98/BiasAdd/ReadVariableOpЂ(while/lstm_cell_98/MatMul/ReadVariableOpЂ*while/lstm_cell_98/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
(while/lstm_cell_98/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_98_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Й
while/lstm_cell_98/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_98/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ( 
*while/lstm_cell_98/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_98_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_98/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_98/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
while/lstm_cell_98/addAddV2#while/lstm_cell_98/MatMul:product:0%while/lstm_cell_98/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
)while/lstm_cell_98/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_98_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0І
while/lstm_cell_98/BiasAddBiasAddwhile/lstm_cell_98/add:z:01while/lstm_cell_98/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
"while/lstm_cell_98/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_98/splitSplit+while/lstm_cell_98/split/split_dim:output:0#while/lstm_cell_98/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitz
while/lstm_cell_98/SigmoidSigmoid!while/lstm_cell_98/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_98/Sigmoid_1Sigmoid!while/lstm_cell_98/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_98/mulMul while/lstm_cell_98/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
t
while/lstm_cell_98/ReluRelu!while/lstm_cell_98/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_98/mul_1Mulwhile/lstm_cell_98/Sigmoid:y:0%while/lstm_cell_98/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_98/add_1AddV2while/lstm_cell_98/mul:z:0while/lstm_cell_98/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_98/Sigmoid_2Sigmoid!while/lstm_cell_98/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
q
while/lstm_cell_98/Relu_1Reluwhile/lstm_cell_98/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_98/mul_2Mul while/lstm_cell_98/Sigmoid_2:y:0'while/lstm_cell_98/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_98/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_98/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
y
while/Identity_5Identitywhile/lstm_cell_98/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
а

while/NoOpNoOp*^while/lstm_cell_98/BiasAdd/ReadVariableOp)^while/lstm_cell_98/MatMul/ReadVariableOp+^while/lstm_cell_98/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_98_biasadd_readvariableop_resource4while_lstm_cell_98_biasadd_readvariableop_resource_0"l
3while_lstm_cell_98_matmul_1_readvariableop_resource5while_lstm_cell_98_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_98_matmul_readvariableop_resource3while_lstm_cell_98_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2V
)while/lstm_cell_98/BiasAdd/ReadVariableOp)while/lstm_cell_98/BiasAdd/ReadVariableOp2T
(while/lstm_cell_98/MatMul/ReadVariableOp(while/lstm_cell_98/MatMul/ReadVariableOp2X
*while/lstm_cell_98/MatMul_1/ReadVariableOp*while/lstm_cell_98/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
ЖT
д
)sequential_114_lstm_343_while_body_593685L
Hsequential_114_lstm_343_while_sequential_114_lstm_343_while_loop_counterR
Nsequential_114_lstm_343_while_sequential_114_lstm_343_while_maximum_iterations-
)sequential_114_lstm_343_while_placeholder/
+sequential_114_lstm_343_while_placeholder_1/
+sequential_114_lstm_343_while_placeholder_2/
+sequential_114_lstm_343_while_placeholder_3K
Gsequential_114_lstm_343_while_sequential_114_lstm_343_strided_slice_1_0
sequential_114_lstm_343_while_tensorarrayv2read_tensorlistgetitem_sequential_114_lstm_343_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_114_lstm_343_while_lstm_cell_97_matmul_readvariableop_resource_0:	dШ`
Msequential_114_lstm_343_while_lstm_cell_97_matmul_1_readvariableop_resource_0:	2Ш[
Lsequential_114_lstm_343_while_lstm_cell_97_biasadd_readvariableop_resource_0:	Ш*
&sequential_114_lstm_343_while_identity,
(sequential_114_lstm_343_while_identity_1,
(sequential_114_lstm_343_while_identity_2,
(sequential_114_lstm_343_while_identity_3,
(sequential_114_lstm_343_while_identity_4,
(sequential_114_lstm_343_while_identity_5I
Esequential_114_lstm_343_while_sequential_114_lstm_343_strided_slice_1
sequential_114_lstm_343_while_tensorarrayv2read_tensorlistgetitem_sequential_114_lstm_343_tensorarrayunstack_tensorlistfromtensor\
Isequential_114_lstm_343_while_lstm_cell_97_matmul_readvariableop_resource:	dШ^
Ksequential_114_lstm_343_while_lstm_cell_97_matmul_1_readvariableop_resource:	2ШY
Jsequential_114_lstm_343_while_lstm_cell_97_biasadd_readvariableop_resource:	ШЂAsequential_114/lstm_343/while/lstm_cell_97/BiasAdd/ReadVariableOpЂ@sequential_114/lstm_343/while/lstm_cell_97/MatMul/ReadVariableOpЂBsequential_114/lstm_343/while/lstm_cell_97/MatMul_1/ReadVariableOp 
Osequential_114/lstm_343/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   
Asequential_114/lstm_343/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_114_lstm_343_while_tensorarrayv2read_tensorlistgetitem_sequential_114_lstm_343_tensorarrayunstack_tensorlistfromtensor_0)sequential_114_lstm_343_while_placeholderXsequential_114/lstm_343/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0Э
@sequential_114/lstm_343/while/lstm_cell_97/MatMul/ReadVariableOpReadVariableOpKsequential_114_lstm_343_while_lstm_cell_97_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0
1sequential_114/lstm_343/while/lstm_cell_97/MatMulMatMulHsequential_114/lstm_343/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_114/lstm_343/while/lstm_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШб
Bsequential_114/lstm_343/while/lstm_cell_97/MatMul_1/ReadVariableOpReadVariableOpMsequential_114_lstm_343_while_lstm_cell_97_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0щ
3sequential_114/lstm_343/while/lstm_cell_97/MatMul_1MatMul+sequential_114_lstm_343_while_placeholder_2Jsequential_114/lstm_343/while/lstm_cell_97/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШц
.sequential_114/lstm_343/while/lstm_cell_97/addAddV2;sequential_114/lstm_343/while/lstm_cell_97/MatMul:product:0=sequential_114/lstm_343/while/lstm_cell_97/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШЫ
Asequential_114/lstm_343/while/lstm_cell_97/BiasAdd/ReadVariableOpReadVariableOpLsequential_114_lstm_343_while_lstm_cell_97_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0я
2sequential_114/lstm_343/while/lstm_cell_97/BiasAddBiasAdd2sequential_114/lstm_343/while/lstm_cell_97/add:z:0Isequential_114/lstm_343/while/lstm_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ|
:sequential_114/lstm_343/while/lstm_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :З
0sequential_114/lstm_343/while/lstm_cell_97/splitSplitCsequential_114/lstm_343/while/lstm_cell_97/split/split_dim:output:0;sequential_114/lstm_343/while/lstm_cell_97/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitЊ
2sequential_114/lstm_343/while/lstm_cell_97/SigmoidSigmoid9sequential_114/lstm_343/while/lstm_cell_97/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ќ
4sequential_114/lstm_343/while/lstm_cell_97/Sigmoid_1Sigmoid9sequential_114/lstm_343/while/lstm_cell_97/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2Ю
.sequential_114/lstm_343/while/lstm_cell_97/mulMul8sequential_114/lstm_343/while/lstm_cell_97/Sigmoid_1:y:0+sequential_114_lstm_343_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2Є
/sequential_114/lstm_343/while/lstm_cell_97/ReluRelu9sequential_114/lstm_343/while/lstm_cell_97/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2р
0sequential_114/lstm_343/while/lstm_cell_97/mul_1Mul6sequential_114/lstm_343/while/lstm_cell_97/Sigmoid:y:0=sequential_114/lstm_343/while/lstm_cell_97/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2е
0sequential_114/lstm_343/while/lstm_cell_97/add_1AddV22sequential_114/lstm_343/while/lstm_cell_97/mul:z:04sequential_114/lstm_343/while/lstm_cell_97/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ќ
4sequential_114/lstm_343/while/lstm_cell_97/Sigmoid_2Sigmoid9sequential_114/lstm_343/while/lstm_cell_97/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
1sequential_114/lstm_343/while/lstm_cell_97/Relu_1Relu4sequential_114/lstm_343/while/lstm_cell_97/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2ф
0sequential_114/lstm_343/while/lstm_cell_97/mul_2Mul8sequential_114/lstm_343/while/lstm_cell_97/Sigmoid_2:y:0?sequential_114/lstm_343/while/lstm_cell_97/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
Bsequential_114/lstm_343/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_114_lstm_343_while_placeholder_1)sequential_114_lstm_343_while_placeholder4sequential_114/lstm_343/while/lstm_cell_97/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвe
#sequential_114/lstm_343/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Є
!sequential_114/lstm_343/while/addAddV2)sequential_114_lstm_343_while_placeholder,sequential_114/lstm_343/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_114/lstm_343/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ч
#sequential_114/lstm_343/while/add_1AddV2Hsequential_114_lstm_343_while_sequential_114_lstm_343_while_loop_counter.sequential_114/lstm_343/while/add_1/y:output:0*
T0*
_output_shapes
: Ё
&sequential_114/lstm_343/while/IdentityIdentity'sequential_114/lstm_343/while/add_1:z:0#^sequential_114/lstm_343/while/NoOp*
T0*
_output_shapes
: Ъ
(sequential_114/lstm_343/while/Identity_1IdentityNsequential_114_lstm_343_while_sequential_114_lstm_343_while_maximum_iterations#^sequential_114/lstm_343/while/NoOp*
T0*
_output_shapes
: Ё
(sequential_114/lstm_343/while/Identity_2Identity%sequential_114/lstm_343/while/add:z:0#^sequential_114/lstm_343/while/NoOp*
T0*
_output_shapes
: Ю
(sequential_114/lstm_343/while/Identity_3IdentityRsequential_114/lstm_343/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_114/lstm_343/while/NoOp*
T0*
_output_shapes
: С
(sequential_114/lstm_343/while/Identity_4Identity4sequential_114/lstm_343/while/lstm_cell_97/mul_2:z:0#^sequential_114/lstm_343/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2С
(sequential_114/lstm_343/while/Identity_5Identity4sequential_114/lstm_343/while/lstm_cell_97/add_1:z:0#^sequential_114/lstm_343/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2А
"sequential_114/lstm_343/while/NoOpNoOpB^sequential_114/lstm_343/while/lstm_cell_97/BiasAdd/ReadVariableOpA^sequential_114/lstm_343/while/lstm_cell_97/MatMul/ReadVariableOpC^sequential_114/lstm_343/while/lstm_cell_97/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_114_lstm_343_while_identity/sequential_114/lstm_343/while/Identity:output:0"]
(sequential_114_lstm_343_while_identity_11sequential_114/lstm_343/while/Identity_1:output:0"]
(sequential_114_lstm_343_while_identity_21sequential_114/lstm_343/while/Identity_2:output:0"]
(sequential_114_lstm_343_while_identity_31sequential_114/lstm_343/while/Identity_3:output:0"]
(sequential_114_lstm_343_while_identity_41sequential_114/lstm_343/while/Identity_4:output:0"]
(sequential_114_lstm_343_while_identity_51sequential_114/lstm_343/while/Identity_5:output:0"
Jsequential_114_lstm_343_while_lstm_cell_97_biasadd_readvariableop_resourceLsequential_114_lstm_343_while_lstm_cell_97_biasadd_readvariableop_resource_0"
Ksequential_114_lstm_343_while_lstm_cell_97_matmul_1_readvariableop_resourceMsequential_114_lstm_343_while_lstm_cell_97_matmul_1_readvariableop_resource_0"
Isequential_114_lstm_343_while_lstm_cell_97_matmul_readvariableop_resourceKsequential_114_lstm_343_while_lstm_cell_97_matmul_readvariableop_resource_0"
Esequential_114_lstm_343_while_sequential_114_lstm_343_strided_slice_1Gsequential_114_lstm_343_while_sequential_114_lstm_343_strided_slice_1_0"
sequential_114_lstm_343_while_tensorarrayv2read_tensorlistgetitem_sequential_114_lstm_343_tensorarrayunstack_tensorlistfromtensorsequential_114_lstm_343_while_tensorarrayv2read_tensorlistgetitem_sequential_114_lstm_343_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2
Asequential_114/lstm_343/while/lstm_cell_97/BiasAdd/ReadVariableOpAsequential_114/lstm_343/while/lstm_cell_97/BiasAdd/ReadVariableOp2
@sequential_114/lstm_343/while/lstm_cell_97/MatMul/ReadVariableOp@sequential_114/lstm_343/while/lstm_cell_97/MatMul/ReadVariableOp2
Bsequential_114/lstm_343/while/lstm_cell_97/MatMul_1/ReadVariableOpBsequential_114/lstm_343/while/lstm_cell_97/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
8
а
while_body_597185
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_96_matmul_readvariableop_resource_0:	H
5while_lstm_cell_96_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_96_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_96_matmul_readvariableop_resource:	F
3while_lstm_cell_96_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_96_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_96/BiasAdd/ReadVariableOpЂ(while/lstm_cell_96/MatMul/ReadVariableOpЂ*while/lstm_cell_96/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_96/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_96_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_96/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_96/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_96/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_96_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_96/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_96/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_96/addAddV2#while/lstm_cell_96/MatMul:product:0%while/lstm_cell_96/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_96/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_96_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_96/BiasAddBiasAddwhile/lstm_cell_96/add:z:01while/lstm_cell_96/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_96/splitSplit+while/lstm_cell_96/split/split_dim:output:0#while/lstm_cell_96/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_96/SigmoidSigmoid!while/lstm_cell_96/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_96/Sigmoid_1Sigmoid!while/lstm_cell_96/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_96/mulMul while/lstm_cell_96/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_96/ReluRelu!while/lstm_cell_96/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_96/mul_1Mulwhile/lstm_cell_96/Sigmoid:y:0%while/lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_96/add_1AddV2while/lstm_cell_96/mul:z:0while/lstm_cell_96/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_96/Sigmoid_2Sigmoid!while/lstm_cell_96/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_96/Relu_1Reluwhile/lstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_96/mul_2Mul while/lstm_cell_96/Sigmoid_2:y:0'while/lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_96/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_96/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_96/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_96/BiasAdd/ReadVariableOp)^while/lstm_cell_96/MatMul/ReadVariableOp+^while/lstm_cell_96/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_96_biasadd_readvariableop_resource4while_lstm_cell_96_biasadd_readvariableop_resource_0"l
3while_lstm_cell_96_matmul_1_readvariableop_resource5while_lstm_cell_96_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_96_matmul_readvariableop_resource3while_lstm_cell_96_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_96/BiasAdd/ReadVariableOp)while/lstm_cell_96/BiasAdd/ReadVariableOp2T
(while/lstm_cell_96/MatMul/ReadVariableOp(while/lstm_cell_96/MatMul/ReadVariableOp2X
*while/lstm_cell_96/MatMul_1/ReadVariableOp*while/lstm_cell_96/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
З
я
J__inference_sequential_114_layer_call_and_return_conditional_losses_596027

inputs"
lstm_342_596000:	"
lstm_342_596002:	d
lstm_342_596004:	"
lstm_343_596007:	dШ"
lstm_343_596009:	2Ш
lstm_343_596011:	Ш!
lstm_344_596014:2(!
lstm_344_596016:
(
lstm_344_596018:("
dense_114_596021:

dense_114_596023:
identityЂ!dense_114/StatefulPartitionedCallЂ lstm_342/StatefulPartitionedCallЂ lstm_343/StatefulPartitionedCallЂ lstm_344/StatefulPartitionedCall
 lstm_342/StatefulPartitionedCallStatefulPartitionedCallinputslstm_342_596000lstm_342_596002lstm_342_596004*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_342_layer_call_and_return_conditional_losses_595959Њ
 lstm_343/StatefulPartitionedCallStatefulPartitionedCall)lstm_342/StatefulPartitionedCall:output:0lstm_343_596007lstm_343_596009lstm_343_596011*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_343_layer_call_and_return_conditional_losses_595794І
 lstm_344/StatefulPartitionedCallStatefulPartitionedCall)lstm_343/StatefulPartitionedCall:output:0lstm_344_596014lstm_344_596016lstm_344_596018*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_344_layer_call_and_return_conditional_losses_595629
!dense_114/StatefulPartitionedCallStatefulPartitionedCall)lstm_344/StatefulPartitionedCall:output:0dense_114_596021dense_114_596023*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_114_layer_call_and_return_conditional_losses_595431y
IdentityIdentity*dense_114/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџг
NoOpNoOp"^dense_114/StatefulPartitionedCall!^lstm_342/StatefulPartitionedCall!^lstm_343/StatefulPartitionedCall!^lstm_344/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 2F
!dense_114/StatefulPartitionedCall!dense_114/StatefulPartitionedCall2D
 lstm_342/StatefulPartitionedCall lstm_342/StatefulPartitionedCall2D
 lstm_343/StatefulPartitionedCall lstm_343/StatefulPartitionedCall2D
 lstm_344/StatefulPartitionedCall lstm_344/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
г

H__inference_lstm_cell_98_layer_call_and_return_conditional_losses_599243

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ2:џџџџџџџџџ
:џџџџџџџџџ
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ

"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ

"
_user_specified_name
states/1
В

ї
lstm_343_while_cond_596852.
*lstm_343_while_lstm_343_while_loop_counter4
0lstm_343_while_lstm_343_while_maximum_iterations
lstm_343_while_placeholder 
lstm_343_while_placeholder_1 
lstm_343_while_placeholder_2 
lstm_343_while_placeholder_30
,lstm_343_while_less_lstm_343_strided_slice_1F
Blstm_343_while_lstm_343_while_cond_596852___redundant_placeholder0F
Blstm_343_while_lstm_343_while_cond_596852___redundant_placeholder1F
Blstm_343_while_lstm_343_while_cond_596852___redundant_placeholder2F
Blstm_343_while_lstm_343_while_cond_596852___redundant_placeholder3
lstm_343_while_identity

lstm_343/while/LessLesslstm_343_while_placeholder,lstm_343_while_less_lstm_343_strided_slice_1*
T0*
_output_shapes
: ]
lstm_343/while/IdentityIdentitylstm_343/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_343_while_identity lstm_343/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
н

H__inference_lstm_cell_96_layer_call_and_return_conditional_losses_599015

inputs
states_0
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/1
Ы

H__inference_lstm_cell_98_layer_call_and_return_conditional_losses_594681

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ2:џџџџџџџџџ
:џџџџџџџџџ
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_namestates
тJ

D__inference_lstm_343_layer_call_and_return_conditional_losses_598028
inputs_0>
+lstm_cell_97_matmul_readvariableop_resource:	dШ@
-lstm_cell_97_matmul_1_readvariableop_resource:	2Ш;
,lstm_cell_97_biasadd_readvariableop_resource:	Ш
identityЂ#lstm_cell_97/BiasAdd/ReadVariableOpЂ"lstm_cell_97/MatMul/ReadVariableOpЂ$lstm_cell_97/MatMul_1/ReadVariableOpЂwhile=
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
valueB:б
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
:џџџџџџџџџ2R
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
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџdD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask
"lstm_cell_97/MatMul/ReadVariableOpReadVariableOp+lstm_cell_97_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0
lstm_cell_97/MatMulMatMulstrided_slice_2:output:0*lstm_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_97/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_97_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_97/MatMul_1MatMulzeros:output:0,lstm_cell_97/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_97/addAddV2lstm_cell_97/MatMul:product:0lstm_cell_97/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
#lstm_cell_97/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_97_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_97/BiasAddBiasAddlstm_cell_97/add:z:0+lstm_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_97/splitSplit%lstm_cell_97/split/split_dim:output:0lstm_cell_97/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitn
lstm_cell_97/SigmoidSigmoidlstm_cell_97/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_97/Sigmoid_1Sigmoidlstm_cell_97/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_cell_97/mulMullstm_cell_97/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
lstm_cell_97/ReluRelulstm_cell_97/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_97/mul_1Mullstm_cell_97/Sigmoid:y:0lstm_cell_97/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2{
lstm_cell_97/add_1AddV2lstm_cell_97/mul:z:0lstm_cell_97/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_97/Sigmoid_2Sigmoidlstm_cell_97/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2e
lstm_cell_97/Relu_1Relulstm_cell_97/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_97/mul_2Mullstm_cell_97/Sigmoid_2:y:0!lstm_cell_97/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_97_matmul_readvariableop_resource-lstm_cell_97_matmul_1_readvariableop_resource,lstm_cell_97_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_597944*
condR
while_cond_597943*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2Р
NoOpNoOp$^lstm_cell_97/BiasAdd/ReadVariableOp#^lstm_cell_97/MatMul/ReadVariableOp%^lstm_cell_97/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџd: : : 2J
#lstm_cell_97/BiasAdd/ReadVariableOp#lstm_cell_97/BiasAdd/ReadVariableOp2H
"lstm_cell_97/MatMul/ReadVariableOp"lstm_cell_97/MatMul/ReadVariableOp2L
$lstm_cell_97/MatMul_1/ReadVariableOp$lstm_cell_97/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd
"
_user_specified_name
inputs/0
г

H__inference_lstm_cell_98_layer_call_and_return_conditional_losses_599211

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ2:џџџџџџџџџ
:џџџџџџџџџ
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ

"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ

"
_user_specified_name
states/1
лB
№

lstm_342_while_body_596714.
*lstm_342_while_lstm_342_while_loop_counter4
0lstm_342_while_lstm_342_while_maximum_iterations
lstm_342_while_placeholder 
lstm_342_while_placeholder_1 
lstm_342_while_placeholder_2 
lstm_342_while_placeholder_3-
)lstm_342_while_lstm_342_strided_slice_1_0i
elstm_342_while_tensorarrayv2read_tensorlistgetitem_lstm_342_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_342_while_lstm_cell_96_matmul_readvariableop_resource_0:	Q
>lstm_342_while_lstm_cell_96_matmul_1_readvariableop_resource_0:	dL
=lstm_342_while_lstm_cell_96_biasadd_readvariableop_resource_0:	
lstm_342_while_identity
lstm_342_while_identity_1
lstm_342_while_identity_2
lstm_342_while_identity_3
lstm_342_while_identity_4
lstm_342_while_identity_5+
'lstm_342_while_lstm_342_strided_slice_1g
clstm_342_while_tensorarrayv2read_tensorlistgetitem_lstm_342_tensorarrayunstack_tensorlistfromtensorM
:lstm_342_while_lstm_cell_96_matmul_readvariableop_resource:	O
<lstm_342_while_lstm_cell_96_matmul_1_readvariableop_resource:	dJ
;lstm_342_while_lstm_cell_96_biasadd_readvariableop_resource:	Ђ2lstm_342/while/lstm_cell_96/BiasAdd/ReadVariableOpЂ1lstm_342/while/lstm_cell_96/MatMul/ReadVariableOpЂ3lstm_342/while/lstm_cell_96/MatMul_1/ReadVariableOp
@lstm_342/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   г
2lstm_342/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_342_while_tensorarrayv2read_tensorlistgetitem_lstm_342_tensorarrayunstack_tensorlistfromtensor_0lstm_342_while_placeholderIlstm_342/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Џ
1lstm_342/while/lstm_cell_96/MatMul/ReadVariableOpReadVariableOp<lstm_342_while_lstm_cell_96_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0е
"lstm_342/while/lstm_cell_96/MatMulMatMul9lstm_342/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_342/while/lstm_cell_96/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџГ
3lstm_342/while/lstm_cell_96/MatMul_1/ReadVariableOpReadVariableOp>lstm_342_while_lstm_cell_96_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0М
$lstm_342/while/lstm_cell_96/MatMul_1MatMullstm_342_while_placeholder_2;lstm_342/while/lstm_cell_96/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЙ
lstm_342/while/lstm_cell_96/addAddV2,lstm_342/while/lstm_cell_96/MatMul:product:0.lstm_342/while/lstm_cell_96/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ­
2lstm_342/while/lstm_cell_96/BiasAdd/ReadVariableOpReadVariableOp=lstm_342_while_lstm_cell_96_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Т
#lstm_342/while/lstm_cell_96/BiasAddBiasAdd#lstm_342/while/lstm_cell_96/add:z:0:lstm_342/while/lstm_cell_96/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџm
+lstm_342/while/lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_342/while/lstm_cell_96/splitSplit4lstm_342/while/lstm_cell_96/split/split_dim:output:0,lstm_342/while/lstm_cell_96/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split
#lstm_342/while/lstm_cell_96/SigmoidSigmoid*lstm_342/while/lstm_cell_96/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
%lstm_342/while/lstm_cell_96/Sigmoid_1Sigmoid*lstm_342/while/lstm_cell_96/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdЁ
lstm_342/while/lstm_cell_96/mulMul)lstm_342/while/lstm_cell_96/Sigmoid_1:y:0lstm_342_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd
 lstm_342/while/lstm_cell_96/ReluRelu*lstm_342/while/lstm_cell_96/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdГ
!lstm_342/while/lstm_cell_96/mul_1Mul'lstm_342/while/lstm_cell_96/Sigmoid:y:0.lstm_342/while/lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdЈ
!lstm_342/while/lstm_cell_96/add_1AddV2#lstm_342/while/lstm_cell_96/mul:z:0%lstm_342/while/lstm_cell_96/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
%lstm_342/while/lstm_cell_96/Sigmoid_2Sigmoid*lstm_342/while/lstm_cell_96/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd
"lstm_342/while/lstm_cell_96/Relu_1Relu%lstm_342/while/lstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdЗ
!lstm_342/while/lstm_cell_96/mul_2Mul)lstm_342/while/lstm_cell_96/Sigmoid_2:y:00lstm_342/while/lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdщ
3lstm_342/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_342_while_placeholder_1lstm_342_while_placeholder%lstm_342/while/lstm_cell_96/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвV
lstm_342/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_342/while/addAddV2lstm_342_while_placeholderlstm_342/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_342/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_342/while/add_1AddV2*lstm_342_while_lstm_342_while_loop_counterlstm_342/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_342/while/IdentityIdentitylstm_342/while/add_1:z:0^lstm_342/while/NoOp*
T0*
_output_shapes
: 
lstm_342/while/Identity_1Identity0lstm_342_while_lstm_342_while_maximum_iterations^lstm_342/while/NoOp*
T0*
_output_shapes
: t
lstm_342/while/Identity_2Identitylstm_342/while/add:z:0^lstm_342/while/NoOp*
T0*
_output_shapes
: Ё
lstm_342/while/Identity_3IdentityClstm_342/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_342/while/NoOp*
T0*
_output_shapes
: 
lstm_342/while/Identity_4Identity%lstm_342/while/lstm_cell_96/mul_2:z:0^lstm_342/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_342/while/Identity_5Identity%lstm_342/while/lstm_cell_96/add_1:z:0^lstm_342/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdє
lstm_342/while/NoOpNoOp3^lstm_342/while/lstm_cell_96/BiasAdd/ReadVariableOp2^lstm_342/while/lstm_cell_96/MatMul/ReadVariableOp4^lstm_342/while/lstm_cell_96/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_342_while_identity lstm_342/while/Identity:output:0"?
lstm_342_while_identity_1"lstm_342/while/Identity_1:output:0"?
lstm_342_while_identity_2"lstm_342/while/Identity_2:output:0"?
lstm_342_while_identity_3"lstm_342/while/Identity_3:output:0"?
lstm_342_while_identity_4"lstm_342/while/Identity_4:output:0"?
lstm_342_while_identity_5"lstm_342/while/Identity_5:output:0"T
'lstm_342_while_lstm_342_strided_slice_1)lstm_342_while_lstm_342_strided_slice_1_0"|
;lstm_342_while_lstm_cell_96_biasadd_readvariableop_resource=lstm_342_while_lstm_cell_96_biasadd_readvariableop_resource_0"~
<lstm_342_while_lstm_cell_96_matmul_1_readvariableop_resource>lstm_342_while_lstm_cell_96_matmul_1_readvariableop_resource_0"z
:lstm_342_while_lstm_cell_96_matmul_readvariableop_resource<lstm_342_while_lstm_cell_96_matmul_readvariableop_resource_0"Ь
clstm_342_while_tensorarrayv2read_tensorlistgetitem_lstm_342_tensorarrayunstack_tensorlistfromtensorelstm_342_while_tensorarrayv2read_tensorlistgetitem_lstm_342_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2h
2lstm_342/while/lstm_cell_96/BiasAdd/ReadVariableOp2lstm_342/while/lstm_cell_96/BiasAdd/ReadVariableOp2f
1lstm_342/while/lstm_cell_96/MatMul/ReadVariableOp1lstm_342/while/lstm_cell_96/MatMul/ReadVariableOp2j
3lstm_342/while/lstm_cell_96/MatMul_1/ReadVariableOp3lstm_342/while/lstm_cell_96/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
В

ї
lstm_343_while_cond_596425.
*lstm_343_while_lstm_343_while_loop_counter4
0lstm_343_while_lstm_343_while_maximum_iterations
lstm_343_while_placeholder 
lstm_343_while_placeholder_1 
lstm_343_while_placeholder_2 
lstm_343_while_placeholder_30
,lstm_343_while_less_lstm_343_strided_slice_1F
Blstm_343_while_lstm_343_while_cond_596425___redundant_placeholder0F
Blstm_343_while_lstm_343_while_cond_596425___redundant_placeholder1F
Blstm_343_while_lstm_343_while_cond_596425___redundant_placeholder2F
Blstm_343_while_lstm_343_while_cond_596425___redundant_placeholder3
lstm_343_while_identity

lstm_343/while/LessLesslstm_343_while_placeholder,lstm_343_while_less_lstm_343_strided_slice_1*
T0*
_output_shapes
: ]
lstm_343/while/IdentityIdentitylstm_343/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_343_while_identity lstm_343/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
Е
У
while_cond_595874
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_595874___redundant_placeholder04
0while_while_cond_595874___redundant_placeholder14
0while_while_cond_595874___redundant_placeholder24
0while_while_cond_595874___redundant_placeholder3
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
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
К
о
!__inference__wrapped_model_593914
lstm_342_inputV
Csequential_114_lstm_342_lstm_cell_96_matmul_readvariableop_resource:	X
Esequential_114_lstm_342_lstm_cell_96_matmul_1_readvariableop_resource:	dS
Dsequential_114_lstm_342_lstm_cell_96_biasadd_readvariableop_resource:	V
Csequential_114_lstm_343_lstm_cell_97_matmul_readvariableop_resource:	dШX
Esequential_114_lstm_343_lstm_cell_97_matmul_1_readvariableop_resource:	2ШS
Dsequential_114_lstm_343_lstm_cell_97_biasadd_readvariableop_resource:	ШU
Csequential_114_lstm_344_lstm_cell_98_matmul_readvariableop_resource:2(W
Esequential_114_lstm_344_lstm_cell_98_matmul_1_readvariableop_resource:
(R
Dsequential_114_lstm_344_lstm_cell_98_biasadd_readvariableop_resource:(I
7sequential_114_dense_114_matmul_readvariableop_resource:
F
8sequential_114_dense_114_biasadd_readvariableop_resource:
identityЂ/sequential_114/dense_114/BiasAdd/ReadVariableOpЂ.sequential_114/dense_114/MatMul/ReadVariableOpЂ;sequential_114/lstm_342/lstm_cell_96/BiasAdd/ReadVariableOpЂ:sequential_114/lstm_342/lstm_cell_96/MatMul/ReadVariableOpЂ<sequential_114/lstm_342/lstm_cell_96/MatMul_1/ReadVariableOpЂsequential_114/lstm_342/whileЂ;sequential_114/lstm_343/lstm_cell_97/BiasAdd/ReadVariableOpЂ:sequential_114/lstm_343/lstm_cell_97/MatMul/ReadVariableOpЂ<sequential_114/lstm_343/lstm_cell_97/MatMul_1/ReadVariableOpЂsequential_114/lstm_343/whileЂ;sequential_114/lstm_344/lstm_cell_98/BiasAdd/ReadVariableOpЂ:sequential_114/lstm_344/lstm_cell_98/MatMul/ReadVariableOpЂ<sequential_114/lstm_344/lstm_cell_98/MatMul_1/ReadVariableOpЂsequential_114/lstm_344/while[
sequential_114/lstm_342/ShapeShapelstm_342_input*
T0*
_output_shapes
:u
+sequential_114/lstm_342/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_114/lstm_342/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_114/lstm_342/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%sequential_114/lstm_342/strided_sliceStridedSlice&sequential_114/lstm_342/Shape:output:04sequential_114/lstm_342/strided_slice/stack:output:06sequential_114/lstm_342/strided_slice/stack_1:output:06sequential_114/lstm_342/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_114/lstm_342/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dЛ
$sequential_114/lstm_342/zeros/packedPack.sequential_114/lstm_342/strided_slice:output:0/sequential_114/lstm_342/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_114/lstm_342/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
sequential_114/lstm_342/zerosFill-sequential_114/lstm_342/zeros/packed:output:0,sequential_114/lstm_342/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdj
(sequential_114/lstm_342/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dП
&sequential_114/lstm_342/zeros_1/packedPack.sequential_114/lstm_342/strided_slice:output:01sequential_114/lstm_342/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_114/lstm_342/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    К
sequential_114/lstm_342/zeros_1Fill/sequential_114/lstm_342/zeros_1/packed:output:0.sequential_114/lstm_342/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd{
&sequential_114/lstm_342/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѕ
!sequential_114/lstm_342/transpose	Transposelstm_342_input/sequential_114/lstm_342/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџt
sequential_114/lstm_342/Shape_1Shape%sequential_114/lstm_342/transpose:y:0*
T0*
_output_shapes
:w
-sequential_114/lstm_342/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_114/lstm_342/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_114/lstm_342/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
'sequential_114/lstm_342/strided_slice_1StridedSlice(sequential_114/lstm_342/Shape_1:output:06sequential_114/lstm_342/strided_slice_1/stack:output:08sequential_114/lstm_342/strided_slice_1/stack_1:output:08sequential_114/lstm_342/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_114/lstm_342/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџќ
%sequential_114/lstm_342/TensorArrayV2TensorListReserve<sequential_114/lstm_342/TensorArrayV2/element_shape:output:00sequential_114/lstm_342/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Msequential_114/lstm_342/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ј
?sequential_114/lstm_342/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_114/lstm_342/transpose:y:0Vsequential_114/lstm_342/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвw
-sequential_114/lstm_342/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_114/lstm_342/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_114/lstm_342/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:с
'sequential_114/lstm_342/strided_slice_2StridedSlice%sequential_114/lstm_342/transpose:y:06sequential_114/lstm_342/strided_slice_2/stack:output:08sequential_114/lstm_342/strided_slice_2/stack_1:output:08sequential_114/lstm_342/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskП
:sequential_114/lstm_342/lstm_cell_96/MatMul/ReadVariableOpReadVariableOpCsequential_114_lstm_342_lstm_cell_96_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0о
+sequential_114/lstm_342/lstm_cell_96/MatMulMatMul0sequential_114/lstm_342/strided_slice_2:output:0Bsequential_114/lstm_342/lstm_cell_96/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџУ
<sequential_114/lstm_342/lstm_cell_96/MatMul_1/ReadVariableOpReadVariableOpEsequential_114_lstm_342_lstm_cell_96_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0и
-sequential_114/lstm_342/lstm_cell_96/MatMul_1MatMul&sequential_114/lstm_342/zeros:output:0Dsequential_114/lstm_342/lstm_cell_96/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџд
(sequential_114/lstm_342/lstm_cell_96/addAddV25sequential_114/lstm_342/lstm_cell_96/MatMul:product:07sequential_114/lstm_342/lstm_cell_96/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџН
;sequential_114/lstm_342/lstm_cell_96/BiasAdd/ReadVariableOpReadVariableOpDsequential_114_lstm_342_lstm_cell_96_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0н
,sequential_114/lstm_342/lstm_cell_96/BiasAddBiasAdd,sequential_114/lstm_342/lstm_cell_96/add:z:0Csequential_114/lstm_342/lstm_cell_96/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџv
4sequential_114/lstm_342/lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ѕ
*sequential_114/lstm_342/lstm_cell_96/splitSplit=sequential_114/lstm_342/lstm_cell_96/split/split_dim:output:05sequential_114/lstm_342/lstm_cell_96/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split
,sequential_114/lstm_342/lstm_cell_96/SigmoidSigmoid3sequential_114/lstm_342/lstm_cell_96/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd 
.sequential_114/lstm_342/lstm_cell_96/Sigmoid_1Sigmoid3sequential_114/lstm_342/lstm_cell_96/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdП
(sequential_114/lstm_342/lstm_cell_96/mulMul2sequential_114/lstm_342/lstm_cell_96/Sigmoid_1:y:0(sequential_114/lstm_342/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
)sequential_114/lstm_342/lstm_cell_96/ReluRelu3sequential_114/lstm_342/lstm_cell_96/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdЮ
*sequential_114/lstm_342/lstm_cell_96/mul_1Mul0sequential_114/lstm_342/lstm_cell_96/Sigmoid:y:07sequential_114/lstm_342/lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdУ
*sequential_114/lstm_342/lstm_cell_96/add_1AddV2,sequential_114/lstm_342/lstm_cell_96/mul:z:0.sequential_114/lstm_342/lstm_cell_96/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd 
.sequential_114/lstm_342/lstm_cell_96/Sigmoid_2Sigmoid3sequential_114/lstm_342/lstm_cell_96/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd
+sequential_114/lstm_342/lstm_cell_96/Relu_1Relu.sequential_114/lstm_342/lstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdв
*sequential_114/lstm_342/lstm_cell_96/mul_2Mul2sequential_114/lstm_342/lstm_cell_96/Sigmoid_2:y:09sequential_114/lstm_342/lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
5sequential_114/lstm_342/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   
'sequential_114/lstm_342/TensorArrayV2_1TensorListReserve>sequential_114/lstm_342/TensorArrayV2_1/element_shape:output:00sequential_114/lstm_342/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв^
sequential_114/lstm_342/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_114/lstm_342/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџl
*sequential_114/lstm_342/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : в
sequential_114/lstm_342/whileWhile3sequential_114/lstm_342/while/loop_counter:output:09sequential_114/lstm_342/while/maximum_iterations:output:0%sequential_114/lstm_342/time:output:00sequential_114/lstm_342/TensorArrayV2_1:handle:0&sequential_114/lstm_342/zeros:output:0(sequential_114/lstm_342/zeros_1:output:00sequential_114/lstm_342/strided_slice_1:output:0Osequential_114/lstm_342/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_114_lstm_342_lstm_cell_96_matmul_readvariableop_resourceEsequential_114_lstm_342_lstm_cell_96_matmul_1_readvariableop_resourceDsequential_114_lstm_342_lstm_cell_96_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_114_lstm_342_while_body_593546*5
cond-R+
)sequential_114_lstm_342_while_cond_593545*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
Hsequential_114/lstm_342/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   
:sequential_114/lstm_342/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_114/lstm_342/while:output:3Qsequential_114/lstm_342/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0
-sequential_114/lstm_342/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџy
/sequential_114/lstm_342/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_114/lstm_342/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
'sequential_114/lstm_342/strided_slice_3StridedSliceCsequential_114/lstm_342/TensorArrayV2Stack/TensorListStack:tensor:06sequential_114/lstm_342/strided_slice_3/stack:output:08sequential_114/lstm_342/strided_slice_3/stack_1:output:08sequential_114/lstm_342/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask}
(sequential_114/lstm_342/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          о
#sequential_114/lstm_342/transpose_1	TransposeCsequential_114/lstm_342/TensorArrayV2Stack/TensorListStack:tensor:01sequential_114/lstm_342/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџds
sequential_114/lstm_342/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_114/lstm_343/ShapeShape'sequential_114/lstm_342/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_114/lstm_343/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_114/lstm_343/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_114/lstm_343/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%sequential_114/lstm_343/strided_sliceStridedSlice&sequential_114/lstm_343/Shape:output:04sequential_114/lstm_343/strided_slice/stack:output:06sequential_114/lstm_343/strided_slice/stack_1:output:06sequential_114/lstm_343/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_114/lstm_343/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2Л
$sequential_114/lstm_343/zeros/packedPack.sequential_114/lstm_343/strided_slice:output:0/sequential_114/lstm_343/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_114/lstm_343/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
sequential_114/lstm_343/zerosFill-sequential_114/lstm_343/zeros/packed:output:0,sequential_114/lstm_343/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2j
(sequential_114/lstm_343/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2П
&sequential_114/lstm_343/zeros_1/packedPack.sequential_114/lstm_343/strided_slice:output:01sequential_114/lstm_343/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_114/lstm_343/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    К
sequential_114/lstm_343/zeros_1Fill/sequential_114/lstm_343/zeros_1/packed:output:0.sequential_114/lstm_343/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2{
&sequential_114/lstm_343/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          О
!sequential_114/lstm_343/transpose	Transpose'sequential_114/lstm_342/transpose_1:y:0/sequential_114/lstm_343/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdt
sequential_114/lstm_343/Shape_1Shape%sequential_114/lstm_343/transpose:y:0*
T0*
_output_shapes
:w
-sequential_114/lstm_343/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_114/lstm_343/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_114/lstm_343/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
'sequential_114/lstm_343/strided_slice_1StridedSlice(sequential_114/lstm_343/Shape_1:output:06sequential_114/lstm_343/strided_slice_1/stack:output:08sequential_114/lstm_343/strided_slice_1/stack_1:output:08sequential_114/lstm_343/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_114/lstm_343/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџќ
%sequential_114/lstm_343/TensorArrayV2TensorListReserve<sequential_114/lstm_343/TensorArrayV2/element_shape:output:00sequential_114/lstm_343/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Msequential_114/lstm_343/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   Ј
?sequential_114/lstm_343/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_114/lstm_343/transpose:y:0Vsequential_114/lstm_343/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвw
-sequential_114/lstm_343/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_114/lstm_343/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_114/lstm_343/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:с
'sequential_114/lstm_343/strided_slice_2StridedSlice%sequential_114/lstm_343/transpose:y:06sequential_114/lstm_343/strided_slice_2/stack:output:08sequential_114/lstm_343/strided_slice_2/stack_1:output:08sequential_114/lstm_343/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskП
:sequential_114/lstm_343/lstm_cell_97/MatMul/ReadVariableOpReadVariableOpCsequential_114_lstm_343_lstm_cell_97_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0о
+sequential_114/lstm_343/lstm_cell_97/MatMulMatMul0sequential_114/lstm_343/strided_slice_2:output:0Bsequential_114/lstm_343/lstm_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШУ
<sequential_114/lstm_343/lstm_cell_97/MatMul_1/ReadVariableOpReadVariableOpEsequential_114_lstm_343_lstm_cell_97_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0и
-sequential_114/lstm_343/lstm_cell_97/MatMul_1MatMul&sequential_114/lstm_343/zeros:output:0Dsequential_114/lstm_343/lstm_cell_97/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШд
(sequential_114/lstm_343/lstm_cell_97/addAddV25sequential_114/lstm_343/lstm_cell_97/MatMul:product:07sequential_114/lstm_343/lstm_cell_97/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШН
;sequential_114/lstm_343/lstm_cell_97/BiasAdd/ReadVariableOpReadVariableOpDsequential_114_lstm_343_lstm_cell_97_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0н
,sequential_114/lstm_343/lstm_cell_97/BiasAddBiasAdd,sequential_114/lstm_343/lstm_cell_97/add:z:0Csequential_114/lstm_343/lstm_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШv
4sequential_114/lstm_343/lstm_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ѕ
*sequential_114/lstm_343/lstm_cell_97/splitSplit=sequential_114/lstm_343/lstm_cell_97/split/split_dim:output:05sequential_114/lstm_343/lstm_cell_97/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split
,sequential_114/lstm_343/lstm_cell_97/SigmoidSigmoid3sequential_114/lstm_343/lstm_cell_97/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
.sequential_114/lstm_343/lstm_cell_97/Sigmoid_1Sigmoid3sequential_114/lstm_343/lstm_cell_97/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2П
(sequential_114/lstm_343/lstm_cell_97/mulMul2sequential_114/lstm_343/lstm_cell_97/Sigmoid_1:y:0(sequential_114/lstm_343/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
)sequential_114/lstm_343/lstm_cell_97/ReluRelu3sequential_114/lstm_343/lstm_cell_97/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Ю
*sequential_114/lstm_343/lstm_cell_97/mul_1Mul0sequential_114/lstm_343/lstm_cell_97/Sigmoid:y:07sequential_114/lstm_343/lstm_cell_97/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2У
*sequential_114/lstm_343/lstm_cell_97/add_1AddV2,sequential_114/lstm_343/lstm_cell_97/mul:z:0.sequential_114/lstm_343/lstm_cell_97/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
.sequential_114/lstm_343/lstm_cell_97/Sigmoid_2Sigmoid3sequential_114/lstm_343/lstm_cell_97/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
+sequential_114/lstm_343/lstm_cell_97/Relu_1Relu.sequential_114/lstm_343/lstm_cell_97/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2в
*sequential_114/lstm_343/lstm_cell_97/mul_2Mul2sequential_114/lstm_343/lstm_cell_97/Sigmoid_2:y:09sequential_114/lstm_343/lstm_cell_97/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
5sequential_114/lstm_343/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   
'sequential_114/lstm_343/TensorArrayV2_1TensorListReserve>sequential_114/lstm_343/TensorArrayV2_1/element_shape:output:00sequential_114/lstm_343/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв^
sequential_114/lstm_343/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_114/lstm_343/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџl
*sequential_114/lstm_343/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : в
sequential_114/lstm_343/whileWhile3sequential_114/lstm_343/while/loop_counter:output:09sequential_114/lstm_343/while/maximum_iterations:output:0%sequential_114/lstm_343/time:output:00sequential_114/lstm_343/TensorArrayV2_1:handle:0&sequential_114/lstm_343/zeros:output:0(sequential_114/lstm_343/zeros_1:output:00sequential_114/lstm_343/strided_slice_1:output:0Osequential_114/lstm_343/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_114_lstm_343_lstm_cell_97_matmul_readvariableop_resourceEsequential_114_lstm_343_lstm_cell_97_matmul_1_readvariableop_resourceDsequential_114_lstm_343_lstm_cell_97_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_114_lstm_343_while_body_593685*5
cond-R+
)sequential_114_lstm_343_while_cond_593684*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
Hsequential_114/lstm_343/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   
:sequential_114/lstm_343/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_114/lstm_343/while:output:3Qsequential_114/lstm_343/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0
-sequential_114/lstm_343/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџy
/sequential_114/lstm_343/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_114/lstm_343/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
'sequential_114/lstm_343/strided_slice_3StridedSliceCsequential_114/lstm_343/TensorArrayV2Stack/TensorListStack:tensor:06sequential_114/lstm_343/strided_slice_3/stack:output:08sequential_114/lstm_343/strided_slice_3/stack_1:output:08sequential_114/lstm_343/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask}
(sequential_114/lstm_343/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          о
#sequential_114/lstm_343/transpose_1	TransposeCsequential_114/lstm_343/TensorArrayV2Stack/TensorListStack:tensor:01sequential_114/lstm_343/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2s
sequential_114/lstm_343/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_114/lstm_344/ShapeShape'sequential_114/lstm_343/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_114/lstm_344/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_114/lstm_344/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_114/lstm_344/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%sequential_114/lstm_344/strided_sliceStridedSlice&sequential_114/lstm_344/Shape:output:04sequential_114/lstm_344/strided_slice/stack:output:06sequential_114/lstm_344/strided_slice/stack_1:output:06sequential_114/lstm_344/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_114/lstm_344/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
Л
$sequential_114/lstm_344/zeros/packedPack.sequential_114/lstm_344/strided_slice:output:0/sequential_114/lstm_344/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_114/lstm_344/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
sequential_114/lstm_344/zerosFill-sequential_114/lstm_344/zeros/packed:output:0,sequential_114/lstm_344/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
j
(sequential_114/lstm_344/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
П
&sequential_114/lstm_344/zeros_1/packedPack.sequential_114/lstm_344/strided_slice:output:01sequential_114/lstm_344/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_114/lstm_344/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    К
sequential_114/lstm_344/zeros_1Fill/sequential_114/lstm_344/zeros_1/packed:output:0.sequential_114/lstm_344/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
{
&sequential_114/lstm_344/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          О
!sequential_114/lstm_344/transpose	Transpose'sequential_114/lstm_343/transpose_1:y:0/sequential_114/lstm_344/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2t
sequential_114/lstm_344/Shape_1Shape%sequential_114/lstm_344/transpose:y:0*
T0*
_output_shapes
:w
-sequential_114/lstm_344/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_114/lstm_344/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_114/lstm_344/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
'sequential_114/lstm_344/strided_slice_1StridedSlice(sequential_114/lstm_344/Shape_1:output:06sequential_114/lstm_344/strided_slice_1/stack:output:08sequential_114/lstm_344/strided_slice_1/stack_1:output:08sequential_114/lstm_344/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_114/lstm_344/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџќ
%sequential_114/lstm_344/TensorArrayV2TensorListReserve<sequential_114/lstm_344/TensorArrayV2/element_shape:output:00sequential_114/lstm_344/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Msequential_114/lstm_344/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ј
?sequential_114/lstm_344/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_114/lstm_344/transpose:y:0Vsequential_114/lstm_344/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвw
-sequential_114/lstm_344/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_114/lstm_344/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_114/lstm_344/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:с
'sequential_114/lstm_344/strided_slice_2StridedSlice%sequential_114/lstm_344/transpose:y:06sequential_114/lstm_344/strided_slice_2/stack:output:08sequential_114/lstm_344/strided_slice_2/stack_1:output:08sequential_114/lstm_344/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskО
:sequential_114/lstm_344/lstm_cell_98/MatMul/ReadVariableOpReadVariableOpCsequential_114_lstm_344_lstm_cell_98_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0н
+sequential_114/lstm_344/lstm_cell_98/MatMulMatMul0sequential_114/lstm_344/strided_slice_2:output:0Bsequential_114/lstm_344/lstm_cell_98/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Т
<sequential_114/lstm_344/lstm_cell_98/MatMul_1/ReadVariableOpReadVariableOpEsequential_114_lstm_344_lstm_cell_98_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0з
-sequential_114/lstm_344/lstm_cell_98/MatMul_1MatMul&sequential_114/lstm_344/zeros:output:0Dsequential_114/lstm_344/lstm_cell_98/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(г
(sequential_114/lstm_344/lstm_cell_98/addAddV25sequential_114/lstm_344/lstm_cell_98/MatMul:product:07sequential_114/lstm_344/lstm_cell_98/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(М
;sequential_114/lstm_344/lstm_cell_98/BiasAdd/ReadVariableOpReadVariableOpDsequential_114_lstm_344_lstm_cell_98_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0м
,sequential_114/lstm_344/lstm_cell_98/BiasAddBiasAdd,sequential_114/lstm_344/lstm_cell_98/add:z:0Csequential_114/lstm_344/lstm_cell_98/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(v
4sequential_114/lstm_344/lstm_cell_98/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ѕ
*sequential_114/lstm_344/lstm_cell_98/splitSplit=sequential_114/lstm_344/lstm_cell_98/split/split_dim:output:05sequential_114/lstm_344/lstm_cell_98/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_split
,sequential_114/lstm_344/lstm_cell_98/SigmoidSigmoid3sequential_114/lstm_344/lstm_cell_98/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
 
.sequential_114/lstm_344/lstm_cell_98/Sigmoid_1Sigmoid3sequential_114/lstm_344/lstm_cell_98/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
П
(sequential_114/lstm_344/lstm_cell_98/mulMul2sequential_114/lstm_344/lstm_cell_98/Sigmoid_1:y:0(sequential_114/lstm_344/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

)sequential_114/lstm_344/lstm_cell_98/ReluRelu3sequential_114/lstm_344/lstm_cell_98/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
Ю
*sequential_114/lstm_344/lstm_cell_98/mul_1Mul0sequential_114/lstm_344/lstm_cell_98/Sigmoid:y:07sequential_114/lstm_344/lstm_cell_98/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
У
*sequential_114/lstm_344/lstm_cell_98/add_1AddV2,sequential_114/lstm_344/lstm_cell_98/mul:z:0.sequential_114/lstm_344/lstm_cell_98/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
 
.sequential_114/lstm_344/lstm_cell_98/Sigmoid_2Sigmoid3sequential_114/lstm_344/lstm_cell_98/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ

+sequential_114/lstm_344/lstm_cell_98/Relu_1Relu.sequential_114/lstm_344/lstm_cell_98/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
в
*sequential_114/lstm_344/lstm_cell_98/mul_2Mul2sequential_114/lstm_344/lstm_cell_98/Sigmoid_2:y:09sequential_114/lstm_344/lstm_cell_98/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

5sequential_114/lstm_344/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   
'sequential_114/lstm_344/TensorArrayV2_1TensorListReserve>sequential_114/lstm_344/TensorArrayV2_1/element_shape:output:00sequential_114/lstm_344/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв^
sequential_114/lstm_344/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_114/lstm_344/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџl
*sequential_114/lstm_344/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : в
sequential_114/lstm_344/whileWhile3sequential_114/lstm_344/while/loop_counter:output:09sequential_114/lstm_344/while/maximum_iterations:output:0%sequential_114/lstm_344/time:output:00sequential_114/lstm_344/TensorArrayV2_1:handle:0&sequential_114/lstm_344/zeros:output:0(sequential_114/lstm_344/zeros_1:output:00sequential_114/lstm_344/strided_slice_1:output:0Osequential_114/lstm_344/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_114_lstm_344_lstm_cell_98_matmul_readvariableop_resourceEsequential_114_lstm_344_lstm_cell_98_matmul_1_readvariableop_resourceDsequential_114_lstm_344_lstm_cell_98_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_114_lstm_344_while_body_593824*5
cond-R+
)sequential_114_lstm_344_while_cond_593823*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
Hsequential_114/lstm_344/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   
:sequential_114/lstm_344/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_114/lstm_344/while:output:3Qsequential_114/lstm_344/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ
*
element_dtype0
-sequential_114/lstm_344/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџy
/sequential_114/lstm_344/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_114/lstm_344/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
'sequential_114/lstm_344/strided_slice_3StridedSliceCsequential_114/lstm_344/TensorArrayV2Stack/TensorListStack:tensor:06sequential_114/lstm_344/strided_slice_3/stack:output:08sequential_114/lstm_344/strided_slice_3/stack_1:output:08sequential_114/lstm_344/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_mask}
(sequential_114/lstm_344/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          о
#sequential_114/lstm_344/transpose_1	TransposeCsequential_114/lstm_344/TensorArrayV2Stack/TensorListStack:tensor:01sequential_114/lstm_344/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
s
sequential_114/lstm_344/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    І
.sequential_114/dense_114/MatMul/ReadVariableOpReadVariableOp7sequential_114_dense_114_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Х
sequential_114/dense_114/MatMulMatMul0sequential_114/lstm_344/strided_slice_3:output:06sequential_114/dense_114/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЄ
/sequential_114/dense_114/BiasAdd/ReadVariableOpReadVariableOp8sequential_114_dense_114_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
 sequential_114/dense_114/BiasAddBiasAdd)sequential_114/dense_114/MatMul:product:07sequential_114/dense_114/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
IdentityIdentity)sequential_114/dense_114/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЗ
NoOpNoOp0^sequential_114/dense_114/BiasAdd/ReadVariableOp/^sequential_114/dense_114/MatMul/ReadVariableOp<^sequential_114/lstm_342/lstm_cell_96/BiasAdd/ReadVariableOp;^sequential_114/lstm_342/lstm_cell_96/MatMul/ReadVariableOp=^sequential_114/lstm_342/lstm_cell_96/MatMul_1/ReadVariableOp^sequential_114/lstm_342/while<^sequential_114/lstm_343/lstm_cell_97/BiasAdd/ReadVariableOp;^sequential_114/lstm_343/lstm_cell_97/MatMul/ReadVariableOp=^sequential_114/lstm_343/lstm_cell_97/MatMul_1/ReadVariableOp^sequential_114/lstm_343/while<^sequential_114/lstm_344/lstm_cell_98/BiasAdd/ReadVariableOp;^sequential_114/lstm_344/lstm_cell_98/MatMul/ReadVariableOp=^sequential_114/lstm_344/lstm_cell_98/MatMul_1/ReadVariableOp^sequential_114/lstm_344/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 2b
/sequential_114/dense_114/BiasAdd/ReadVariableOp/sequential_114/dense_114/BiasAdd/ReadVariableOp2`
.sequential_114/dense_114/MatMul/ReadVariableOp.sequential_114/dense_114/MatMul/ReadVariableOp2z
;sequential_114/lstm_342/lstm_cell_96/BiasAdd/ReadVariableOp;sequential_114/lstm_342/lstm_cell_96/BiasAdd/ReadVariableOp2x
:sequential_114/lstm_342/lstm_cell_96/MatMul/ReadVariableOp:sequential_114/lstm_342/lstm_cell_96/MatMul/ReadVariableOp2|
<sequential_114/lstm_342/lstm_cell_96/MatMul_1/ReadVariableOp<sequential_114/lstm_342/lstm_cell_96/MatMul_1/ReadVariableOp2>
sequential_114/lstm_342/whilesequential_114/lstm_342/while2z
;sequential_114/lstm_343/lstm_cell_97/BiasAdd/ReadVariableOp;sequential_114/lstm_343/lstm_cell_97/BiasAdd/ReadVariableOp2x
:sequential_114/lstm_343/lstm_cell_97/MatMul/ReadVariableOp:sequential_114/lstm_343/lstm_cell_97/MatMul/ReadVariableOp2|
<sequential_114/lstm_343/lstm_cell_97/MatMul_1/ReadVariableOp<sequential_114/lstm_343/lstm_cell_97/MatMul_1/ReadVariableOp2>
sequential_114/lstm_343/whilesequential_114/lstm_343/while2z
;sequential_114/lstm_344/lstm_cell_98/BiasAdd/ReadVariableOp;sequential_114/lstm_344/lstm_cell_98/BiasAdd/ReadVariableOp2x
:sequential_114/lstm_344/lstm_cell_98/MatMul/ReadVariableOp:sequential_114/lstm_344/lstm_cell_98/MatMul/ReadVariableOp2|
<sequential_114/lstm_344/lstm_cell_98/MatMul_1/ReadVariableOp<sequential_114/lstm_344/lstm_cell_98/MatMul_1/ReadVariableOp2>
sequential_114/lstm_344/whilesequential_114/lstm_344/while:[ W
+
_output_shapes
:џџџџџџџџџ
(
_user_specified_namelstm_342_input
џ7
Ъ
while_body_595545
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_98_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_98_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_98_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_98_matmul_readvariableop_resource:2(E
3while_lstm_cell_98_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_98_biasadd_readvariableop_resource:(Ђ)while/lstm_cell_98/BiasAdd/ReadVariableOpЂ(while/lstm_cell_98/MatMul/ReadVariableOpЂ*while/lstm_cell_98/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
(while/lstm_cell_98/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_98_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Й
while/lstm_cell_98/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_98/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ( 
*while/lstm_cell_98/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_98_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_98/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_98/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
while/lstm_cell_98/addAddV2#while/lstm_cell_98/MatMul:product:0%while/lstm_cell_98/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
)while/lstm_cell_98/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_98_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0І
while/lstm_cell_98/BiasAddBiasAddwhile/lstm_cell_98/add:z:01while/lstm_cell_98/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
"while/lstm_cell_98/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_98/splitSplit+while/lstm_cell_98/split/split_dim:output:0#while/lstm_cell_98/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitz
while/lstm_cell_98/SigmoidSigmoid!while/lstm_cell_98/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_98/Sigmoid_1Sigmoid!while/lstm_cell_98/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_98/mulMul while/lstm_cell_98/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
t
while/lstm_cell_98/ReluRelu!while/lstm_cell_98/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_98/mul_1Mulwhile/lstm_cell_98/Sigmoid:y:0%while/lstm_cell_98/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_98/add_1AddV2while/lstm_cell_98/mul:z:0while/lstm_cell_98/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_98/Sigmoid_2Sigmoid!while/lstm_cell_98/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
q
while/lstm_cell_98/Relu_1Reluwhile/lstm_cell_98/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_98/mul_2Mul while/lstm_cell_98/Sigmoid_2:y:0'while/lstm_cell_98/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_98/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_98/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
y
while/Identity_5Identitywhile/lstm_cell_98/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
а

while/NoOpNoOp*^while/lstm_cell_98/BiasAdd/ReadVariableOp)^while/lstm_cell_98/MatMul/ReadVariableOp+^while/lstm_cell_98/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_98_biasadd_readvariableop_resource4while_lstm_cell_98_biasadd_readvariableop_resource_0"l
3while_lstm_cell_98_matmul_1_readvariableop_resource5while_lstm_cell_98_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_98_matmul_readvariableop_resource3while_lstm_cell_98_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2V
)while/lstm_cell_98/BiasAdd/ReadVariableOp)while/lstm_cell_98/BiasAdd/ReadVariableOp2T
(while/lstm_cell_98/MatMul/ReadVariableOp(while/lstm_cell_98/MatMul/ReadVariableOp2X
*while/lstm_cell_98/MatMul_1/ReadVariableOp*while/lstm_cell_98/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
8
а
while_body_597801
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_97_matmul_readvariableop_resource_0:	dШH
5while_lstm_cell_97_matmul_1_readvariableop_resource_0:	2ШC
4while_lstm_cell_97_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_97_matmul_readvariableop_resource:	dШF
3while_lstm_cell_97_matmul_1_readvariableop_resource:	2ШA
2while_lstm_cell_97_biasadd_readvariableop_resource:	ШЂ)while/lstm_cell_97/BiasAdd/ReadVariableOpЂ(while/lstm_cell_97/MatMul/ReadVariableOpЂ*while/lstm_cell_97/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0
(while/lstm_cell_97/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_97_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0К
while/lstm_cell_97/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
*while/lstm_cell_97/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_97_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ё
while/lstm_cell_97/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_97/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_97/addAddV2#while/lstm_cell_97/MatMul:product:0%while/lstm_cell_97/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
)while/lstm_cell_97/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_97_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ї
while/lstm_cell_97/BiasAddBiasAddwhile/lstm_cell_97/add:z:01while/lstm_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШd
"while/lstm_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_97/splitSplit+while/lstm_cell_97/split/split_dim:output:0#while/lstm_cell_97/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitz
while/lstm_cell_97/SigmoidSigmoid!while/lstm_cell_97/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_97/Sigmoid_1Sigmoid!while/lstm_cell_97/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_97/mulMul while/lstm_cell_97/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2t
while/lstm_cell_97/ReluRelu!while/lstm_cell_97/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_97/mul_1Mulwhile/lstm_cell_97/Sigmoid:y:0%while/lstm_cell_97/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_97/add_1AddV2while/lstm_cell_97/mul:z:0while/lstm_cell_97/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_97/Sigmoid_2Sigmoid!while/lstm_cell_97/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2q
while/lstm_cell_97/Relu_1Reluwhile/lstm_cell_97/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_97/mul_2Mul while/lstm_cell_97/Sigmoid_2:y:0'while/lstm_cell_97/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_97/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_97/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y
while/Identity_5Identitywhile/lstm_cell_97/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2а

while/NoOpNoOp*^while/lstm_cell_97/BiasAdd/ReadVariableOp)^while/lstm_cell_97/MatMul/ReadVariableOp+^while/lstm_cell_97/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_97_biasadd_readvariableop_resource4while_lstm_cell_97_biasadd_readvariableop_resource_0"l
3while_lstm_cell_97_matmul_1_readvariableop_resource5while_lstm_cell_97_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_97_matmul_readvariableop_resource3while_lstm_cell_97_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2V
)while/lstm_cell_97/BiasAdd/ReadVariableOp)while/lstm_cell_97/BiasAdd/ReadVariableOp2T
(while/lstm_cell_97/MatMul/ReadVariableOp(while/lstm_cell_97/MatMul/ReadVariableOp2X
*while/lstm_cell_97/MatMul_1/ReadVariableOp*while/lstm_cell_97/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
Е
У
while_cond_595544
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_595544___redundant_placeholder04
0while_while_cond_595544___redundant_placeholder14
0while_while_cond_595544___redundant_placeholder24
0while_while_cond_595544___redundant_placeholder3
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
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
8

D__inference_lstm_343_layer_call_and_return_conditional_losses_594605

inputs&
lstm_cell_97_594523:	dШ&
lstm_cell_97_594525:	2Ш"
lstm_cell_97_594527:	Ш
identityЂ$lstm_cell_97/StatefulPartitionedCallЂwhile;
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
valueB:б
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
:џџџџџџџџџ2R
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
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџdD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskѕ
$lstm_cell_97/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_97_594523lstm_cell_97_594525lstm_cell_97_594527*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_97_layer_call_and_return_conditional_losses_594477n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : З
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_97_594523lstm_cell_97_594525lstm_cell_97_594527*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_594536*
condR
while_cond_594535*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2u
NoOpNoOp%^lstm_cell_97/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџd: : : 2L
$lstm_cell_97/StatefulPartitionedCall$lstm_cell_97/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd
 
_user_specified_nameinputs

Ж
)__inference_lstm_343_layer_call_fn_597731

inputs
unknown:	dШ
	unknown_0:	2Ш
	unknown_1:	Ш
identityЂStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_343_layer_call_and_return_conditional_losses_595263s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
р"
н
while_body_594886
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_98_594910_0:2(-
while_lstm_cell_98_594912_0:
()
while_lstm_cell_98_594914_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_98_594910:2(+
while_lstm_cell_98_594912:
('
while_lstm_cell_98_594914:(Ђ*while/lstm_cell_98/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Г
*while/lstm_cell_98/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_98_594910_0while_lstm_cell_98_594912_0while_lstm_cell_98_594914_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_98_layer_call_and_return_conditional_losses_594827м
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_98/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_98/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

while/Identity_5Identity3while/lstm_cell_98/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
y

while/NoOpNoOp+^while/lstm_cell_98/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_98_594910while_lstm_cell_98_594910_0"8
while_lstm_cell_98_594912while_lstm_cell_98_594912_0"8
while_lstm_cell_98_594914while_lstm_cell_98_594914_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2X
*while/lstm_cell_98/StatefulPartitionedCall*while/lstm_cell_98/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
тJ

D__inference_lstm_342_layer_call_and_return_conditional_losses_597269
inputs_0>
+lstm_cell_96_matmul_readvariableop_resource:	@
-lstm_cell_96_matmul_1_readvariableop_resource:	d;
,lstm_cell_96_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_96/BiasAdd/ReadVariableOpЂ"lstm_cell_96/MatMul/ReadVariableOpЂ$lstm_cell_96/MatMul_1/ReadVariableOpЂwhile=
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
valueB:б
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
:џџџџџџџџџdR
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
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_96/MatMul/ReadVariableOpReadVariableOp+lstm_cell_96_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_96/MatMulMatMulstrided_slice_2:output:0*lstm_cell_96/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_96/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_96_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_96/MatMul_1MatMulzeros:output:0,lstm_cell_96/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_96/addAddV2lstm_cell_96/MatMul:product:0lstm_cell_96/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_96/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_96_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_96/BiasAddBiasAddlstm_cell_96/add:z:0+lstm_cell_96/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_96/splitSplit%lstm_cell_96/split/split_dim:output:0lstm_cell_96/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_96/SigmoidSigmoidlstm_cell_96/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_96/Sigmoid_1Sigmoidlstm_cell_96/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_96/mulMullstm_cell_96/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_96/ReluRelulstm_cell_96/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_96/mul_1Mullstm_cell_96/Sigmoid:y:0lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_96/add_1AddV2lstm_cell_96/mul:z:0lstm_cell_96/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_96/Sigmoid_2Sigmoidlstm_cell_96/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_96/Relu_1Relulstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_96/mul_2Mullstm_cell_96/Sigmoid_2:y:0!lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_96_matmul_readvariableop_resource-lstm_cell_96_matmul_1_readvariableop_resource,lstm_cell_96_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_597185*
condR
while_cond_597184*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџdР
NoOpNoOp$^lstm_cell_96/BiasAdd/ReadVariableOp#^lstm_cell_96/MatMul/ReadVariableOp%^lstm_cell_96/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2J
#lstm_cell_96/BiasAdd/ReadVariableOp#lstm_cell_96/BiasAdd/ReadVariableOp2H
"lstm_cell_96/MatMul/ReadVariableOp"lstm_cell_96/MatMul/ReadVariableOp2L
$lstm_cell_96/MatMul_1/ReadVariableOp$lstm_cell_96/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
лB
№

lstm_343_while_body_596426.
*lstm_343_while_lstm_343_while_loop_counter4
0lstm_343_while_lstm_343_while_maximum_iterations
lstm_343_while_placeholder 
lstm_343_while_placeholder_1 
lstm_343_while_placeholder_2 
lstm_343_while_placeholder_3-
)lstm_343_while_lstm_343_strided_slice_1_0i
elstm_343_while_tensorarrayv2read_tensorlistgetitem_lstm_343_tensorarrayunstack_tensorlistfromtensor_0O
<lstm_343_while_lstm_cell_97_matmul_readvariableop_resource_0:	dШQ
>lstm_343_while_lstm_cell_97_matmul_1_readvariableop_resource_0:	2ШL
=lstm_343_while_lstm_cell_97_biasadd_readvariableop_resource_0:	Ш
lstm_343_while_identity
lstm_343_while_identity_1
lstm_343_while_identity_2
lstm_343_while_identity_3
lstm_343_while_identity_4
lstm_343_while_identity_5+
'lstm_343_while_lstm_343_strided_slice_1g
clstm_343_while_tensorarrayv2read_tensorlistgetitem_lstm_343_tensorarrayunstack_tensorlistfromtensorM
:lstm_343_while_lstm_cell_97_matmul_readvariableop_resource:	dШO
<lstm_343_while_lstm_cell_97_matmul_1_readvariableop_resource:	2ШJ
;lstm_343_while_lstm_cell_97_biasadd_readvariableop_resource:	ШЂ2lstm_343/while/lstm_cell_97/BiasAdd/ReadVariableOpЂ1lstm_343/while/lstm_cell_97/MatMul/ReadVariableOpЂ3lstm_343/while/lstm_cell_97/MatMul_1/ReadVariableOp
@lstm_343/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   г
2lstm_343/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_343_while_tensorarrayv2read_tensorlistgetitem_lstm_343_tensorarrayunstack_tensorlistfromtensor_0lstm_343_while_placeholderIlstm_343/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0Џ
1lstm_343/while/lstm_cell_97/MatMul/ReadVariableOpReadVariableOp<lstm_343_while_lstm_cell_97_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0е
"lstm_343/while/lstm_cell_97/MatMulMatMul9lstm_343/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_343/while/lstm_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШГ
3lstm_343/while/lstm_cell_97/MatMul_1/ReadVariableOpReadVariableOp>lstm_343_while_lstm_cell_97_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0М
$lstm_343/while/lstm_cell_97/MatMul_1MatMullstm_343_while_placeholder_2;lstm_343/while/lstm_cell_97/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЙ
lstm_343/while/lstm_cell_97/addAddV2,lstm_343/while/lstm_cell_97/MatMul:product:0.lstm_343/while/lstm_cell_97/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ­
2lstm_343/while/lstm_cell_97/BiasAdd/ReadVariableOpReadVariableOp=lstm_343_while_lstm_cell_97_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Т
#lstm_343/while/lstm_cell_97/BiasAddBiasAdd#lstm_343/while/lstm_cell_97/add:z:0:lstm_343/while/lstm_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШm
+lstm_343/while/lstm_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_343/while/lstm_cell_97/splitSplit4lstm_343/while/lstm_cell_97/split/split_dim:output:0,lstm_343/while/lstm_cell_97/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split
#lstm_343/while/lstm_cell_97/SigmoidSigmoid*lstm_343/while/lstm_cell_97/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
%lstm_343/while/lstm_cell_97/Sigmoid_1Sigmoid*lstm_343/while/lstm_cell_97/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
lstm_343/while/lstm_cell_97/mulMul)lstm_343/while/lstm_cell_97/Sigmoid_1:y:0lstm_343_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
 lstm_343/while/lstm_cell_97/ReluRelu*lstm_343/while/lstm_cell_97/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Г
!lstm_343/while/lstm_cell_97/mul_1Mul'lstm_343/while/lstm_cell_97/Sigmoid:y:0.lstm_343/while/lstm_cell_97/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ј
!lstm_343/while/lstm_cell_97/add_1AddV2#lstm_343/while/lstm_cell_97/mul:z:0%lstm_343/while/lstm_cell_97/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
%lstm_343/while/lstm_cell_97/Sigmoid_2Sigmoid*lstm_343/while/lstm_cell_97/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
"lstm_343/while/lstm_cell_97/Relu_1Relu%lstm_343/while/lstm_cell_97/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2З
!lstm_343/while/lstm_cell_97/mul_2Mul)lstm_343/while/lstm_cell_97/Sigmoid_2:y:00lstm_343/while/lstm_cell_97/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2щ
3lstm_343/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_343_while_placeholder_1lstm_343_while_placeholder%lstm_343/while/lstm_cell_97/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвV
lstm_343/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_343/while/addAddV2lstm_343_while_placeholderlstm_343/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_343/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_343/while/add_1AddV2*lstm_343_while_lstm_343_while_loop_counterlstm_343/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_343/while/IdentityIdentitylstm_343/while/add_1:z:0^lstm_343/while/NoOp*
T0*
_output_shapes
: 
lstm_343/while/Identity_1Identity0lstm_343_while_lstm_343_while_maximum_iterations^lstm_343/while/NoOp*
T0*
_output_shapes
: t
lstm_343/while/Identity_2Identitylstm_343/while/add:z:0^lstm_343/while/NoOp*
T0*
_output_shapes
: Ё
lstm_343/while/Identity_3IdentityClstm_343/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_343/while/NoOp*
T0*
_output_shapes
: 
lstm_343/while/Identity_4Identity%lstm_343/while/lstm_cell_97/mul_2:z:0^lstm_343/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_343/while/Identity_5Identity%lstm_343/while/lstm_cell_97/add_1:z:0^lstm_343/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2є
lstm_343/while/NoOpNoOp3^lstm_343/while/lstm_cell_97/BiasAdd/ReadVariableOp2^lstm_343/while/lstm_cell_97/MatMul/ReadVariableOp4^lstm_343/while/lstm_cell_97/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_343_while_identity lstm_343/while/Identity:output:0"?
lstm_343_while_identity_1"lstm_343/while/Identity_1:output:0"?
lstm_343_while_identity_2"lstm_343/while/Identity_2:output:0"?
lstm_343_while_identity_3"lstm_343/while/Identity_3:output:0"?
lstm_343_while_identity_4"lstm_343/while/Identity_4:output:0"?
lstm_343_while_identity_5"lstm_343/while/Identity_5:output:0"T
'lstm_343_while_lstm_343_strided_slice_1)lstm_343_while_lstm_343_strided_slice_1_0"|
;lstm_343_while_lstm_cell_97_biasadd_readvariableop_resource=lstm_343_while_lstm_cell_97_biasadd_readvariableop_resource_0"~
<lstm_343_while_lstm_cell_97_matmul_1_readvariableop_resource>lstm_343_while_lstm_cell_97_matmul_1_readvariableop_resource_0"z
:lstm_343_while_lstm_cell_97_matmul_readvariableop_resource<lstm_343_while_lstm_cell_97_matmul_readvariableop_resource_0"Ь
clstm_343_while_tensorarrayv2read_tensorlistgetitem_lstm_343_tensorarrayunstack_tensorlistfromtensorelstm_343_while_tensorarrayv2read_tensorlistgetitem_lstm_343_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2h
2lstm_343/while/lstm_cell_97/BiasAdd/ReadVariableOp2lstm_343/while/lstm_cell_97/BiasAdd/ReadVariableOp2f
1lstm_343/while/lstm_cell_97/MatMul/ReadVariableOp1lstm_343/while/lstm_cell_97/MatMul/ReadVariableOp2j
3lstm_343/while/lstm_cell_97/MatMul_1/ReadVariableOp3lstm_343/while/lstm_cell_97/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
Ш	
і
E__inference_dense_114_layer_call_and_return_conditional_losses_595431

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
ы
і
-__inference_lstm_cell_97_layer_call_fn_599064

inputs
states_0
states_1
unknown:	dШ
	unknown_0:	2Ш
	unknown_1:	Ш
identity

identity_1

identity_2ЂStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_97_layer_call_and_return_conditional_losses_594331o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd:џџџџџџџџџ2:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/1

Ж
)__inference_lstm_342_layer_call_fn_597126

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
identityЂStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_342_layer_call_and_return_conditional_losses_595959s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
8
а
while_body_595029
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_96_matmul_readvariableop_resource_0:	H
5while_lstm_cell_96_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_96_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_96_matmul_readvariableop_resource:	F
3while_lstm_cell_96_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_96_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_96/BiasAdd/ReadVariableOpЂ(while/lstm_cell_96/MatMul/ReadVariableOpЂ*while/lstm_cell_96/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_96/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_96_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_96/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_96/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_96/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_96_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_96/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_96/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_96/addAddV2#while/lstm_cell_96/MatMul:product:0%while/lstm_cell_96/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_96/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_96_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_96/BiasAddBiasAddwhile/lstm_cell_96/add:z:01while/lstm_cell_96/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_96/splitSplit+while/lstm_cell_96/split/split_dim:output:0#while/lstm_cell_96/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_96/SigmoidSigmoid!while/lstm_cell_96/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_96/Sigmoid_1Sigmoid!while/lstm_cell_96/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_96/mulMul while/lstm_cell_96/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_96/ReluRelu!while/lstm_cell_96/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_96/mul_1Mulwhile/lstm_cell_96/Sigmoid:y:0%while/lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_96/add_1AddV2while/lstm_cell_96/mul:z:0while/lstm_cell_96/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_96/Sigmoid_2Sigmoid!while/lstm_cell_96/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_96/Relu_1Reluwhile/lstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_96/mul_2Mul while/lstm_cell_96/Sigmoid_2:y:0'while/lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_96/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_96/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_96/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_96/BiasAdd/ReadVariableOp)^while/lstm_cell_96/MatMul/ReadVariableOp+^while/lstm_cell_96/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_96_biasadd_readvariableop_resource4while_lstm_cell_96_biasadd_readvariableop_resource_0"l
3while_lstm_cell_96_matmul_1_readvariableop_resource5while_lstm_cell_96_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_96_matmul_readvariableop_resource3while_lstm_cell_96_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_96/BiasAdd/ReadVariableOp)while/lstm_cell_96/BiasAdd/ReadVariableOp2T
(while/lstm_cell_96/MatMul/ReadVariableOp(while/lstm_cell_96/MatMul/ReadVariableOp2X
*while/lstm_cell_96/MatMul_1/ReadVariableOp*while/lstm_cell_96/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
Е
У
while_cond_598416
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_598416___redundant_placeholder04
0while_while_cond_598416___redundant_placeholder14
0while_while_cond_598416___redundant_placeholder24
0while_while_cond_598416___redundant_placeholder3
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
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
Е
У
while_cond_597184
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_597184___redundant_placeholder04
0while_while_cond_597184___redundant_placeholder14
0while_while_cond_597184___redundant_placeholder24
0while_while_cond_597184___redundant_placeholder3
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
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:

Ж
)__inference_lstm_342_layer_call_fn_597115

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
identityЂStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_342_layer_call_and_return_conditional_losses_595113s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
8
а
while_body_597944
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_97_matmul_readvariableop_resource_0:	dШH
5while_lstm_cell_97_matmul_1_readvariableop_resource_0:	2ШC
4while_lstm_cell_97_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_97_matmul_readvariableop_resource:	dШF
3while_lstm_cell_97_matmul_1_readvariableop_resource:	2ШA
2while_lstm_cell_97_biasadd_readvariableop_resource:	ШЂ)while/lstm_cell_97/BiasAdd/ReadVariableOpЂ(while/lstm_cell_97/MatMul/ReadVariableOpЂ*while/lstm_cell_97/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0
(while/lstm_cell_97/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_97_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0К
while/lstm_cell_97/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
*while/lstm_cell_97/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_97_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ё
while/lstm_cell_97/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_97/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_97/addAddV2#while/lstm_cell_97/MatMul:product:0%while/lstm_cell_97/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
)while/lstm_cell_97/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_97_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ї
while/lstm_cell_97/BiasAddBiasAddwhile/lstm_cell_97/add:z:01while/lstm_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШd
"while/lstm_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_97/splitSplit+while/lstm_cell_97/split/split_dim:output:0#while/lstm_cell_97/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitz
while/lstm_cell_97/SigmoidSigmoid!while/lstm_cell_97/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_97/Sigmoid_1Sigmoid!while/lstm_cell_97/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_97/mulMul while/lstm_cell_97/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2t
while/lstm_cell_97/ReluRelu!while/lstm_cell_97/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_97/mul_1Mulwhile/lstm_cell_97/Sigmoid:y:0%while/lstm_cell_97/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_97/add_1AddV2while/lstm_cell_97/mul:z:0while/lstm_cell_97/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_97/Sigmoid_2Sigmoid!while/lstm_cell_97/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2q
while/lstm_cell_97/Relu_1Reluwhile/lstm_cell_97/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_97/mul_2Mul while/lstm_cell_97/Sigmoid_2:y:0'while/lstm_cell_97/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_97/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_97/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y
while/Identity_5Identitywhile/lstm_cell_97/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2а

while/NoOpNoOp*^while/lstm_cell_97/BiasAdd/ReadVariableOp)^while/lstm_cell_97/MatMul/ReadVariableOp+^while/lstm_cell_97/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_97_biasadd_readvariableop_resource4while_lstm_cell_97_biasadd_readvariableop_resource_0"l
3while_lstm_cell_97_matmul_1_readvariableop_resource5while_lstm_cell_97_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_97_matmul_readvariableop_resource3while_lstm_cell_97_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2V
)while/lstm_cell_97/BiasAdd/ReadVariableOp)while/lstm_cell_97/BiasAdd/ReadVariableOp2T
(while/lstm_cell_97/MatMul/ReadVariableOp(while/lstm_cell_97/MatMul/ReadVariableOp2X
*while/lstm_cell_97/MatMul_1/ReadVariableOp*while/lstm_cell_97/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
В

ї
lstm_342_while_cond_596286.
*lstm_342_while_lstm_342_while_loop_counter4
0lstm_342_while_lstm_342_while_maximum_iterations
lstm_342_while_placeholder 
lstm_342_while_placeholder_1 
lstm_342_while_placeholder_2 
lstm_342_while_placeholder_30
,lstm_342_while_less_lstm_342_strided_slice_1F
Blstm_342_while_lstm_342_while_cond_596286___redundant_placeholder0F
Blstm_342_while_lstm_342_while_cond_596286___redundant_placeholder1F
Blstm_342_while_lstm_342_while_cond_596286___redundant_placeholder2F
Blstm_342_while_lstm_342_while_cond_596286___redundant_placeholder3
lstm_342_while_identity

lstm_342/while/LessLesslstm_342_while_placeholder,lstm_342_while_less_lstm_342_strided_slice_1*
T0*
_output_shapes
: ]
lstm_342/while/IdentityIdentitylstm_342/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_342_while_identity lstm_342/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
8
а
while_body_598087
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_97_matmul_readvariableop_resource_0:	dШH
5while_lstm_cell_97_matmul_1_readvariableop_resource_0:	2ШC
4while_lstm_cell_97_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_97_matmul_readvariableop_resource:	dШF
3while_lstm_cell_97_matmul_1_readvariableop_resource:	2ШA
2while_lstm_cell_97_biasadd_readvariableop_resource:	ШЂ)while/lstm_cell_97/BiasAdd/ReadVariableOpЂ(while/lstm_cell_97/MatMul/ReadVariableOpЂ*while/lstm_cell_97/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0
(while/lstm_cell_97/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_97_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0К
while/lstm_cell_97/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
*while/lstm_cell_97/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_97_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ё
while/lstm_cell_97/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_97/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_97/addAddV2#while/lstm_cell_97/MatMul:product:0%while/lstm_cell_97/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
)while/lstm_cell_97/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_97_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ї
while/lstm_cell_97/BiasAddBiasAddwhile/lstm_cell_97/add:z:01while/lstm_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШd
"while/lstm_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_97/splitSplit+while/lstm_cell_97/split/split_dim:output:0#while/lstm_cell_97/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitz
while/lstm_cell_97/SigmoidSigmoid!while/lstm_cell_97/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_97/Sigmoid_1Sigmoid!while/lstm_cell_97/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_97/mulMul while/lstm_cell_97/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2t
while/lstm_cell_97/ReluRelu!while/lstm_cell_97/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_97/mul_1Mulwhile/lstm_cell_97/Sigmoid:y:0%while/lstm_cell_97/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_97/add_1AddV2while/lstm_cell_97/mul:z:0while/lstm_cell_97/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_97/Sigmoid_2Sigmoid!while/lstm_cell_97/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2q
while/lstm_cell_97/Relu_1Reluwhile/lstm_cell_97/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_97/mul_2Mul while/lstm_cell_97/Sigmoid_2:y:0'while/lstm_cell_97/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_97/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_97/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y
while/Identity_5Identitywhile/lstm_cell_97/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2а

while/NoOpNoOp*^while/lstm_cell_97/BiasAdd/ReadVariableOp)^while/lstm_cell_97/MatMul/ReadVariableOp+^while/lstm_cell_97/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_97_biasadd_readvariableop_resource4while_lstm_cell_97_biasadd_readvariableop_resource_0"l
3while_lstm_cell_97_matmul_1_readvariableop_resource5while_lstm_cell_97_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_97_matmul_readvariableop_resource3while_lstm_cell_97_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2V
)while/lstm_cell_97/BiasAdd/ReadVariableOp)while/lstm_cell_97/BiasAdd/ReadVariableOp2T
(while/lstm_cell_97/MatMul/ReadVariableOp(while/lstm_cell_97/MatMul/ReadVariableOp2X
*while/lstm_cell_97/MatMul_1/ReadVariableOp*while/lstm_cell_97/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
ж
Ѓ
)sequential_114_lstm_344_while_cond_593823L
Hsequential_114_lstm_344_while_sequential_114_lstm_344_while_loop_counterR
Nsequential_114_lstm_344_while_sequential_114_lstm_344_while_maximum_iterations-
)sequential_114_lstm_344_while_placeholder/
+sequential_114_lstm_344_while_placeholder_1/
+sequential_114_lstm_344_while_placeholder_2/
+sequential_114_lstm_344_while_placeholder_3N
Jsequential_114_lstm_344_while_less_sequential_114_lstm_344_strided_slice_1d
`sequential_114_lstm_344_while_sequential_114_lstm_344_while_cond_593823___redundant_placeholder0d
`sequential_114_lstm_344_while_sequential_114_lstm_344_while_cond_593823___redundant_placeholder1d
`sequential_114_lstm_344_while_sequential_114_lstm_344_while_cond_593823___redundant_placeholder2d
`sequential_114_lstm_344_while_sequential_114_lstm_344_while_cond_593823___redundant_placeholder3*
&sequential_114_lstm_344_while_identity
Т
"sequential_114/lstm_344/while/LessLess)sequential_114_lstm_344_while_placeholderJsequential_114_lstm_344_while_less_sequential_114_lstm_344_strided_slice_1*
T0*
_output_shapes
: {
&sequential_114/lstm_344/while/IdentityIdentity&sequential_114/lstm_344/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_114_lstm_344_while_identity/sequential_114/lstm_344/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
ЮB
ъ

lstm_344_while_body_596565.
*lstm_344_while_lstm_344_while_loop_counter4
0lstm_344_while_lstm_344_while_maximum_iterations
lstm_344_while_placeholder 
lstm_344_while_placeholder_1 
lstm_344_while_placeholder_2 
lstm_344_while_placeholder_3-
)lstm_344_while_lstm_344_strided_slice_1_0i
elstm_344_while_tensorarrayv2read_tensorlistgetitem_lstm_344_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_344_while_lstm_cell_98_matmul_readvariableop_resource_0:2(P
>lstm_344_while_lstm_cell_98_matmul_1_readvariableop_resource_0:
(K
=lstm_344_while_lstm_cell_98_biasadd_readvariableop_resource_0:(
lstm_344_while_identity
lstm_344_while_identity_1
lstm_344_while_identity_2
lstm_344_while_identity_3
lstm_344_while_identity_4
lstm_344_while_identity_5+
'lstm_344_while_lstm_344_strided_slice_1g
clstm_344_while_tensorarrayv2read_tensorlistgetitem_lstm_344_tensorarrayunstack_tensorlistfromtensorL
:lstm_344_while_lstm_cell_98_matmul_readvariableop_resource:2(N
<lstm_344_while_lstm_cell_98_matmul_1_readvariableop_resource:
(I
;lstm_344_while_lstm_cell_98_biasadd_readvariableop_resource:(Ђ2lstm_344/while/lstm_cell_98/BiasAdd/ReadVariableOpЂ1lstm_344/while/lstm_cell_98/MatMul/ReadVariableOpЂ3lstm_344/while/lstm_cell_98/MatMul_1/ReadVariableOp
@lstm_344/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   г
2lstm_344/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_344_while_tensorarrayv2read_tensorlistgetitem_lstm_344_tensorarrayunstack_tensorlistfromtensor_0lstm_344_while_placeholderIlstm_344/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ў
1lstm_344/while/lstm_cell_98/MatMul/ReadVariableOpReadVariableOp<lstm_344_while_lstm_cell_98_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0д
"lstm_344/while/lstm_cell_98/MatMulMatMul9lstm_344/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_344/while/lstm_cell_98/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(В
3lstm_344/while/lstm_cell_98/MatMul_1/ReadVariableOpReadVariableOp>lstm_344_while_lstm_cell_98_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0Л
$lstm_344/while/lstm_cell_98/MatMul_1MatMullstm_344_while_placeholder_2;lstm_344/while/lstm_cell_98/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(И
lstm_344/while/lstm_cell_98/addAddV2,lstm_344/while/lstm_cell_98/MatMul:product:0.lstm_344/while/lstm_cell_98/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(Ќ
2lstm_344/while/lstm_cell_98/BiasAdd/ReadVariableOpReadVariableOp=lstm_344_while_lstm_cell_98_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0С
#lstm_344/while/lstm_cell_98/BiasAddBiasAdd#lstm_344/while/lstm_cell_98/add:z:0:lstm_344/while/lstm_cell_98/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(m
+lstm_344/while/lstm_cell_98/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_344/while/lstm_cell_98/splitSplit4lstm_344/while/lstm_cell_98/split/split_dim:output:0,lstm_344/while/lstm_cell_98/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_split
#lstm_344/while/lstm_cell_98/SigmoidSigmoid*lstm_344/while/lstm_cell_98/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

%lstm_344/while/lstm_cell_98/Sigmoid_1Sigmoid*lstm_344/while/lstm_cell_98/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
Ё
lstm_344/while/lstm_cell_98/mulMul)lstm_344/while/lstm_cell_98/Sigmoid_1:y:0lstm_344_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ

 lstm_344/while/lstm_cell_98/ReluRelu*lstm_344/while/lstm_cell_98/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
Г
!lstm_344/while/lstm_cell_98/mul_1Mul'lstm_344/while/lstm_cell_98/Sigmoid:y:0.lstm_344/while/lstm_cell_98/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ј
!lstm_344/while/lstm_cell_98/add_1AddV2#lstm_344/while/lstm_cell_98/mul:z:0%lstm_344/while/lstm_cell_98/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

%lstm_344/while/lstm_cell_98/Sigmoid_2Sigmoid*lstm_344/while/lstm_cell_98/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ

"lstm_344/while/lstm_cell_98/Relu_1Relu%lstm_344/while/lstm_cell_98/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
З
!lstm_344/while/lstm_cell_98/mul_2Mul)lstm_344/while/lstm_cell_98/Sigmoid_2:y:00lstm_344/while/lstm_cell_98/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
щ
3lstm_344/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_344_while_placeholder_1lstm_344_while_placeholder%lstm_344/while/lstm_cell_98/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвV
lstm_344/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_344/while/addAddV2lstm_344_while_placeholderlstm_344/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_344/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_344/while/add_1AddV2*lstm_344_while_lstm_344_while_loop_counterlstm_344/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_344/while/IdentityIdentitylstm_344/while/add_1:z:0^lstm_344/while/NoOp*
T0*
_output_shapes
: 
lstm_344/while/Identity_1Identity0lstm_344_while_lstm_344_while_maximum_iterations^lstm_344/while/NoOp*
T0*
_output_shapes
: t
lstm_344/while/Identity_2Identitylstm_344/while/add:z:0^lstm_344/while/NoOp*
T0*
_output_shapes
: Ё
lstm_344/while/Identity_3IdentityClstm_344/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_344/while/NoOp*
T0*
_output_shapes
: 
lstm_344/while/Identity_4Identity%lstm_344/while/lstm_cell_98/mul_2:z:0^lstm_344/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_344/while/Identity_5Identity%lstm_344/while/lstm_cell_98/add_1:z:0^lstm_344/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
є
lstm_344/while/NoOpNoOp3^lstm_344/while/lstm_cell_98/BiasAdd/ReadVariableOp2^lstm_344/while/lstm_cell_98/MatMul/ReadVariableOp4^lstm_344/while/lstm_cell_98/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_344_while_identity lstm_344/while/Identity:output:0"?
lstm_344_while_identity_1"lstm_344/while/Identity_1:output:0"?
lstm_344_while_identity_2"lstm_344/while/Identity_2:output:0"?
lstm_344_while_identity_3"lstm_344/while/Identity_3:output:0"?
lstm_344_while_identity_4"lstm_344/while/Identity_4:output:0"?
lstm_344_while_identity_5"lstm_344/while/Identity_5:output:0"T
'lstm_344_while_lstm_344_strided_slice_1)lstm_344_while_lstm_344_strided_slice_1_0"|
;lstm_344_while_lstm_cell_98_biasadd_readvariableop_resource=lstm_344_while_lstm_cell_98_biasadd_readvariableop_resource_0"~
<lstm_344_while_lstm_cell_98_matmul_1_readvariableop_resource>lstm_344_while_lstm_cell_98_matmul_1_readvariableop_resource_0"z
:lstm_344_while_lstm_cell_98_matmul_readvariableop_resource<lstm_344_while_lstm_cell_98_matmul_readvariableop_resource_0"Ь
clstm_344_while_tensorarrayv2read_tensorlistgetitem_lstm_344_tensorarrayunstack_tensorlistfromtensorelstm_344_while_tensorarrayv2read_tensorlistgetitem_lstm_344_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2h
2lstm_344/while/lstm_cell_98/BiasAdd/ReadVariableOp2lstm_344/while/lstm_cell_98/BiasAdd/ReadVariableOp2f
1lstm_344/while/lstm_cell_98/MatMul/ReadVariableOp1lstm_344/while/lstm_cell_98/MatMul/ReadVariableOp2j
3lstm_344/while/lstm_cell_98/MatMul_1/ReadVariableOp3lstm_344/while/lstm_cell_98/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
е

H__inference_lstm_cell_97_layer_call_and_return_conditional_losses_594477

inputs

states
states_11
matmul_readvariableop_resource:	dШ3
 matmul_1_readvariableop_resource:	2Ш.
biasadd_readvariableop_resource:	Ш
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd:џџџџџџџџџ2:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates
Ћ
И
)__inference_lstm_342_layer_call_fn_597104
inputs_0
unknown:	
	unknown_0:	d
	unknown_1:	
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_342_layer_call_and_return_conditional_losses_594255|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
Ы

H__inference_lstm_cell_98_layer_call_and_return_conditional_losses_594827

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ2:џџџџџџџџџ
:џџџџџџџџџ
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_namestates
Ћ
И
)__inference_lstm_342_layer_call_fn_597093
inputs_0
unknown:	
	unknown_0:	d
	unknown_1:	
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_342_layer_call_and_return_conditional_losses_594064|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
м


/__inference_sequential_114_layer_call_fn_596228

inputs
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dШ
	unknown_3:	2Ш
	unknown_4:	Ш
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityЂStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_114_layer_call_and_return_conditional_losses_596027o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ЖT
д
)sequential_114_lstm_342_while_body_593546L
Hsequential_114_lstm_342_while_sequential_114_lstm_342_while_loop_counterR
Nsequential_114_lstm_342_while_sequential_114_lstm_342_while_maximum_iterations-
)sequential_114_lstm_342_while_placeholder/
+sequential_114_lstm_342_while_placeholder_1/
+sequential_114_lstm_342_while_placeholder_2/
+sequential_114_lstm_342_while_placeholder_3K
Gsequential_114_lstm_342_while_sequential_114_lstm_342_strided_slice_1_0
sequential_114_lstm_342_while_tensorarrayv2read_tensorlistgetitem_sequential_114_lstm_342_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_114_lstm_342_while_lstm_cell_96_matmul_readvariableop_resource_0:	`
Msequential_114_lstm_342_while_lstm_cell_96_matmul_1_readvariableop_resource_0:	d[
Lsequential_114_lstm_342_while_lstm_cell_96_biasadd_readvariableop_resource_0:	*
&sequential_114_lstm_342_while_identity,
(sequential_114_lstm_342_while_identity_1,
(sequential_114_lstm_342_while_identity_2,
(sequential_114_lstm_342_while_identity_3,
(sequential_114_lstm_342_while_identity_4,
(sequential_114_lstm_342_while_identity_5I
Esequential_114_lstm_342_while_sequential_114_lstm_342_strided_slice_1
sequential_114_lstm_342_while_tensorarrayv2read_tensorlistgetitem_sequential_114_lstm_342_tensorarrayunstack_tensorlistfromtensor\
Isequential_114_lstm_342_while_lstm_cell_96_matmul_readvariableop_resource:	^
Ksequential_114_lstm_342_while_lstm_cell_96_matmul_1_readvariableop_resource:	dY
Jsequential_114_lstm_342_while_lstm_cell_96_biasadd_readvariableop_resource:	ЂAsequential_114/lstm_342/while/lstm_cell_96/BiasAdd/ReadVariableOpЂ@sequential_114/lstm_342/while/lstm_cell_96/MatMul/ReadVariableOpЂBsequential_114/lstm_342/while/lstm_cell_96/MatMul_1/ReadVariableOp 
Osequential_114/lstm_342/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
Asequential_114/lstm_342/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_114_lstm_342_while_tensorarrayv2read_tensorlistgetitem_sequential_114_lstm_342_tensorarrayunstack_tensorlistfromtensor_0)sequential_114_lstm_342_while_placeholderXsequential_114/lstm_342/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Э
@sequential_114/lstm_342/while/lstm_cell_96/MatMul/ReadVariableOpReadVariableOpKsequential_114_lstm_342_while_lstm_cell_96_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0
1sequential_114/lstm_342/while/lstm_cell_96/MatMulMatMulHsequential_114/lstm_342/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_114/lstm_342/while/lstm_cell_96/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџб
Bsequential_114/lstm_342/while/lstm_cell_96/MatMul_1/ReadVariableOpReadVariableOpMsequential_114_lstm_342_while_lstm_cell_96_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0щ
3sequential_114/lstm_342/while/lstm_cell_96/MatMul_1MatMul+sequential_114_lstm_342_while_placeholder_2Jsequential_114/lstm_342/while/lstm_cell_96/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџц
.sequential_114/lstm_342/while/lstm_cell_96/addAddV2;sequential_114/lstm_342/while/lstm_cell_96/MatMul:product:0=sequential_114/lstm_342/while/lstm_cell_96/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџЫ
Asequential_114/lstm_342/while/lstm_cell_96/BiasAdd/ReadVariableOpReadVariableOpLsequential_114_lstm_342_while_lstm_cell_96_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0я
2sequential_114/lstm_342/while/lstm_cell_96/BiasAddBiasAdd2sequential_114/lstm_342/while/lstm_cell_96/add:z:0Isequential_114/lstm_342/while/lstm_cell_96/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ|
:sequential_114/lstm_342/while/lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :З
0sequential_114/lstm_342/while/lstm_cell_96/splitSplitCsequential_114/lstm_342/while/lstm_cell_96/split/split_dim:output:0;sequential_114/lstm_342/while/lstm_cell_96/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitЊ
2sequential_114/lstm_342/while/lstm_cell_96/SigmoidSigmoid9sequential_114/lstm_342/while/lstm_cell_96/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdЌ
4sequential_114/lstm_342/while/lstm_cell_96/Sigmoid_1Sigmoid9sequential_114/lstm_342/while/lstm_cell_96/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdЮ
.sequential_114/lstm_342/while/lstm_cell_96/mulMul8sequential_114/lstm_342/while/lstm_cell_96/Sigmoid_1:y:0+sequential_114_lstm_342_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdЄ
/sequential_114/lstm_342/while/lstm_cell_96/ReluRelu9sequential_114/lstm_342/while/lstm_cell_96/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdр
0sequential_114/lstm_342/while/lstm_cell_96/mul_1Mul6sequential_114/lstm_342/while/lstm_cell_96/Sigmoid:y:0=sequential_114/lstm_342/while/lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdе
0sequential_114/lstm_342/while/lstm_cell_96/add_1AddV22sequential_114/lstm_342/while/lstm_cell_96/mul:z:04sequential_114/lstm_342/while/lstm_cell_96/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdЌ
4sequential_114/lstm_342/while/lstm_cell_96/Sigmoid_2Sigmoid9sequential_114/lstm_342/while/lstm_cell_96/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdЁ
1sequential_114/lstm_342/while/lstm_cell_96/Relu_1Relu4sequential_114/lstm_342/while/lstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdф
0sequential_114/lstm_342/while/lstm_cell_96/mul_2Mul8sequential_114/lstm_342/while/lstm_cell_96/Sigmoid_2:y:0?sequential_114/lstm_342/while/lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdЅ
Bsequential_114/lstm_342/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_114_lstm_342_while_placeholder_1)sequential_114_lstm_342_while_placeholder4sequential_114/lstm_342/while/lstm_cell_96/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвe
#sequential_114/lstm_342/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Є
!sequential_114/lstm_342/while/addAddV2)sequential_114_lstm_342_while_placeholder,sequential_114/lstm_342/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_114/lstm_342/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ч
#sequential_114/lstm_342/while/add_1AddV2Hsequential_114_lstm_342_while_sequential_114_lstm_342_while_loop_counter.sequential_114/lstm_342/while/add_1/y:output:0*
T0*
_output_shapes
: Ё
&sequential_114/lstm_342/while/IdentityIdentity'sequential_114/lstm_342/while/add_1:z:0#^sequential_114/lstm_342/while/NoOp*
T0*
_output_shapes
: Ъ
(sequential_114/lstm_342/while/Identity_1IdentityNsequential_114_lstm_342_while_sequential_114_lstm_342_while_maximum_iterations#^sequential_114/lstm_342/while/NoOp*
T0*
_output_shapes
: Ё
(sequential_114/lstm_342/while/Identity_2Identity%sequential_114/lstm_342/while/add:z:0#^sequential_114/lstm_342/while/NoOp*
T0*
_output_shapes
: Ю
(sequential_114/lstm_342/while/Identity_3IdentityRsequential_114/lstm_342/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_114/lstm_342/while/NoOp*
T0*
_output_shapes
: С
(sequential_114/lstm_342/while/Identity_4Identity4sequential_114/lstm_342/while/lstm_cell_96/mul_2:z:0#^sequential_114/lstm_342/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdС
(sequential_114/lstm_342/while/Identity_5Identity4sequential_114/lstm_342/while/lstm_cell_96/add_1:z:0#^sequential_114/lstm_342/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdА
"sequential_114/lstm_342/while/NoOpNoOpB^sequential_114/lstm_342/while/lstm_cell_96/BiasAdd/ReadVariableOpA^sequential_114/lstm_342/while/lstm_cell_96/MatMul/ReadVariableOpC^sequential_114/lstm_342/while/lstm_cell_96/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_114_lstm_342_while_identity/sequential_114/lstm_342/while/Identity:output:0"]
(sequential_114_lstm_342_while_identity_11sequential_114/lstm_342/while/Identity_1:output:0"]
(sequential_114_lstm_342_while_identity_21sequential_114/lstm_342/while/Identity_2:output:0"]
(sequential_114_lstm_342_while_identity_31sequential_114/lstm_342/while/Identity_3:output:0"]
(sequential_114_lstm_342_while_identity_41sequential_114/lstm_342/while/Identity_4:output:0"]
(sequential_114_lstm_342_while_identity_51sequential_114/lstm_342/while/Identity_5:output:0"
Jsequential_114_lstm_342_while_lstm_cell_96_biasadd_readvariableop_resourceLsequential_114_lstm_342_while_lstm_cell_96_biasadd_readvariableop_resource_0"
Ksequential_114_lstm_342_while_lstm_cell_96_matmul_1_readvariableop_resourceMsequential_114_lstm_342_while_lstm_cell_96_matmul_1_readvariableop_resource_0"
Isequential_114_lstm_342_while_lstm_cell_96_matmul_readvariableop_resourceKsequential_114_lstm_342_while_lstm_cell_96_matmul_readvariableop_resource_0"
Esequential_114_lstm_342_while_sequential_114_lstm_342_strided_slice_1Gsequential_114_lstm_342_while_sequential_114_lstm_342_strided_slice_1_0"
sequential_114_lstm_342_while_tensorarrayv2read_tensorlistgetitem_sequential_114_lstm_342_tensorarrayunstack_tensorlistfromtensorsequential_114_lstm_342_while_tensorarrayv2read_tensorlistgetitem_sequential_114_lstm_342_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2
Asequential_114/lstm_342/while/lstm_cell_96/BiasAdd/ReadVariableOpAsequential_114/lstm_342/while/lstm_cell_96/BiasAdd/ReadVariableOp2
@sequential_114/lstm_342/while/lstm_cell_96/MatMul/ReadVariableOp@sequential_114/lstm_342/while/lstm_cell_96/MatMul/ReadVariableOp2
Bsequential_114/lstm_342/while/lstm_cell_96/MatMul_1/ReadVariableOpBsequential_114/lstm_342/while/lstm_cell_96/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
є

Ѓ
/__inference_sequential_114_layer_call_fn_595463
lstm_342_input
unknown:	
	unknown_0:	d
	unknown_1:	
	unknown_2:	dШ
	unknown_3:	2Ш
	unknown_4:	Ш
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityЂStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCalllstm_342_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_114_layer_call_and_return_conditional_losses_595438o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:џџџџџџџџџ
(
_user_specified_namelstm_342_input
ЄJ

D__inference_lstm_343_layer_call_and_return_conditional_losses_598171

inputs>
+lstm_cell_97_matmul_readvariableop_resource:	dШ@
-lstm_cell_97_matmul_1_readvariableop_resource:	2Ш;
,lstm_cell_97_biasadd_readvariableop_resource:	Ш
identityЂ#lstm_cell_97/BiasAdd/ReadVariableOpЂ"lstm_cell_97/MatMul/ReadVariableOpЂ$lstm_cell_97/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџ2R
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
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask
"lstm_cell_97/MatMul/ReadVariableOpReadVariableOp+lstm_cell_97_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0
lstm_cell_97/MatMulMatMulstrided_slice_2:output:0*lstm_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_97/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_97_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_97/MatMul_1MatMulzeros:output:0,lstm_cell_97/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_97/addAddV2lstm_cell_97/MatMul:product:0lstm_cell_97/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
#lstm_cell_97/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_97_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_97/BiasAddBiasAddlstm_cell_97/add:z:0+lstm_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_97/splitSplit%lstm_cell_97/split/split_dim:output:0lstm_cell_97/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitn
lstm_cell_97/SigmoidSigmoidlstm_cell_97/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_97/Sigmoid_1Sigmoidlstm_cell_97/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_cell_97/mulMullstm_cell_97/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
lstm_cell_97/ReluRelulstm_cell_97/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_97/mul_1Mullstm_cell_97/Sigmoid:y:0lstm_cell_97/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2{
lstm_cell_97/add_1AddV2lstm_cell_97/mul:z:0lstm_cell_97/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_97/Sigmoid_2Sigmoidlstm_cell_97/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2e
lstm_cell_97/Relu_1Relulstm_cell_97/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_97/mul_2Mullstm_cell_97/Sigmoid_2:y:0!lstm_cell_97/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_97_matmul_readvariableop_resource-lstm_cell_97_matmul_1_readvariableop_resource,lstm_cell_97_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_598087*
condR
while_cond_598086*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2Р
NoOpNoOp$^lstm_cell_97/BiasAdd/ReadVariableOp#^lstm_cell_97/MatMul/ReadVariableOp%^lstm_cell_97/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџd: : : 2J
#lstm_cell_97/BiasAdd/ReadVariableOp#lstm_cell_97/BiasAdd/ReadVariableOp2H
"lstm_cell_97/MatMul/ReadVariableOp"lstm_cell_97/MatMul/ReadVariableOp2L
$lstm_cell_97/MatMul_1/ReadVariableOp$lstm_cell_97/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
дJ

D__inference_lstm_344_layer_call_and_return_conditional_losses_598501
inputs_0=
+lstm_cell_98_matmul_readvariableop_resource:2(?
-lstm_cell_98_matmul_1_readvariableop_resource:
(:
,lstm_cell_98_biasadd_readvariableop_resource:(
identityЂ#lstm_cell_98/BiasAdd/ReadVariableOpЂ"lstm_cell_98/MatMul/ReadVariableOpЂ$lstm_cell_98/MatMul_1/ReadVariableOpЂwhile=
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
valueB:б
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
:џџџџџџџџџ
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
:џџџџџџџџџ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2D
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
"lstm_cell_98/MatMul/ReadVariableOpReadVariableOp+lstm_cell_98_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_98/MatMulMatMulstrided_slice_2:output:0*lstm_cell_98/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
$lstm_cell_98/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_98_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_98/MatMul_1MatMulzeros:output:0,lstm_cell_98/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell_98/addAddV2lstm_cell_98/MatMul:product:0lstm_cell_98/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
#lstm_cell_98/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_98_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_98/BiasAddBiasAddlstm_cell_98/add:z:0+lstm_cell_98/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(^
lstm_cell_98/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_98/splitSplit%lstm_cell_98/split/split_dim:output:0lstm_cell_98/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitn
lstm_cell_98/SigmoidSigmoidlstm_cell_98/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_98/Sigmoid_1Sigmoidlstm_cell_98/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell_98/mulMullstm_cell_98/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
h
lstm_cell_98/ReluRelulstm_cell_98/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_98/mul_1Mullstm_cell_98/Sigmoid:y:0lstm_cell_98/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
{
lstm_cell_98/add_1AddV2lstm_cell_98/mul:z:0lstm_cell_98/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_98/Sigmoid_2Sigmoidlstm_cell_98/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
e
lstm_cell_98/Relu_1Relulstm_cell_98/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_98/mul_2Mullstm_cell_98/Sigmoid_2:y:0!lstm_cell_98/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_98_matmul_readvariableop_resource-lstm_cell_98_matmul_1_readvariableop_resource,lstm_cell_98_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_598417*
condR
while_cond_598416*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
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
:џџџџџџџџџ
Р
NoOpNoOp$^lstm_cell_98/BiasAdd/ReadVariableOp#^lstm_cell_98/MatMul/ReadVariableOp%^lstm_cell_98/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2J
#lstm_cell_98/BiasAdd/ReadVariableOp#lstm_cell_98/BiasAdd/ReadVariableOp2H
"lstm_cell_98/MatMul/ReadVariableOp"lstm_cell_98/MatMul/ReadVariableOp2L
$lstm_cell_98/MatMul_1/ReadVariableOp$lstm_cell_98/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs/0
р"
н
while_body_594695
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_98_594719_0:2(-
while_lstm_cell_98_594721_0:
()
while_lstm_cell_98_594723_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_98_594719:2(+
while_lstm_cell_98_594721:
('
while_lstm_cell_98_594723:(Ђ*while/lstm_cell_98/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Г
*while/lstm_cell_98/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_98_594719_0while_lstm_cell_98_594721_0while_lstm_cell_98_594723_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_98_layer_call_and_return_conditional_losses_594681м
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_98/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_98/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

while/Identity_5Identity3while/lstm_cell_98/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
y

while/NoOpNoOp+^while/lstm_cell_98/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_98_594719while_lstm_cell_98_594719_0"8
while_lstm_cell_98_594721while_lstm_cell_98_594721_0"8
while_lstm_cell_98_594723while_lstm_cell_98_594723_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2X
*while/lstm_cell_98/StatefulPartitionedCall*while/lstm_cell_98/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
н

H__inference_lstm_cell_97_layer_call_and_return_conditional_losses_599113

inputs
states_0
states_11
matmul_readvariableop_resource:	dШ3
 matmul_1_readvariableop_resource:	2Ш.
biasadd_readvariableop_resource:	Ш
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd:џџџџџџџџџ2:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/1
џ7
Ъ
while_body_598703
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_98_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_98_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_98_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_98_matmul_readvariableop_resource:2(E
3while_lstm_cell_98_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_98_biasadd_readvariableop_resource:(Ђ)while/lstm_cell_98/BiasAdd/ReadVariableOpЂ(while/lstm_cell_98/MatMul/ReadVariableOpЂ*while/lstm_cell_98/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
(while/lstm_cell_98/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_98_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Й
while/lstm_cell_98/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_98/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ( 
*while/lstm_cell_98/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_98_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_98/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_98/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
while/lstm_cell_98/addAddV2#while/lstm_cell_98/MatMul:product:0%while/lstm_cell_98/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
)while/lstm_cell_98/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_98_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0І
while/lstm_cell_98/BiasAddBiasAddwhile/lstm_cell_98/add:z:01while/lstm_cell_98/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
"while/lstm_cell_98/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_98/splitSplit+while/lstm_cell_98/split/split_dim:output:0#while/lstm_cell_98/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitz
while/lstm_cell_98/SigmoidSigmoid!while/lstm_cell_98/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_98/Sigmoid_1Sigmoid!while/lstm_cell_98/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_98/mulMul while/lstm_cell_98/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
t
while/lstm_cell_98/ReluRelu!while/lstm_cell_98/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_98/mul_1Mulwhile/lstm_cell_98/Sigmoid:y:0%while/lstm_cell_98/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_98/add_1AddV2while/lstm_cell_98/mul:z:0while/lstm_cell_98/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_98/Sigmoid_2Sigmoid!while/lstm_cell_98/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
q
while/lstm_cell_98/Relu_1Reluwhile/lstm_cell_98/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_98/mul_2Mul while/lstm_cell_98/Sigmoid_2:y:0'while/lstm_cell_98/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_98/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_98/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
y
while/Identity_5Identitywhile/lstm_cell_98/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
а

while/NoOpNoOp*^while/lstm_cell_98/BiasAdd/ReadVariableOp)^while/lstm_cell_98/MatMul/ReadVariableOp+^while/lstm_cell_98/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_98_biasadd_readvariableop_resource4while_lstm_cell_98_biasadd_readvariableop_resource_0"l
3while_lstm_cell_98_matmul_1_readvariableop_resource5while_lstm_cell_98_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_98_matmul_readvariableop_resource3while_lstm_cell_98_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2V
)while/lstm_cell_98/BiasAdd/ReadVariableOp)while/lstm_cell_98/BiasAdd/ReadVariableOp2T
(while/lstm_cell_98/MatMul/ReadVariableOp(while/lstm_cell_98/MatMul/ReadVariableOp2X
*while/lstm_cell_98/MatMul_1/ReadVariableOp*while/lstm_cell_98/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
е

H__inference_lstm_cell_96_layer_call_and_return_conditional_losses_594127

inputs

states
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates
ы
і
-__inference_lstm_cell_96_layer_call_fn_598966

inputs
states_0
states_1
unknown:	
	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2ЂStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_96_layer_call_and_return_conditional_losses_593981o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/1
ЄJ

D__inference_lstm_343_layer_call_and_return_conditional_losses_595794

inputs>
+lstm_cell_97_matmul_readvariableop_resource:	dШ@
-lstm_cell_97_matmul_1_readvariableop_resource:	2Ш;
,lstm_cell_97_biasadd_readvariableop_resource:	Ш
identityЂ#lstm_cell_97/BiasAdd/ReadVariableOpЂ"lstm_cell_97/MatMul/ReadVariableOpЂ$lstm_cell_97/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџ2R
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
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask
"lstm_cell_97/MatMul/ReadVariableOpReadVariableOp+lstm_cell_97_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0
lstm_cell_97/MatMulMatMulstrided_slice_2:output:0*lstm_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_97/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_97_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_97/MatMul_1MatMulzeros:output:0,lstm_cell_97/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_97/addAddV2lstm_cell_97/MatMul:product:0lstm_cell_97/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
#lstm_cell_97/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_97_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_97/BiasAddBiasAddlstm_cell_97/add:z:0+lstm_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_97/splitSplit%lstm_cell_97/split/split_dim:output:0lstm_cell_97/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitn
lstm_cell_97/SigmoidSigmoidlstm_cell_97/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_97/Sigmoid_1Sigmoidlstm_cell_97/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_cell_97/mulMullstm_cell_97/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
lstm_cell_97/ReluRelulstm_cell_97/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_97/mul_1Mullstm_cell_97/Sigmoid:y:0lstm_cell_97/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2{
lstm_cell_97/add_1AddV2lstm_cell_97/mul:z:0lstm_cell_97/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_97/Sigmoid_2Sigmoidlstm_cell_97/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2e
lstm_cell_97/Relu_1Relulstm_cell_97/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_97/mul_2Mullstm_cell_97/Sigmoid_2:y:0!lstm_cell_97/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_97_matmul_readvariableop_resource-lstm_cell_97_matmul_1_readvariableop_resource,lstm_cell_97_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_595710*
condR
while_cond_595709*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2Р
NoOpNoOp$^lstm_cell_97/BiasAdd/ReadVariableOp#^lstm_cell_97/MatMul/ReadVariableOp%^lstm_cell_97/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџd: : : 2J
#lstm_cell_97/BiasAdd/ReadVariableOp#lstm_cell_97/BiasAdd/ReadVariableOp2H
"lstm_cell_97/MatMul/ReadVariableOp"lstm_cell_97/MatMul/ReadVariableOp2L
$lstm_cell_97/MatMul_1/ReadVariableOp$lstm_cell_97/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
J

D__inference_lstm_344_layer_call_and_return_conditional_losses_598930

inputs=
+lstm_cell_98_matmul_readvariableop_resource:2(?
-lstm_cell_98_matmul_1_readvariableop_resource:
(:
,lstm_cell_98_biasadd_readvariableop_resource:(
identityЂ#lstm_cell_98/BiasAdd/ReadVariableOpЂ"lstm_cell_98/MatMul/ReadVariableOpЂ$lstm_cell_98/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџ
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
:џџџџџџџџџ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2D
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
"lstm_cell_98/MatMul/ReadVariableOpReadVariableOp+lstm_cell_98_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_98/MatMulMatMulstrided_slice_2:output:0*lstm_cell_98/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
$lstm_cell_98/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_98_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_98/MatMul_1MatMulzeros:output:0,lstm_cell_98/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell_98/addAddV2lstm_cell_98/MatMul:product:0lstm_cell_98/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
#lstm_cell_98/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_98_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_98/BiasAddBiasAddlstm_cell_98/add:z:0+lstm_cell_98/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(^
lstm_cell_98/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_98/splitSplit%lstm_cell_98/split/split_dim:output:0lstm_cell_98/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitn
lstm_cell_98/SigmoidSigmoidlstm_cell_98/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_98/Sigmoid_1Sigmoidlstm_cell_98/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell_98/mulMullstm_cell_98/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
h
lstm_cell_98/ReluRelulstm_cell_98/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_98/mul_1Mullstm_cell_98/Sigmoid:y:0lstm_cell_98/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
{
lstm_cell_98/add_1AddV2lstm_cell_98/mul:z:0lstm_cell_98/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_98/Sigmoid_2Sigmoidlstm_cell_98/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
e
lstm_cell_98/Relu_1Relulstm_cell_98/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_98/mul_2Mullstm_cell_98/Sigmoid_2:y:0!lstm_cell_98/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_98_matmul_readvariableop_resource-lstm_cell_98_matmul_1_readvariableop_resource,lstm_cell_98_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_598846*
condR
while_cond_598845*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
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
:џџџџџџџџџ
Р
NoOpNoOp$^lstm_cell_98/BiasAdd/ReadVariableOp#^lstm_cell_98/MatMul/ReadVariableOp%^lstm_cell_98/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2J
#lstm_cell_98/BiasAdd/ReadVariableOp#lstm_cell_98/BiasAdd/ReadVariableOp2H
"lstm_cell_98/MatMul/ReadVariableOp"lstm_cell_98/MatMul/ReadVariableOp2L
$lstm_cell_98/MatMul_1/ReadVariableOp$lstm_cell_98/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
ЉT
Ю
)sequential_114_lstm_344_while_body_593824L
Hsequential_114_lstm_344_while_sequential_114_lstm_344_while_loop_counterR
Nsequential_114_lstm_344_while_sequential_114_lstm_344_while_maximum_iterations-
)sequential_114_lstm_344_while_placeholder/
+sequential_114_lstm_344_while_placeholder_1/
+sequential_114_lstm_344_while_placeholder_2/
+sequential_114_lstm_344_while_placeholder_3K
Gsequential_114_lstm_344_while_sequential_114_lstm_344_strided_slice_1_0
sequential_114_lstm_344_while_tensorarrayv2read_tensorlistgetitem_sequential_114_lstm_344_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_114_lstm_344_while_lstm_cell_98_matmul_readvariableop_resource_0:2(_
Msequential_114_lstm_344_while_lstm_cell_98_matmul_1_readvariableop_resource_0:
(Z
Lsequential_114_lstm_344_while_lstm_cell_98_biasadd_readvariableop_resource_0:(*
&sequential_114_lstm_344_while_identity,
(sequential_114_lstm_344_while_identity_1,
(sequential_114_lstm_344_while_identity_2,
(sequential_114_lstm_344_while_identity_3,
(sequential_114_lstm_344_while_identity_4,
(sequential_114_lstm_344_while_identity_5I
Esequential_114_lstm_344_while_sequential_114_lstm_344_strided_slice_1
sequential_114_lstm_344_while_tensorarrayv2read_tensorlistgetitem_sequential_114_lstm_344_tensorarrayunstack_tensorlistfromtensor[
Isequential_114_lstm_344_while_lstm_cell_98_matmul_readvariableop_resource:2(]
Ksequential_114_lstm_344_while_lstm_cell_98_matmul_1_readvariableop_resource:
(X
Jsequential_114_lstm_344_while_lstm_cell_98_biasadd_readvariableop_resource:(ЂAsequential_114/lstm_344/while/lstm_cell_98/BiasAdd/ReadVariableOpЂ@sequential_114/lstm_344/while/lstm_cell_98/MatMul/ReadVariableOpЂBsequential_114/lstm_344/while/lstm_cell_98/MatMul_1/ReadVariableOp 
Osequential_114/lstm_344/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   
Asequential_114/lstm_344/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_114_lstm_344_while_tensorarrayv2read_tensorlistgetitem_sequential_114_lstm_344_tensorarrayunstack_tensorlistfromtensor_0)sequential_114_lstm_344_while_placeholderXsequential_114/lstm_344/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ь
@sequential_114/lstm_344/while/lstm_cell_98/MatMul/ReadVariableOpReadVariableOpKsequential_114_lstm_344_while_lstm_cell_98_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0
1sequential_114/lstm_344/while/lstm_cell_98/MatMulMatMulHsequential_114/lstm_344/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_114/lstm_344/while/lstm_cell_98/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(а
Bsequential_114/lstm_344/while/lstm_cell_98/MatMul_1/ReadVariableOpReadVariableOpMsequential_114_lstm_344_while_lstm_cell_98_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ш
3sequential_114/lstm_344/while/lstm_cell_98/MatMul_1MatMul+sequential_114_lstm_344_while_placeholder_2Jsequential_114/lstm_344/while/lstm_cell_98/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(х
.sequential_114/lstm_344/while/lstm_cell_98/addAddV2;sequential_114/lstm_344/while/lstm_cell_98/MatMul:product:0=sequential_114/lstm_344/while/lstm_cell_98/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(Ъ
Asequential_114/lstm_344/while/lstm_cell_98/BiasAdd/ReadVariableOpReadVariableOpLsequential_114_lstm_344_while_lstm_cell_98_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0ю
2sequential_114/lstm_344/while/lstm_cell_98/BiasAddBiasAdd2sequential_114/lstm_344/while/lstm_cell_98/add:z:0Isequential_114/lstm_344/while/lstm_cell_98/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(|
:sequential_114/lstm_344/while/lstm_cell_98/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :З
0sequential_114/lstm_344/while/lstm_cell_98/splitSplitCsequential_114/lstm_344/while/lstm_cell_98/split/split_dim:output:0;sequential_114/lstm_344/while/lstm_cell_98/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitЊ
2sequential_114/lstm_344/while/lstm_cell_98/SigmoidSigmoid9sequential_114/lstm_344/while/lstm_cell_98/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ќ
4sequential_114/lstm_344/while/lstm_cell_98/Sigmoid_1Sigmoid9sequential_114/lstm_344/while/lstm_cell_98/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
Ю
.sequential_114/lstm_344/while/lstm_cell_98/mulMul8sequential_114/lstm_344/while/lstm_cell_98/Sigmoid_1:y:0+sequential_114_lstm_344_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
Є
/sequential_114/lstm_344/while/lstm_cell_98/ReluRelu9sequential_114/lstm_344/while/lstm_cell_98/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
р
0sequential_114/lstm_344/while/lstm_cell_98/mul_1Mul6sequential_114/lstm_344/while/lstm_cell_98/Sigmoid:y:0=sequential_114/lstm_344/while/lstm_cell_98/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
е
0sequential_114/lstm_344/while/lstm_cell_98/add_1AddV22sequential_114/lstm_344/while/lstm_cell_98/mul:z:04sequential_114/lstm_344/while/lstm_cell_98/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ќ
4sequential_114/lstm_344/while/lstm_cell_98/Sigmoid_2Sigmoid9sequential_114/lstm_344/while/lstm_cell_98/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
Ё
1sequential_114/lstm_344/while/lstm_cell_98/Relu_1Relu4sequential_114/lstm_344/while/lstm_cell_98/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
ф
0sequential_114/lstm_344/while/lstm_cell_98/mul_2Mul8sequential_114/lstm_344/while/lstm_cell_98/Sigmoid_2:y:0?sequential_114/lstm_344/while/lstm_cell_98/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ѕ
Bsequential_114/lstm_344/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_114_lstm_344_while_placeholder_1)sequential_114_lstm_344_while_placeholder4sequential_114/lstm_344/while/lstm_cell_98/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвe
#sequential_114/lstm_344/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Є
!sequential_114/lstm_344/while/addAddV2)sequential_114_lstm_344_while_placeholder,sequential_114/lstm_344/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_114/lstm_344/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ч
#sequential_114/lstm_344/while/add_1AddV2Hsequential_114_lstm_344_while_sequential_114_lstm_344_while_loop_counter.sequential_114/lstm_344/while/add_1/y:output:0*
T0*
_output_shapes
: Ё
&sequential_114/lstm_344/while/IdentityIdentity'sequential_114/lstm_344/while/add_1:z:0#^sequential_114/lstm_344/while/NoOp*
T0*
_output_shapes
: Ъ
(sequential_114/lstm_344/while/Identity_1IdentityNsequential_114_lstm_344_while_sequential_114_lstm_344_while_maximum_iterations#^sequential_114/lstm_344/while/NoOp*
T0*
_output_shapes
: Ё
(sequential_114/lstm_344/while/Identity_2Identity%sequential_114/lstm_344/while/add:z:0#^sequential_114/lstm_344/while/NoOp*
T0*
_output_shapes
: Ю
(sequential_114/lstm_344/while/Identity_3IdentityRsequential_114/lstm_344/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_114/lstm_344/while/NoOp*
T0*
_output_shapes
: С
(sequential_114/lstm_344/while/Identity_4Identity4sequential_114/lstm_344/while/lstm_cell_98/mul_2:z:0#^sequential_114/lstm_344/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
С
(sequential_114/lstm_344/while/Identity_5Identity4sequential_114/lstm_344/while/lstm_cell_98/add_1:z:0#^sequential_114/lstm_344/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
А
"sequential_114/lstm_344/while/NoOpNoOpB^sequential_114/lstm_344/while/lstm_cell_98/BiasAdd/ReadVariableOpA^sequential_114/lstm_344/while/lstm_cell_98/MatMul/ReadVariableOpC^sequential_114/lstm_344/while/lstm_cell_98/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_114_lstm_344_while_identity/sequential_114/lstm_344/while/Identity:output:0"]
(sequential_114_lstm_344_while_identity_11sequential_114/lstm_344/while/Identity_1:output:0"]
(sequential_114_lstm_344_while_identity_21sequential_114/lstm_344/while/Identity_2:output:0"]
(sequential_114_lstm_344_while_identity_31sequential_114/lstm_344/while/Identity_3:output:0"]
(sequential_114_lstm_344_while_identity_41sequential_114/lstm_344/while/Identity_4:output:0"]
(sequential_114_lstm_344_while_identity_51sequential_114/lstm_344/while/Identity_5:output:0"
Jsequential_114_lstm_344_while_lstm_cell_98_biasadd_readvariableop_resourceLsequential_114_lstm_344_while_lstm_cell_98_biasadd_readvariableop_resource_0"
Ksequential_114_lstm_344_while_lstm_cell_98_matmul_1_readvariableop_resourceMsequential_114_lstm_344_while_lstm_cell_98_matmul_1_readvariableop_resource_0"
Isequential_114_lstm_344_while_lstm_cell_98_matmul_readvariableop_resourceKsequential_114_lstm_344_while_lstm_cell_98_matmul_readvariableop_resource_0"
Esequential_114_lstm_344_while_sequential_114_lstm_344_strided_slice_1Gsequential_114_lstm_344_while_sequential_114_lstm_344_strided_slice_1_0"
sequential_114_lstm_344_while_tensorarrayv2read_tensorlistgetitem_sequential_114_lstm_344_tensorarrayunstack_tensorlistfromtensorsequential_114_lstm_344_while_tensorarrayv2read_tensorlistgetitem_sequential_114_lstm_344_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2
Asequential_114/lstm_344/while/lstm_cell_98/BiasAdd/ReadVariableOpAsequential_114/lstm_344/while/lstm_cell_98/BiasAdd/ReadVariableOp2
@sequential_114/lstm_344/while/lstm_cell_98/MatMul/ReadVariableOp@sequential_114/lstm_344/while/lstm_cell_98/MatMul/ReadVariableOp2
Bsequential_114/lstm_344/while/lstm_cell_98/MatMul_1/ReadVariableOpBsequential_114/lstm_344/while/lstm_cell_98/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
Е
У
while_cond_598229
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_598229___redundant_placeholder04
0while_while_cond_598229___redundant_placeholder14
0while_while_cond_598229___redundant_placeholder24
0while_while_cond_598229___redundant_placeholder3
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
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
В

ї
lstm_342_while_cond_596713.
*lstm_342_while_lstm_342_while_loop_counter4
0lstm_342_while_lstm_342_while_maximum_iterations
lstm_342_while_placeholder 
lstm_342_while_placeholder_1 
lstm_342_while_placeholder_2 
lstm_342_while_placeholder_30
,lstm_342_while_less_lstm_342_strided_slice_1F
Blstm_342_while_lstm_342_while_cond_596713___redundant_placeholder0F
Blstm_342_while_lstm_342_while_cond_596713___redundant_placeholder1F
Blstm_342_while_lstm_342_while_cond_596713___redundant_placeholder2F
Blstm_342_while_lstm_342_while_cond_596713___redundant_placeholder3
lstm_342_while_identity

lstm_342/while/LessLesslstm_342_while_placeholder,lstm_342_while_less_lstm_342_strided_slice_1*
T0*
_output_shapes
: ]
lstm_342/while/IdentityIdentitylstm_342/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_342_while_identity lstm_342/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
е

H__inference_lstm_cell_97_layer_call_and_return_conditional_losses_594331

inputs

states
states_11
matmul_readvariableop_resource:	dШ3
 matmul_1_readvariableop_resource:	2Ш.
biasadd_readvariableop_resource:	Ш
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd:џџџџџџџџџ2:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates
Ћ
И
)__inference_lstm_343_layer_call_fn_597709
inputs_0
unknown:	dШ
	unknown_0:	2Ш
	unknown_1:	Ш
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_343_layer_call_and_return_conditional_losses_594414|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd
"
_user_specified_name
inputs/0
ш
ѓ
-__inference_lstm_cell_98_layer_call_fn_599162

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2ЂStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_98_layer_call_and_return_conditional_losses_594681o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
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
?:џџџџџџџџџ2:џџџџџџџџџ
:џџџџџџџџџ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ

"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ

"
_user_specified_name
states/1
ш
ѓ
-__inference_lstm_cell_98_layer_call_fn_599179

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2ЂStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_98_layer_call_and_return_conditional_losses_594827o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
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
?:џџџџџџџџџ2:џџџџџџџџџ
:џџџџџџџџџ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ

"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ

"
_user_specified_name
states/1
8
а
while_body_598230
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_97_matmul_readvariableop_resource_0:	dШH
5while_lstm_cell_97_matmul_1_readvariableop_resource_0:	2ШC
4while_lstm_cell_97_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_97_matmul_readvariableop_resource:	dШF
3while_lstm_cell_97_matmul_1_readvariableop_resource:	2ШA
2while_lstm_cell_97_biasadd_readvariableop_resource:	ШЂ)while/lstm_cell_97/BiasAdd/ReadVariableOpЂ(while/lstm_cell_97/MatMul/ReadVariableOpЂ*while/lstm_cell_97/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0
(while/lstm_cell_97/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_97_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0К
while/lstm_cell_97/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
*while/lstm_cell_97/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_97_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ё
while/lstm_cell_97/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_97/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_97/addAddV2#while/lstm_cell_97/MatMul:product:0%while/lstm_cell_97/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
)while/lstm_cell_97/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_97_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ї
while/lstm_cell_97/BiasAddBiasAddwhile/lstm_cell_97/add:z:01while/lstm_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШd
"while/lstm_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_97/splitSplit+while/lstm_cell_97/split/split_dim:output:0#while/lstm_cell_97/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitz
while/lstm_cell_97/SigmoidSigmoid!while/lstm_cell_97/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_97/Sigmoid_1Sigmoid!while/lstm_cell_97/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_97/mulMul while/lstm_cell_97/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2t
while/lstm_cell_97/ReluRelu!while/lstm_cell_97/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_97/mul_1Mulwhile/lstm_cell_97/Sigmoid:y:0%while/lstm_cell_97/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_97/add_1AddV2while/lstm_cell_97/mul:z:0while/lstm_cell_97/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_97/Sigmoid_2Sigmoid!while/lstm_cell_97/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2q
while/lstm_cell_97/Relu_1Reluwhile/lstm_cell_97/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_97/mul_2Mul while/lstm_cell_97/Sigmoid_2:y:0'while/lstm_cell_97/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_97/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_97/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y
while/Identity_5Identitywhile/lstm_cell_97/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2а

while/NoOpNoOp*^while/lstm_cell_97/BiasAdd/ReadVariableOp)^while/lstm_cell_97/MatMul/ReadVariableOp+^while/lstm_cell_97/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_97_biasadd_readvariableop_resource4while_lstm_cell_97_biasadd_readvariableop_resource_0"l
3while_lstm_cell_97_matmul_1_readvariableop_resource5while_lstm_cell_97_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_97_matmul_readvariableop_resource3while_lstm_cell_97_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2V
)while/lstm_cell_97/BiasAdd/ReadVariableOp)while/lstm_cell_97/BiasAdd/ReadVariableOp2T
(while/lstm_cell_97/MatMul/ReadVariableOp(while/lstm_cell_97/MatMul/ReadVariableOp2X
*while/lstm_cell_97/MatMul_1/ReadVariableOp*while/lstm_cell_97/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
ЄJ

D__inference_lstm_342_layer_call_and_return_conditional_losses_597555

inputs>
+lstm_cell_96_matmul_readvariableop_resource:	@
-lstm_cell_96_matmul_1_readvariableop_resource:	d;
,lstm_cell_96_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_96/BiasAdd/ReadVariableOpЂ"lstm_cell_96/MatMul/ReadVariableOpЂ$lstm_cell_96/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџdR
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
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_96/MatMul/ReadVariableOpReadVariableOp+lstm_cell_96_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_96/MatMulMatMulstrided_slice_2:output:0*lstm_cell_96/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_96/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_96_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_96/MatMul_1MatMulzeros:output:0,lstm_cell_96/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_96/addAddV2lstm_cell_96/MatMul:product:0lstm_cell_96/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_96/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_96_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_96/BiasAddBiasAddlstm_cell_96/add:z:0+lstm_cell_96/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_96/splitSplit%lstm_cell_96/split/split_dim:output:0lstm_cell_96/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_96/SigmoidSigmoidlstm_cell_96/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_96/Sigmoid_1Sigmoidlstm_cell_96/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_96/mulMullstm_cell_96/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_96/ReluRelulstm_cell_96/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_96/mul_1Mullstm_cell_96/Sigmoid:y:0lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_96/add_1AddV2lstm_cell_96/mul:z:0lstm_cell_96/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_96/Sigmoid_2Sigmoidlstm_cell_96/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_96/Relu_1Relulstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_96/mul_2Mullstm_cell_96/Sigmoid_2:y:0!lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_96_matmul_readvariableop_resource-lstm_cell_96_matmul_1_readvariableop_resource,lstm_cell_96_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_597471*
condR
while_cond_597470*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџdР
NoOpNoOp$^lstm_cell_96/BiasAdd/ReadVariableOp#^lstm_cell_96/MatMul/ReadVariableOp%^lstm_cell_96/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2J
#lstm_cell_96/BiasAdd/ReadVariableOp#lstm_cell_96/BiasAdd/ReadVariableOp2H
"lstm_cell_96/MatMul/ReadVariableOp"lstm_cell_96/MatMul/ReadVariableOp2L
$lstm_cell_96/MatMul_1/ReadVariableOp$lstm_cell_96/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
8
а
while_body_597328
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_96_matmul_readvariableop_resource_0:	H
5while_lstm_cell_96_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_96_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_96_matmul_readvariableop_resource:	F
3while_lstm_cell_96_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_96_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_96/BiasAdd/ReadVariableOpЂ(while/lstm_cell_96/MatMul/ReadVariableOpЂ*while/lstm_cell_96/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_96/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_96_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_96/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_96/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_96/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_96_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_96/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_96/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_96/addAddV2#while/lstm_cell_96/MatMul:product:0%while/lstm_cell_96/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_96/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_96_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_96/BiasAddBiasAddwhile/lstm_cell_96/add:z:01while/lstm_cell_96/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_96/splitSplit+while/lstm_cell_96/split/split_dim:output:0#while/lstm_cell_96/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_96/SigmoidSigmoid!while/lstm_cell_96/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_96/Sigmoid_1Sigmoid!while/lstm_cell_96/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_96/mulMul while/lstm_cell_96/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_96/ReluRelu!while/lstm_cell_96/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_96/mul_1Mulwhile/lstm_cell_96/Sigmoid:y:0%while/lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_96/add_1AddV2while/lstm_cell_96/mul:z:0while/lstm_cell_96/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_96/Sigmoid_2Sigmoid!while/lstm_cell_96/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_96/Relu_1Reluwhile/lstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_96/mul_2Mul while/lstm_cell_96/Sigmoid_2:y:0'while/lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_96/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_96/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_96/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_96/BiasAdd/ReadVariableOp)^while/lstm_cell_96/MatMul/ReadVariableOp+^while/lstm_cell_96/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_96_biasadd_readvariableop_resource4while_lstm_cell_96_biasadd_readvariableop_resource_0"l
3while_lstm_cell_96_matmul_1_readvariableop_resource5while_lstm_cell_96_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_96_matmul_readvariableop_resource3while_lstm_cell_96_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_96/BiasAdd/ReadVariableOp)while/lstm_cell_96/BiasAdd/ReadVariableOp2T
(while/lstm_cell_96/MatMul/ReadVariableOp(while/lstm_cell_96/MatMul/ReadVariableOp2X
*while/lstm_cell_96/MatMul_1/ReadVariableOp*while/lstm_cell_96/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
эW
Є
__inference__traced_save_599386
file_prefix/
+savev2_dense_114_kernel_read_readvariableop-
)savev2_dense_114_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_342_lstm_cell_342_kernel_read_readvariableopF
Bsavev2_lstm_342_lstm_cell_342_recurrent_kernel_read_readvariableop:
6savev2_lstm_342_lstm_cell_342_bias_read_readvariableop<
8savev2_lstm_343_lstm_cell_343_kernel_read_readvariableopF
Bsavev2_lstm_343_lstm_cell_343_recurrent_kernel_read_readvariableop:
6savev2_lstm_343_lstm_cell_343_bias_read_readvariableop<
8savev2_lstm_344_lstm_cell_344_kernel_read_readvariableopF
Bsavev2_lstm_344_lstm_cell_344_recurrent_kernel_read_readvariableop:
6savev2_lstm_344_lstm_cell_344_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_114_kernel_m_read_readvariableop4
0savev2_adam_dense_114_bias_m_read_readvariableopC
?savev2_adam_lstm_342_lstm_cell_342_kernel_m_read_readvariableopM
Isavev2_adam_lstm_342_lstm_cell_342_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_342_lstm_cell_342_bias_m_read_readvariableopC
?savev2_adam_lstm_343_lstm_cell_343_kernel_m_read_readvariableopM
Isavev2_adam_lstm_343_lstm_cell_343_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_343_lstm_cell_343_bias_m_read_readvariableopC
?savev2_adam_lstm_344_lstm_cell_344_kernel_m_read_readvariableopM
Isavev2_adam_lstm_344_lstm_cell_344_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_344_lstm_cell_344_bias_m_read_readvariableop6
2savev2_adam_dense_114_kernel_v_read_readvariableop4
0savev2_adam_dense_114_bias_v_read_readvariableopC
?savev2_adam_lstm_342_lstm_cell_342_kernel_v_read_readvariableopM
Isavev2_adam_lstm_342_lstm_cell_342_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_342_lstm_cell_342_bias_v_read_readvariableopC
?savev2_adam_lstm_343_lstm_cell_343_kernel_v_read_readvariableopM
Isavev2_adam_lstm_343_lstm_cell_343_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_343_lstm_cell_343_bias_v_read_readvariableopC
?savev2_adam_lstm_344_lstm_cell_344_kernel_v_read_readvariableopM
Isavev2_adam_lstm_344_lstm_cell_344_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_344_lstm_cell_344_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Х
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*ю
valueфBс)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHП
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B №
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_114_kernel_read_readvariableop)savev2_dense_114_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_342_lstm_cell_342_kernel_read_readvariableopBsavev2_lstm_342_lstm_cell_342_recurrent_kernel_read_readvariableop6savev2_lstm_342_lstm_cell_342_bias_read_readvariableop8savev2_lstm_343_lstm_cell_343_kernel_read_readvariableopBsavev2_lstm_343_lstm_cell_343_recurrent_kernel_read_readvariableop6savev2_lstm_343_lstm_cell_343_bias_read_readvariableop8savev2_lstm_344_lstm_cell_344_kernel_read_readvariableopBsavev2_lstm_344_lstm_cell_344_recurrent_kernel_read_readvariableop6savev2_lstm_344_lstm_cell_344_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_114_kernel_m_read_readvariableop0savev2_adam_dense_114_bias_m_read_readvariableop?savev2_adam_lstm_342_lstm_cell_342_kernel_m_read_readvariableopIsavev2_adam_lstm_342_lstm_cell_342_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_342_lstm_cell_342_bias_m_read_readvariableop?savev2_adam_lstm_343_lstm_cell_343_kernel_m_read_readvariableopIsavev2_adam_lstm_343_lstm_cell_343_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_343_lstm_cell_343_bias_m_read_readvariableop?savev2_adam_lstm_344_lstm_cell_344_kernel_m_read_readvariableopIsavev2_adam_lstm_344_lstm_cell_344_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_344_lstm_cell_344_bias_m_read_readvariableop2savev2_adam_dense_114_kernel_v_read_readvariableop0savev2_adam_dense_114_bias_v_read_readvariableop?savev2_adam_lstm_342_lstm_cell_342_kernel_v_read_readvariableopIsavev2_adam_lstm_342_lstm_cell_342_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_342_lstm_cell_342_bias_v_read_readvariableop?savev2_adam_lstm_343_lstm_cell_343_kernel_v_read_readvariableopIsavev2_adam_lstm_343_lstm_cell_343_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_343_lstm_cell_343_bias_v_read_readvariableop?savev2_adam_lstm_344_lstm_cell_344_kernel_v_read_readvariableopIsavev2_adam_lstm_344_lstm_cell_344_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_344_lstm_cell_344_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *7
dtypes-
+2)	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*г
_input_shapesС
О: :
:: : : : : :	:	d::	dШ:	2Ш:Ш:2(:
(:(: : :
::	:	d::	dШ:	2Ш:Ш:2(:
(:(:
::	:	d::	dШ:	2Ш:Ш:2(:
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
:	:%	!

_output_shapes
:	d:!


_output_shapes	
::%!

_output_shapes
:	dШ:%!

_output_shapes
:	2Ш:!

_output_shapes	
:Ш:$ 

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
:	:%!

_output_shapes
:	d:!

_output_shapes	
::%!

_output_shapes
:	dШ:%!

_output_shapes
:	2Ш:!

_output_shapes	
:Ш:$ 

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
:	:%!!

_output_shapes
:	d:!"

_output_shapes	
::%#!

_output_shapes
:	dШ:%$!

_output_shapes
:	2Ш:!%

_output_shapes	
:Ш:$& 

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
ЄJ

D__inference_lstm_342_layer_call_and_return_conditional_losses_595113

inputs>
+lstm_cell_96_matmul_readvariableop_resource:	@
-lstm_cell_96_matmul_1_readvariableop_resource:	d;
,lstm_cell_96_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_96/BiasAdd/ReadVariableOpЂ"lstm_cell_96/MatMul/ReadVariableOpЂ$lstm_cell_96/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџdR
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
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_96/MatMul/ReadVariableOpReadVariableOp+lstm_cell_96_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_96/MatMulMatMulstrided_slice_2:output:0*lstm_cell_96/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_96/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_96_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_96/MatMul_1MatMulzeros:output:0,lstm_cell_96/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_96/addAddV2lstm_cell_96/MatMul:product:0lstm_cell_96/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_96/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_96_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_96/BiasAddBiasAddlstm_cell_96/add:z:0+lstm_cell_96/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_96/splitSplit%lstm_cell_96/split/split_dim:output:0lstm_cell_96/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_96/SigmoidSigmoidlstm_cell_96/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_96/Sigmoid_1Sigmoidlstm_cell_96/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_96/mulMullstm_cell_96/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_96/ReluRelulstm_cell_96/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_96/mul_1Mullstm_cell_96/Sigmoid:y:0lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_96/add_1AddV2lstm_cell_96/mul:z:0lstm_cell_96/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_96/Sigmoid_2Sigmoidlstm_cell_96/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_96/Relu_1Relulstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_96/mul_2Mullstm_cell_96/Sigmoid_2:y:0!lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_96_matmul_readvariableop_resource-lstm_cell_96_matmul_1_readvariableop_resource,lstm_cell_96_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_595029*
condR
while_cond_595028*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџdР
NoOpNoOp$^lstm_cell_96/BiasAdd/ReadVariableOp#^lstm_cell_96/MatMul/ReadVariableOp%^lstm_cell_96/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2J
#lstm_cell_96/BiasAdd/ReadVariableOp#lstm_cell_96/BiasAdd/ReadVariableOp2H
"lstm_cell_96/MatMul/ReadVariableOp"lstm_cell_96/MatMul/ReadVariableOp2L
$lstm_cell_96/MatMul_1/ReadVariableOp$lstm_cell_96/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
і
Г
)__inference_lstm_344_layer_call_fn_598347

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identityЂStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_344_layer_call_and_return_conditional_losses_595413o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
8
а
while_body_597614
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_96_matmul_readvariableop_resource_0:	H
5while_lstm_cell_96_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_96_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_96_matmul_readvariableop_resource:	F
3while_lstm_cell_96_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_96_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_96/BiasAdd/ReadVariableOpЂ(while/lstm_cell_96/MatMul/ReadVariableOpЂ*while/lstm_cell_96/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_96/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_96_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_96/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_96/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_96/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_96_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_96/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_96/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_96/addAddV2#while/lstm_cell_96/MatMul:product:0%while/lstm_cell_96/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_96/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_96_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_96/BiasAddBiasAddwhile/lstm_cell_96/add:z:01while/lstm_cell_96/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_96/splitSplit+while/lstm_cell_96/split/split_dim:output:0#while/lstm_cell_96/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_96/SigmoidSigmoid!while/lstm_cell_96/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_96/Sigmoid_1Sigmoid!while/lstm_cell_96/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_96/mulMul while/lstm_cell_96/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_96/ReluRelu!while/lstm_cell_96/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_96/mul_1Mulwhile/lstm_cell_96/Sigmoid:y:0%while/lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_96/add_1AddV2while/lstm_cell_96/mul:z:0while/lstm_cell_96/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_96/Sigmoid_2Sigmoid!while/lstm_cell_96/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_96/Relu_1Reluwhile/lstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_96/mul_2Mul while/lstm_cell_96/Sigmoid_2:y:0'while/lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_96/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_96/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_96/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_96/BiasAdd/ReadVariableOp)^while/lstm_cell_96/MatMul/ReadVariableOp+^while/lstm_cell_96/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_96_biasadd_readvariableop_resource4while_lstm_cell_96_biasadd_readvariableop_resource_0"l
3while_lstm_cell_96_matmul_1_readvariableop_resource5while_lstm_cell_96_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_96_matmul_readvariableop_resource3while_lstm_cell_96_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_96/BiasAdd/ReadVariableOp)while/lstm_cell_96/BiasAdd/ReadVariableOp2T
(while/lstm_cell_96/MatMul/ReadVariableOp(while/lstm_cell_96/MatMul/ReadVariableOp2X
*while/lstm_cell_96/MatMul_1/ReadVariableOp*while/lstm_cell_96/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
Е
У
while_cond_595328
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_595328___redundant_placeholder04
0while_while_cond_595328___redundant_placeholder14
0while_while_cond_595328___redundant_placeholder24
0while_while_cond_595328___redundant_placeholder3
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
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
ы
і
-__inference_lstm_cell_97_layer_call_fn_599081

inputs
states_0
states_1
unknown:	dШ
	unknown_0:	2Ш
	unknown_1:	Ш
identity

identity_1

identity_2ЂStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_97_layer_call_and_return_conditional_losses_594477o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd:џџџџџџџџџ2:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/1
8
а
while_body_595875
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_96_matmul_readvariableop_resource_0:	H
5while_lstm_cell_96_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_96_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_96_matmul_readvariableop_resource:	F
3while_lstm_cell_96_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_96_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_96/BiasAdd/ReadVariableOpЂ(while/lstm_cell_96/MatMul/ReadVariableOpЂ*while/lstm_cell_96/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_96/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_96_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_96/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_96/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_96/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_96_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_96/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_96/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_96/addAddV2#while/lstm_cell_96/MatMul:product:0%while/lstm_cell_96/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_96/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_96_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_96/BiasAddBiasAddwhile/lstm_cell_96/add:z:01while/lstm_cell_96/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_96/splitSplit+while/lstm_cell_96/split/split_dim:output:0#while/lstm_cell_96/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_96/SigmoidSigmoid!while/lstm_cell_96/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_96/Sigmoid_1Sigmoid!while/lstm_cell_96/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_96/mulMul while/lstm_cell_96/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_96/ReluRelu!while/lstm_cell_96/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_96/mul_1Mulwhile/lstm_cell_96/Sigmoid:y:0%while/lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_96/add_1AddV2while/lstm_cell_96/mul:z:0while/lstm_cell_96/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_96/Sigmoid_2Sigmoid!while/lstm_cell_96/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_96/Relu_1Reluwhile/lstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_96/mul_2Mul while/lstm_cell_96/Sigmoid_2:y:0'while/lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_96/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_96/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_96/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_96/BiasAdd/ReadVariableOp)^while/lstm_cell_96/MatMul/ReadVariableOp+^while/lstm_cell_96/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_96_biasadd_readvariableop_resource4while_lstm_cell_96_biasadd_readvariableop_resource_0"l
3while_lstm_cell_96_matmul_1_readvariableop_resource5while_lstm_cell_96_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_96_matmul_readvariableop_resource3while_lstm_cell_96_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_96/BiasAdd/ReadVariableOp)while/lstm_cell_96/BiasAdd/ReadVariableOp2T
(while/lstm_cell_96/MatMul/ReadVariableOp(while/lstm_cell_96/MatMul/ReadVariableOp2X
*while/lstm_cell_96/MatMul_1/ReadVariableOp*while/lstm_cell_96/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
Ћ
И
)__inference_lstm_343_layer_call_fn_597720
inputs_0
unknown:	dШ
	unknown_0:	2Ш
	unknown_1:	Ш
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_343_layer_call_and_return_conditional_losses_594605|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd
"
_user_specified_name
inputs/0
8
а
while_body_595710
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_97_matmul_readvariableop_resource_0:	dШH
5while_lstm_cell_97_matmul_1_readvariableop_resource_0:	2ШC
4while_lstm_cell_97_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_97_matmul_readvariableop_resource:	dШF
3while_lstm_cell_97_matmul_1_readvariableop_resource:	2ШA
2while_lstm_cell_97_biasadd_readvariableop_resource:	ШЂ)while/lstm_cell_97/BiasAdd/ReadVariableOpЂ(while/lstm_cell_97/MatMul/ReadVariableOpЂ*while/lstm_cell_97/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџd*
element_dtype0
(while/lstm_cell_97/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_97_matmul_readvariableop_resource_0*
_output_shapes
:	dШ*
dtype0К
while/lstm_cell_97/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
*while/lstm_cell_97/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_97_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ё
while/lstm_cell_97/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_97/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_97/addAddV2#while/lstm_cell_97/MatMul:product:0%while/lstm_cell_97/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
)while/lstm_cell_97/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_97_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ї
while/lstm_cell_97/BiasAddBiasAddwhile/lstm_cell_97/add:z:01while/lstm_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШd
"while/lstm_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_97/splitSplit+while/lstm_cell_97/split/split_dim:output:0#while/lstm_cell_97/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitz
while/lstm_cell_97/SigmoidSigmoid!while/lstm_cell_97/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_97/Sigmoid_1Sigmoid!while/lstm_cell_97/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_97/mulMul while/lstm_cell_97/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2t
while/lstm_cell_97/ReluRelu!while/lstm_cell_97/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_97/mul_1Mulwhile/lstm_cell_97/Sigmoid:y:0%while/lstm_cell_97/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_97/add_1AddV2while/lstm_cell_97/mul:z:0while/lstm_cell_97/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_97/Sigmoid_2Sigmoid!while/lstm_cell_97/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2q
while/lstm_cell_97/Relu_1Reluwhile/lstm_cell_97/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_97/mul_2Mul while/lstm_cell_97/Sigmoid_2:y:0'while/lstm_cell_97/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_97/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_97/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y
while/Identity_5Identitywhile/lstm_cell_97/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2а

while/NoOpNoOp*^while/lstm_cell_97/BiasAdd/ReadVariableOp)^while/lstm_cell_97/MatMul/ReadVariableOp+^while/lstm_cell_97/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_97_biasadd_readvariableop_resource4while_lstm_cell_97_biasadd_readvariableop_resource_0"l
3while_lstm_cell_97_matmul_1_readvariableop_resource5while_lstm_cell_97_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_97_matmul_readvariableop_resource3while_lstm_cell_97_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2V
)while/lstm_cell_97/BiasAdd/ReadVariableOp)while/lstm_cell_97/BiasAdd/ReadVariableOp2T
(while/lstm_cell_97/MatMul/ReadVariableOp(while/lstm_cell_97/MatMul/ReadVariableOp2X
*while/lstm_cell_97/MatMul_1/ReadVariableOp*while/lstm_cell_97/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
ц"
у
while_body_593995
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_96_594019_0:	.
while_lstm_cell_96_594021_0:	d*
while_lstm_cell_96_594023_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_96_594019:	,
while_lstm_cell_96_594021:	d(
while_lstm_cell_96_594023:	Ђ*while/lstm_cell_96/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Г
*while/lstm_cell_96/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_96_594019_0while_lstm_cell_96_594021_0while_lstm_cell_96_594023_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_96_layer_call_and_return_conditional_losses_593981м
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_96/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_96/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
while/Identity_5Identity3while/lstm_cell_96/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy

while/NoOpNoOp+^while/lstm_cell_96/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_96_594019while_lstm_cell_96_594019_0"8
while_lstm_cell_96_594021while_lstm_cell_96_594021_0"8
while_lstm_cell_96_594023while_lstm_cell_96_594023_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2X
*while/lstm_cell_96/StatefulPartitionedCall*while/lstm_cell_96/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
ц"
у
while_body_594186
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_96_594210_0:	.
while_lstm_cell_96_594212_0:	d*
while_lstm_cell_96_594214_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_96_594210:	,
while_lstm_cell_96_594212:	d(
while_lstm_cell_96_594214:	Ђ*while/lstm_cell_96/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Г
*while/lstm_cell_96/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_96_594210_0while_lstm_cell_96_594212_0while_lstm_cell_96_594214_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_96_layer_call_and_return_conditional_losses_594127м
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_96/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_96/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
while/Identity_5Identity3while/lstm_cell_96/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy

while/NoOpNoOp+^while/lstm_cell_96/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_96_594210while_lstm_cell_96_594210_0"8
while_lstm_cell_96_594212while_lstm_cell_96_594212_0"8
while_lstm_cell_96_594214while_lstm_cell_96_594214_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2X
*while/lstm_cell_96/StatefulPartitionedCall*while/lstm_cell_96/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
J

D__inference_lstm_344_layer_call_and_return_conditional_losses_595413

inputs=
+lstm_cell_98_matmul_readvariableop_resource:2(?
-lstm_cell_98_matmul_1_readvariableop_resource:
(:
,lstm_cell_98_biasadd_readvariableop_resource:(
identityЂ#lstm_cell_98/BiasAdd/ReadVariableOpЂ"lstm_cell_98/MatMul/ReadVariableOpЂ$lstm_cell_98/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџ
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
:џџџџџџџџџ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2D
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
"lstm_cell_98/MatMul/ReadVariableOpReadVariableOp+lstm_cell_98_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_98/MatMulMatMulstrided_slice_2:output:0*lstm_cell_98/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
$lstm_cell_98/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_98_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_98/MatMul_1MatMulzeros:output:0,lstm_cell_98/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell_98/addAddV2lstm_cell_98/MatMul:product:0lstm_cell_98/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
#lstm_cell_98/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_98_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_98/BiasAddBiasAddlstm_cell_98/add:z:0+lstm_cell_98/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(^
lstm_cell_98/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_98/splitSplit%lstm_cell_98/split/split_dim:output:0lstm_cell_98/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitn
lstm_cell_98/SigmoidSigmoidlstm_cell_98/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_98/Sigmoid_1Sigmoidlstm_cell_98/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell_98/mulMullstm_cell_98/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
h
lstm_cell_98/ReluRelulstm_cell_98/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_98/mul_1Mullstm_cell_98/Sigmoid:y:0lstm_cell_98/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
{
lstm_cell_98/add_1AddV2lstm_cell_98/mul:z:0lstm_cell_98/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_98/Sigmoid_2Sigmoidlstm_cell_98/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
e
lstm_cell_98/Relu_1Relulstm_cell_98/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_98/mul_2Mullstm_cell_98/Sigmoid_2:y:0!lstm_cell_98/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_98_matmul_readvariableop_resource-lstm_cell_98_matmul_1_readvariableop_resource,lstm_cell_98_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_595329*
condR
while_cond_595328*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
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
:џџџџџџџџџ
Р
NoOpNoOp$^lstm_cell_98/BiasAdd/ReadVariableOp#^lstm_cell_98/MatMul/ReadVariableOp%^lstm_cell_98/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2J
#lstm_cell_98/BiasAdd/ReadVariableOp#lstm_cell_98/BiasAdd/ReadVariableOp2H
"lstm_cell_98/MatMul/ReadVariableOp"lstm_cell_98/MatMul/ReadVariableOp2L
$lstm_cell_98/MatMul_1/ReadVariableOp$lstm_cell_98/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
J

D__inference_lstm_344_layer_call_and_return_conditional_losses_595629

inputs=
+lstm_cell_98_matmul_readvariableop_resource:2(?
-lstm_cell_98_matmul_1_readvariableop_resource:
(:
,lstm_cell_98_biasadd_readvariableop_resource:(
identityЂ#lstm_cell_98/BiasAdd/ReadVariableOpЂ"lstm_cell_98/MatMul/ReadVariableOpЂ$lstm_cell_98/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџ
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
:џџџџџџџџџ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2D
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
"lstm_cell_98/MatMul/ReadVariableOpReadVariableOp+lstm_cell_98_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_98/MatMulMatMulstrided_slice_2:output:0*lstm_cell_98/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
$lstm_cell_98/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_98_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_98/MatMul_1MatMulzeros:output:0,lstm_cell_98/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell_98/addAddV2lstm_cell_98/MatMul:product:0lstm_cell_98/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
#lstm_cell_98/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_98_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_98/BiasAddBiasAddlstm_cell_98/add:z:0+lstm_cell_98/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(^
lstm_cell_98/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_98/splitSplit%lstm_cell_98/split/split_dim:output:0lstm_cell_98/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitn
lstm_cell_98/SigmoidSigmoidlstm_cell_98/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_98/Sigmoid_1Sigmoidlstm_cell_98/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell_98/mulMullstm_cell_98/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
h
lstm_cell_98/ReluRelulstm_cell_98/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_98/mul_1Mullstm_cell_98/Sigmoid:y:0lstm_cell_98/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
{
lstm_cell_98/add_1AddV2lstm_cell_98/mul:z:0lstm_cell_98/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_98/Sigmoid_2Sigmoidlstm_cell_98/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
e
lstm_cell_98/Relu_1Relulstm_cell_98/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_98/mul_2Mullstm_cell_98/Sigmoid_2:y:0!lstm_cell_98/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_98_matmul_readvariableop_resource-lstm_cell_98_matmul_1_readvariableop_resource,lstm_cell_98_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_595545*
condR
while_cond_595544*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
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
:џџџџџџџџџ
Р
NoOpNoOp$^lstm_cell_98/BiasAdd/ReadVariableOp#^lstm_cell_98/MatMul/ReadVariableOp%^lstm_cell_98/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2J
#lstm_cell_98/BiasAdd/ReadVariableOp#lstm_cell_98/BiasAdd/ReadVariableOp2H
"lstm_cell_98/MatMul/ReadVariableOp"lstm_cell_98/MatMul/ReadVariableOp2L
$lstm_cell_98/MatMul_1/ReadVariableOp$lstm_cell_98/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
Я
ї
J__inference_sequential_114_layer_call_and_return_conditional_losses_596139
lstm_342_input"
lstm_342_596112:	"
lstm_342_596114:	d
lstm_342_596116:	"
lstm_343_596119:	dШ"
lstm_343_596121:	2Ш
lstm_343_596123:	Ш!
lstm_344_596126:2(!
lstm_344_596128:
(
lstm_344_596130:("
dense_114_596133:

dense_114_596135:
identityЂ!dense_114/StatefulPartitionedCallЂ lstm_342/StatefulPartitionedCallЂ lstm_343/StatefulPartitionedCallЂ lstm_344/StatefulPartitionedCall
 lstm_342/StatefulPartitionedCallStatefulPartitionedCalllstm_342_inputlstm_342_596112lstm_342_596114lstm_342_596116*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_342_layer_call_and_return_conditional_losses_595959Њ
 lstm_343/StatefulPartitionedCallStatefulPartitionedCall)lstm_342/StatefulPartitionedCall:output:0lstm_343_596119lstm_343_596121lstm_343_596123*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_343_layer_call_and_return_conditional_losses_595794І
 lstm_344/StatefulPartitionedCallStatefulPartitionedCall)lstm_343/StatefulPartitionedCall:output:0lstm_344_596126lstm_344_596128lstm_344_596130*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_344_layer_call_and_return_conditional_losses_595629
!dense_114/StatefulPartitionedCallStatefulPartitionedCall)lstm_344/StatefulPartitionedCall:output:0dense_114_596133dense_114_596135*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_114_layer_call_and_return_conditional_losses_595431y
IdentityIdentity*dense_114/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџг
NoOpNoOp"^dense_114/StatefulPartitionedCall!^lstm_342/StatefulPartitionedCall!^lstm_343/StatefulPartitionedCall!^lstm_344/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 2F
!dense_114/StatefulPartitionedCall!dense_114/StatefulPartitionedCall2D
 lstm_342/StatefulPartitionedCall lstm_342/StatefulPartitionedCall2D
 lstm_343/StatefulPartitionedCall lstm_343/StatefulPartitionedCall2D
 lstm_344/StatefulPartitionedCall lstm_344/StatefulPartitionedCall:[ W
+
_output_shapes
:џџџџџџџџџ
(
_user_specified_namelstm_342_input
Е
У
while_cond_597800
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_597800___redundant_placeholder04
0while_while_cond_597800___redundant_placeholder14
0while_while_cond_597800___redundant_placeholder24
0while_while_cond_597800___redundant_placeholder3
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
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
ЮB
ъ

lstm_344_while_body_596992.
*lstm_344_while_lstm_344_while_loop_counter4
0lstm_344_while_lstm_344_while_maximum_iterations
lstm_344_while_placeholder 
lstm_344_while_placeholder_1 
lstm_344_while_placeholder_2 
lstm_344_while_placeholder_3-
)lstm_344_while_lstm_344_strided_slice_1_0i
elstm_344_while_tensorarrayv2read_tensorlistgetitem_lstm_344_tensorarrayunstack_tensorlistfromtensor_0N
<lstm_344_while_lstm_cell_98_matmul_readvariableop_resource_0:2(P
>lstm_344_while_lstm_cell_98_matmul_1_readvariableop_resource_0:
(K
=lstm_344_while_lstm_cell_98_biasadd_readvariableop_resource_0:(
lstm_344_while_identity
lstm_344_while_identity_1
lstm_344_while_identity_2
lstm_344_while_identity_3
lstm_344_while_identity_4
lstm_344_while_identity_5+
'lstm_344_while_lstm_344_strided_slice_1g
clstm_344_while_tensorarrayv2read_tensorlistgetitem_lstm_344_tensorarrayunstack_tensorlistfromtensorL
:lstm_344_while_lstm_cell_98_matmul_readvariableop_resource:2(N
<lstm_344_while_lstm_cell_98_matmul_1_readvariableop_resource:
(I
;lstm_344_while_lstm_cell_98_biasadd_readvariableop_resource:(Ђ2lstm_344/while/lstm_cell_98/BiasAdd/ReadVariableOpЂ1lstm_344/while/lstm_cell_98/MatMul/ReadVariableOpЂ3lstm_344/while/lstm_cell_98/MatMul_1/ReadVariableOp
@lstm_344/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   г
2lstm_344/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_344_while_tensorarrayv2read_tensorlistgetitem_lstm_344_tensorarrayunstack_tensorlistfromtensor_0lstm_344_while_placeholderIlstm_344/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ў
1lstm_344/while/lstm_cell_98/MatMul/ReadVariableOpReadVariableOp<lstm_344_while_lstm_cell_98_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0д
"lstm_344/while/lstm_cell_98/MatMulMatMul9lstm_344/while/TensorArrayV2Read/TensorListGetItem:item:09lstm_344/while/lstm_cell_98/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(В
3lstm_344/while/lstm_cell_98/MatMul_1/ReadVariableOpReadVariableOp>lstm_344_while_lstm_cell_98_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0Л
$lstm_344/while/lstm_cell_98/MatMul_1MatMullstm_344_while_placeholder_2;lstm_344/while/lstm_cell_98/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(И
lstm_344/while/lstm_cell_98/addAddV2,lstm_344/while/lstm_cell_98/MatMul:product:0.lstm_344/while/lstm_cell_98/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(Ќ
2lstm_344/while/lstm_cell_98/BiasAdd/ReadVariableOpReadVariableOp=lstm_344_while_lstm_cell_98_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0С
#lstm_344/while/lstm_cell_98/BiasAddBiasAdd#lstm_344/while/lstm_cell_98/add:z:0:lstm_344/while/lstm_cell_98/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(m
+lstm_344/while/lstm_cell_98/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_344/while/lstm_cell_98/splitSplit4lstm_344/while/lstm_cell_98/split/split_dim:output:0,lstm_344/while/lstm_cell_98/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_split
#lstm_344/while/lstm_cell_98/SigmoidSigmoid*lstm_344/while/lstm_cell_98/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

%lstm_344/while/lstm_cell_98/Sigmoid_1Sigmoid*lstm_344/while/lstm_cell_98/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
Ё
lstm_344/while/lstm_cell_98/mulMul)lstm_344/while/lstm_cell_98/Sigmoid_1:y:0lstm_344_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ

 lstm_344/while/lstm_cell_98/ReluRelu*lstm_344/while/lstm_cell_98/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
Г
!lstm_344/while/lstm_cell_98/mul_1Mul'lstm_344/while/lstm_cell_98/Sigmoid:y:0.lstm_344/while/lstm_cell_98/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ј
!lstm_344/while/lstm_cell_98/add_1AddV2#lstm_344/while/lstm_cell_98/mul:z:0%lstm_344/while/lstm_cell_98/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

%lstm_344/while/lstm_cell_98/Sigmoid_2Sigmoid*lstm_344/while/lstm_cell_98/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ

"lstm_344/while/lstm_cell_98/Relu_1Relu%lstm_344/while/lstm_cell_98/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
З
!lstm_344/while/lstm_cell_98/mul_2Mul)lstm_344/while/lstm_cell_98/Sigmoid_2:y:00lstm_344/while/lstm_cell_98/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
щ
3lstm_344/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_344_while_placeholder_1lstm_344_while_placeholder%lstm_344/while/lstm_cell_98/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвV
lstm_344/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_344/while/addAddV2lstm_344_while_placeholderlstm_344/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_344/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_344/while/add_1AddV2*lstm_344_while_lstm_344_while_loop_counterlstm_344/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_344/while/IdentityIdentitylstm_344/while/add_1:z:0^lstm_344/while/NoOp*
T0*
_output_shapes
: 
lstm_344/while/Identity_1Identity0lstm_344_while_lstm_344_while_maximum_iterations^lstm_344/while/NoOp*
T0*
_output_shapes
: t
lstm_344/while/Identity_2Identitylstm_344/while/add:z:0^lstm_344/while/NoOp*
T0*
_output_shapes
: Ё
lstm_344/while/Identity_3IdentityClstm_344/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_344/while/NoOp*
T0*
_output_shapes
: 
lstm_344/while/Identity_4Identity%lstm_344/while/lstm_cell_98/mul_2:z:0^lstm_344/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_344/while/Identity_5Identity%lstm_344/while/lstm_cell_98/add_1:z:0^lstm_344/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
є
lstm_344/while/NoOpNoOp3^lstm_344/while/lstm_cell_98/BiasAdd/ReadVariableOp2^lstm_344/while/lstm_cell_98/MatMul/ReadVariableOp4^lstm_344/while/lstm_cell_98/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_344_while_identity lstm_344/while/Identity:output:0"?
lstm_344_while_identity_1"lstm_344/while/Identity_1:output:0"?
lstm_344_while_identity_2"lstm_344/while/Identity_2:output:0"?
lstm_344_while_identity_3"lstm_344/while/Identity_3:output:0"?
lstm_344_while_identity_4"lstm_344/while/Identity_4:output:0"?
lstm_344_while_identity_5"lstm_344/while/Identity_5:output:0"T
'lstm_344_while_lstm_344_strided_slice_1)lstm_344_while_lstm_344_strided_slice_1_0"|
;lstm_344_while_lstm_cell_98_biasadd_readvariableop_resource=lstm_344_while_lstm_cell_98_biasadd_readvariableop_resource_0"~
<lstm_344_while_lstm_cell_98_matmul_1_readvariableop_resource>lstm_344_while_lstm_cell_98_matmul_1_readvariableop_resource_0"z
:lstm_344_while_lstm_cell_98_matmul_readvariableop_resource<lstm_344_while_lstm_cell_98_matmul_readvariableop_resource_0"Ь
clstm_344_while_tensorarrayv2read_tensorlistgetitem_lstm_344_tensorarrayunstack_tensorlistfromtensorelstm_344_while_tensorarrayv2read_tensorlistgetitem_lstm_344_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2h
2lstm_344/while/lstm_cell_98/BiasAdd/ReadVariableOp2lstm_344/while/lstm_cell_98/BiasAdd/ReadVariableOp2f
1lstm_344/while/lstm_cell_98/MatMul/ReadVariableOp1lstm_344/while/lstm_cell_98/MatMul/ReadVariableOp2j
3lstm_344/while/lstm_cell_98/MatMul_1/ReadVariableOp3lstm_344/while/lstm_cell_98/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
Е
У
while_cond_597943
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_597943___redundant_placeholder04
0while_while_cond_597943___redundant_placeholder14
0while_while_cond_597943___redundant_placeholder24
0while_while_cond_597943___redundant_placeholder3
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
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
Ц

J__inference_sequential_114_layer_call_and_return_conditional_losses_597082

inputsG
4lstm_342_lstm_cell_96_matmul_readvariableop_resource:	I
6lstm_342_lstm_cell_96_matmul_1_readvariableop_resource:	dD
5lstm_342_lstm_cell_96_biasadd_readvariableop_resource:	G
4lstm_343_lstm_cell_97_matmul_readvariableop_resource:	dШI
6lstm_343_lstm_cell_97_matmul_1_readvariableop_resource:	2ШD
5lstm_343_lstm_cell_97_biasadd_readvariableop_resource:	ШF
4lstm_344_lstm_cell_98_matmul_readvariableop_resource:2(H
6lstm_344_lstm_cell_98_matmul_1_readvariableop_resource:
(C
5lstm_344_lstm_cell_98_biasadd_readvariableop_resource:(:
(dense_114_matmul_readvariableop_resource:
7
)dense_114_biasadd_readvariableop_resource:
identityЂ dense_114/BiasAdd/ReadVariableOpЂdense_114/MatMul/ReadVariableOpЂ,lstm_342/lstm_cell_96/BiasAdd/ReadVariableOpЂ+lstm_342/lstm_cell_96/MatMul/ReadVariableOpЂ-lstm_342/lstm_cell_96/MatMul_1/ReadVariableOpЂlstm_342/whileЂ,lstm_343/lstm_cell_97/BiasAdd/ReadVariableOpЂ+lstm_343/lstm_cell_97/MatMul/ReadVariableOpЂ-lstm_343/lstm_cell_97/MatMul_1/ReadVariableOpЂlstm_343/whileЂ,lstm_344/lstm_cell_98/BiasAdd/ReadVariableOpЂ+lstm_344/lstm_cell_98/MatMul/ReadVariableOpЂ-lstm_344/lstm_cell_98/MatMul_1/ReadVariableOpЂlstm_344/whileD
lstm_342/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_342/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_342/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_342/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
lstm_342/strided_sliceStridedSlicelstm_342/Shape:output:0%lstm_342/strided_slice/stack:output:0'lstm_342/strided_slice/stack_1:output:0'lstm_342/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_342/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_342/zeros/packedPacklstm_342/strided_slice:output:0 lstm_342/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_342/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_342/zerosFilllstm_342/zeros/packed:output:0lstm_342/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd[
lstm_342/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_342/zeros_1/packedPacklstm_342/strided_slice:output:0"lstm_342/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_342/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_342/zeros_1Fill lstm_342/zeros_1/packed:output:0lstm_342/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdl
lstm_342/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_342/transpose	Transposeinputs lstm_342/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџV
lstm_342/Shape_1Shapelstm_342/transpose:y:0*
T0*
_output_shapes
:h
lstm_342/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_342/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_342/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_342/strided_slice_1StridedSlicelstm_342/Shape_1:output:0'lstm_342/strided_slice_1/stack:output:0)lstm_342/strided_slice_1/stack_1:output:0)lstm_342/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_342/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЯ
lstm_342/TensorArrayV2TensorListReserve-lstm_342/TensorArrayV2/element_shape:output:0!lstm_342/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
>lstm_342/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ћ
0lstm_342/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_342/transpose:y:0Glstm_342/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвh
lstm_342/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_342/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_342/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_342/strided_slice_2StridedSlicelstm_342/transpose:y:0'lstm_342/strided_slice_2/stack:output:0)lstm_342/strided_slice_2/stack_1:output:0)lstm_342/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskЁ
+lstm_342/lstm_cell_96/MatMul/ReadVariableOpReadVariableOp4lstm_342_lstm_cell_96_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Б
lstm_342/lstm_cell_96/MatMulMatMul!lstm_342/strided_slice_2:output:03lstm_342/lstm_cell_96/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЅ
-lstm_342/lstm_cell_96/MatMul_1/ReadVariableOpReadVariableOp6lstm_342_lstm_cell_96_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ћ
lstm_342/lstm_cell_96/MatMul_1MatMullstm_342/zeros:output:05lstm_342/lstm_cell_96/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЇ
lstm_342/lstm_cell_96/addAddV2&lstm_342/lstm_cell_96/MatMul:product:0(lstm_342/lstm_cell_96/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
,lstm_342/lstm_cell_96/BiasAdd/ReadVariableOpReadVariableOp5lstm_342_lstm_cell_96_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0А
lstm_342/lstm_cell_96/BiasAddBiasAddlstm_342/lstm_cell_96/add:z:04lstm_342/lstm_cell_96/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџg
%lstm_342/lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ј
lstm_342/lstm_cell_96/splitSplit.lstm_342/lstm_cell_96/split/split_dim:output:0&lstm_342/lstm_cell_96/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split
lstm_342/lstm_cell_96/SigmoidSigmoid$lstm_342/lstm_cell_96/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_342/lstm_cell_96/Sigmoid_1Sigmoid$lstm_342/lstm_cell_96/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_342/lstm_cell_96/mulMul#lstm_342/lstm_cell_96/Sigmoid_1:y:0lstm_342/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdz
lstm_342/lstm_cell_96/ReluRelu$lstm_342/lstm_cell_96/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdЁ
lstm_342/lstm_cell_96/mul_1Mul!lstm_342/lstm_cell_96/Sigmoid:y:0(lstm_342/lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_342/lstm_cell_96/add_1AddV2lstm_342/lstm_cell_96/mul:z:0lstm_342/lstm_cell_96/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_342/lstm_cell_96/Sigmoid_2Sigmoid$lstm_342/lstm_cell_96/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_342/lstm_cell_96/Relu_1Relulstm_342/lstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdЅ
lstm_342/lstm_cell_96/mul_2Mul#lstm_342/lstm_cell_96/Sigmoid_2:y:0*lstm_342/lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdw
&lstm_342/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   г
lstm_342/TensorArrayV2_1TensorListReserve/lstm_342/TensorArrayV2_1/element_shape:output:0!lstm_342/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвO
lstm_342/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_342/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ]
lstm_342/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_342/whileWhile$lstm_342/while/loop_counter:output:0*lstm_342/while/maximum_iterations:output:0lstm_342/time:output:0!lstm_342/TensorArrayV2_1:handle:0lstm_342/zeros:output:0lstm_342/zeros_1:output:0!lstm_342/strided_slice_1:output:0@lstm_342/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_342_lstm_cell_96_matmul_readvariableop_resource6lstm_342_lstm_cell_96_matmul_1_readvariableop_resource5lstm_342_lstm_cell_96_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_342_while_body_596714*&
condR
lstm_342_while_cond_596713*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
9lstm_342/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   н
+lstm_342/TensorArrayV2Stack/TensorListStackTensorListStacklstm_342/while:output:3Blstm_342/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0q
lstm_342/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџj
 lstm_342/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_342/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Д
lstm_342/strided_slice_3StridedSlice4lstm_342/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_342/strided_slice_3/stack:output:0)lstm_342/strided_slice_3/stack_1:output:0)lstm_342/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskn
lstm_342/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Б
lstm_342/transpose_1	Transpose4lstm_342/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_342/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdd
lstm_342/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_343/ShapeShapelstm_342/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_343/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_343/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_343/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
lstm_343/strided_sliceStridedSlicelstm_343/Shape:output:0%lstm_343/strided_slice/stack:output:0'lstm_343/strided_slice/stack_1:output:0'lstm_343/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_343/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_343/zeros/packedPacklstm_343/strided_slice:output:0 lstm_343/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_343/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_343/zerosFilllstm_343/zeros/packed:output:0lstm_343/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2[
lstm_343/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_343/zeros_1/packedPacklstm_343/strided_slice:output:0"lstm_343/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_343/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_343/zeros_1Fill lstm_343/zeros_1/packed:output:0lstm_343/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2l
lstm_343/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_343/transpose	Transposelstm_342/transpose_1:y:0 lstm_343/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdV
lstm_343/Shape_1Shapelstm_343/transpose:y:0*
T0*
_output_shapes
:h
lstm_343/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_343/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_343/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_343/strided_slice_1StridedSlicelstm_343/Shape_1:output:0'lstm_343/strided_slice_1/stack:output:0)lstm_343/strided_slice_1/stack_1:output:0)lstm_343/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_343/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЯ
lstm_343/TensorArrayV2TensorListReserve-lstm_343/TensorArrayV2/element_shape:output:0!lstm_343/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
>lstm_343/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ћ
0lstm_343/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_343/transpose:y:0Glstm_343/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвh
lstm_343/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_343/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_343/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_343/strided_slice_2StridedSlicelstm_343/transpose:y:0'lstm_343/strided_slice_2/stack:output:0)lstm_343/strided_slice_2/stack_1:output:0)lstm_343/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskЁ
+lstm_343/lstm_cell_97/MatMul/ReadVariableOpReadVariableOp4lstm_343_lstm_cell_97_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0Б
lstm_343/lstm_cell_97/MatMulMatMul!lstm_343/strided_slice_2:output:03lstm_343/lstm_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЅ
-lstm_343/lstm_cell_97/MatMul_1/ReadVariableOpReadVariableOp6lstm_343_lstm_cell_97_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0Ћ
lstm_343/lstm_cell_97/MatMul_1MatMullstm_343/zeros:output:05lstm_343/lstm_cell_97/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЇ
lstm_343/lstm_cell_97/addAddV2&lstm_343/lstm_cell_97/MatMul:product:0(lstm_343/lstm_cell_97/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
,lstm_343/lstm_cell_97/BiasAdd/ReadVariableOpReadVariableOp5lstm_343_lstm_cell_97_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0А
lstm_343/lstm_cell_97/BiasAddBiasAddlstm_343/lstm_cell_97/add:z:04lstm_343/lstm_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШg
%lstm_343/lstm_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ј
lstm_343/lstm_cell_97/splitSplit.lstm_343/lstm_cell_97/split/split_dim:output:0&lstm_343/lstm_cell_97/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split
lstm_343/lstm_cell_97/SigmoidSigmoid$lstm_343/lstm_cell_97/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_343/lstm_cell_97/Sigmoid_1Sigmoid$lstm_343/lstm_cell_97/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_343/lstm_cell_97/mulMul#lstm_343/lstm_cell_97/Sigmoid_1:y:0lstm_343/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2z
lstm_343/lstm_cell_97/ReluRelu$lstm_343/lstm_cell_97/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
lstm_343/lstm_cell_97/mul_1Mul!lstm_343/lstm_cell_97/Sigmoid:y:0(lstm_343/lstm_cell_97/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_343/lstm_cell_97/add_1AddV2lstm_343/lstm_cell_97/mul:z:0lstm_343/lstm_cell_97/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_343/lstm_cell_97/Sigmoid_2Sigmoid$lstm_343/lstm_cell_97/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_343/lstm_cell_97/Relu_1Relulstm_343/lstm_cell_97/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
lstm_343/lstm_cell_97/mul_2Mul#lstm_343/lstm_cell_97/Sigmoid_2:y:0*lstm_343/lstm_cell_97/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2w
&lstm_343/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   г
lstm_343/TensorArrayV2_1TensorListReserve/lstm_343/TensorArrayV2_1/element_shape:output:0!lstm_343/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвO
lstm_343/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_343/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ]
lstm_343/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_343/whileWhile$lstm_343/while/loop_counter:output:0*lstm_343/while/maximum_iterations:output:0lstm_343/time:output:0!lstm_343/TensorArrayV2_1:handle:0lstm_343/zeros:output:0lstm_343/zeros_1:output:0!lstm_343/strided_slice_1:output:0@lstm_343/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_343_lstm_cell_97_matmul_readvariableop_resource6lstm_343_lstm_cell_97_matmul_1_readvariableop_resource5lstm_343_lstm_cell_97_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_343_while_body_596853*&
condR
lstm_343_while_cond_596852*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
9lstm_343/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   н
+lstm_343/TensorArrayV2Stack/TensorListStackTensorListStacklstm_343/while:output:3Blstm_343/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0q
lstm_343/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџj
 lstm_343/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_343/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Д
lstm_343/strided_slice_3StridedSlice4lstm_343/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_343/strided_slice_3/stack:output:0)lstm_343/strided_slice_3/stack_1:output:0)lstm_343/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskn
lstm_343/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Б
lstm_343/transpose_1	Transpose4lstm_343/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_343/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2d
lstm_343/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_344/ShapeShapelstm_343/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_344/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_344/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_344/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
lstm_344/strided_sliceStridedSlicelstm_344/Shape:output:0%lstm_344/strided_slice/stack:output:0'lstm_344/strided_slice/stack_1:output:0'lstm_344/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_344/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_344/zeros/packedPacklstm_344/strided_slice:output:0 lstm_344/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_344/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_344/zerosFilllstm_344/zeros/packed:output:0lstm_344/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
[
lstm_344/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_344/zeros_1/packedPacklstm_344/strided_slice:output:0"lstm_344/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_344/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_344/zeros_1Fill lstm_344/zeros_1/packed:output:0lstm_344/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
l
lstm_344/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_344/transpose	Transposelstm_343/transpose_1:y:0 lstm_344/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2V
lstm_344/Shape_1Shapelstm_344/transpose:y:0*
T0*
_output_shapes
:h
lstm_344/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_344/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_344/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_344/strided_slice_1StridedSlicelstm_344/Shape_1:output:0'lstm_344/strided_slice_1/stack:output:0)lstm_344/strided_slice_1/stack_1:output:0)lstm_344/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_344/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЯ
lstm_344/TensorArrayV2TensorListReserve-lstm_344/TensorArrayV2/element_shape:output:0!lstm_344/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
>lstm_344/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ћ
0lstm_344/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_344/transpose:y:0Glstm_344/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвh
lstm_344/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_344/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_344/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_344/strided_slice_2StridedSlicelstm_344/transpose:y:0'lstm_344/strided_slice_2/stack:output:0)lstm_344/strided_slice_2/stack_1:output:0)lstm_344/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask 
+lstm_344/lstm_cell_98/MatMul/ReadVariableOpReadVariableOp4lstm_344_lstm_cell_98_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0А
lstm_344/lstm_cell_98/MatMulMatMul!lstm_344/strided_slice_2:output:03lstm_344/lstm_cell_98/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Є
-lstm_344/lstm_cell_98/MatMul_1/ReadVariableOpReadVariableOp6lstm_344_lstm_cell_98_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Њ
lstm_344/lstm_cell_98/MatMul_1MatMullstm_344/zeros:output:05lstm_344/lstm_cell_98/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(І
lstm_344/lstm_cell_98/addAddV2&lstm_344/lstm_cell_98/MatMul:product:0(lstm_344/lstm_cell_98/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
,lstm_344/lstm_cell_98/BiasAdd/ReadVariableOpReadVariableOp5lstm_344_lstm_cell_98_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Џ
lstm_344/lstm_cell_98/BiasAddBiasAddlstm_344/lstm_cell_98/add:z:04lstm_344/lstm_cell_98/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(g
%lstm_344/lstm_cell_98/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ј
lstm_344/lstm_cell_98/splitSplit.lstm_344/lstm_cell_98/split/split_dim:output:0&lstm_344/lstm_cell_98/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_split
lstm_344/lstm_cell_98/SigmoidSigmoid$lstm_344/lstm_cell_98/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_344/lstm_cell_98/Sigmoid_1Sigmoid$lstm_344/lstm_cell_98/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_344/lstm_cell_98/mulMul#lstm_344/lstm_cell_98/Sigmoid_1:y:0lstm_344/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
z
lstm_344/lstm_cell_98/ReluRelu$lstm_344/lstm_cell_98/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
Ё
lstm_344/lstm_cell_98/mul_1Mul!lstm_344/lstm_cell_98/Sigmoid:y:0(lstm_344/lstm_cell_98/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_344/lstm_cell_98/add_1AddV2lstm_344/lstm_cell_98/mul:z:0lstm_344/lstm_cell_98/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_344/lstm_cell_98/Sigmoid_2Sigmoid$lstm_344/lstm_cell_98/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_344/lstm_cell_98/Relu_1Relulstm_344/lstm_cell_98/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ѕ
lstm_344/lstm_cell_98/mul_2Mul#lstm_344/lstm_cell_98/Sigmoid_2:y:0*lstm_344/lstm_cell_98/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
w
&lstm_344/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   г
lstm_344/TensorArrayV2_1TensorListReserve/lstm_344/TensorArrayV2_1/element_shape:output:0!lstm_344/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвO
lstm_344/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_344/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ]
lstm_344/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_344/whileWhile$lstm_344/while/loop_counter:output:0*lstm_344/while/maximum_iterations:output:0lstm_344/time:output:0!lstm_344/TensorArrayV2_1:handle:0lstm_344/zeros:output:0lstm_344/zeros_1:output:0!lstm_344/strided_slice_1:output:0@lstm_344/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_344_lstm_cell_98_matmul_readvariableop_resource6lstm_344_lstm_cell_98_matmul_1_readvariableop_resource5lstm_344_lstm_cell_98_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_344_while_body_596992*&
condR
lstm_344_while_cond_596991*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
9lstm_344/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   н
+lstm_344/TensorArrayV2Stack/TensorListStackTensorListStacklstm_344/while:output:3Blstm_344/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ
*
element_dtype0q
lstm_344/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџj
 lstm_344/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_344/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Д
lstm_344/strided_slice_3StridedSlice4lstm_344/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_344/strided_slice_3/stack:output:0)lstm_344/strided_slice_3/stack_1:output:0)lstm_344/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maskn
lstm_344/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Б
lstm_344/transpose_1	Transpose4lstm_344/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_344/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
d
lstm_344/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_114/MatMul/ReadVariableOpReadVariableOp(dense_114_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_114/MatMulMatMul!lstm_344/strided_slice_3:output:0'dense_114/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
 dense_114/BiasAdd/ReadVariableOpReadVariableOp)dense_114_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_114/BiasAddBiasAdddense_114/MatMul:product:0(dense_114/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџi
IdentityIdentitydense_114/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџх
NoOpNoOp!^dense_114/BiasAdd/ReadVariableOp ^dense_114/MatMul/ReadVariableOp-^lstm_342/lstm_cell_96/BiasAdd/ReadVariableOp,^lstm_342/lstm_cell_96/MatMul/ReadVariableOp.^lstm_342/lstm_cell_96/MatMul_1/ReadVariableOp^lstm_342/while-^lstm_343/lstm_cell_97/BiasAdd/ReadVariableOp,^lstm_343/lstm_cell_97/MatMul/ReadVariableOp.^lstm_343/lstm_cell_97/MatMul_1/ReadVariableOp^lstm_343/while-^lstm_344/lstm_cell_98/BiasAdd/ReadVariableOp,^lstm_344/lstm_cell_98/MatMul/ReadVariableOp.^lstm_344/lstm_cell_98/MatMul_1/ReadVariableOp^lstm_344/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 2D
 dense_114/BiasAdd/ReadVariableOp dense_114/BiasAdd/ReadVariableOp2B
dense_114/MatMul/ReadVariableOpdense_114/MatMul/ReadVariableOp2\
,lstm_342/lstm_cell_96/BiasAdd/ReadVariableOp,lstm_342/lstm_cell_96/BiasAdd/ReadVariableOp2Z
+lstm_342/lstm_cell_96/MatMul/ReadVariableOp+lstm_342/lstm_cell_96/MatMul/ReadVariableOp2^
-lstm_342/lstm_cell_96/MatMul_1/ReadVariableOp-lstm_342/lstm_cell_96/MatMul_1/ReadVariableOp2 
lstm_342/whilelstm_342/while2\
,lstm_343/lstm_cell_97/BiasAdd/ReadVariableOp,lstm_343/lstm_cell_97/BiasAdd/ReadVariableOp2Z
+lstm_343/lstm_cell_97/MatMul/ReadVariableOp+lstm_343/lstm_cell_97/MatMul/ReadVariableOp2^
-lstm_343/lstm_cell_97/MatMul_1/ReadVariableOp-lstm_343/lstm_cell_97/MatMul_1/ReadVariableOp2 
lstm_343/whilelstm_343/while2\
,lstm_344/lstm_cell_98/BiasAdd/ReadVariableOp,lstm_344/lstm_cell_98/BiasAdd/ReadVariableOp2Z
+lstm_344/lstm_cell_98/MatMul/ReadVariableOp+lstm_344/lstm_cell_98/MatMul/ReadVariableOp2^
-lstm_344/lstm_cell_98/MatMul_1/ReadVariableOp-lstm_344/lstm_cell_98/MatMul_1/ReadVariableOp2 
lstm_344/whilelstm_344/while:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ЄJ

D__inference_lstm_343_layer_call_and_return_conditional_losses_598314

inputs>
+lstm_cell_97_matmul_readvariableop_resource:	dШ@
-lstm_cell_97_matmul_1_readvariableop_resource:	2Ш;
,lstm_cell_97_biasadd_readvariableop_resource:	Ш
identityЂ#lstm_cell_97/BiasAdd/ReadVariableOpЂ"lstm_cell_97/MatMul/ReadVariableOpЂ$lstm_cell_97/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџ2R
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
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask
"lstm_cell_97/MatMul/ReadVariableOpReadVariableOp+lstm_cell_97_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0
lstm_cell_97/MatMulMatMulstrided_slice_2:output:0*lstm_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_97/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_97_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_97/MatMul_1MatMulzeros:output:0,lstm_cell_97/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_97/addAddV2lstm_cell_97/MatMul:product:0lstm_cell_97/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
#lstm_cell_97/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_97_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_97/BiasAddBiasAddlstm_cell_97/add:z:0+lstm_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_97/splitSplit%lstm_cell_97/split/split_dim:output:0lstm_cell_97/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitn
lstm_cell_97/SigmoidSigmoidlstm_cell_97/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_97/Sigmoid_1Sigmoidlstm_cell_97/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_cell_97/mulMullstm_cell_97/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2h
lstm_cell_97/ReluRelulstm_cell_97/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_97/mul_1Mullstm_cell_97/Sigmoid:y:0lstm_cell_97/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2{
lstm_cell_97/add_1AddV2lstm_cell_97/mul:z:0lstm_cell_97/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_97/Sigmoid_2Sigmoidlstm_cell_97/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2e
lstm_cell_97/Relu_1Relulstm_cell_97/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_97/mul_2Mullstm_cell_97/Sigmoid_2:y:0!lstm_cell_97/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_97_matmul_readvariableop_resource-lstm_cell_97_matmul_1_readvariableop_resource,lstm_cell_97_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_598230*
condR
while_cond_598229*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2Р
NoOpNoOp$^lstm_cell_97/BiasAdd/ReadVariableOp#^lstm_cell_97/MatMul/ReadVariableOp%^lstm_cell_97/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџd: : : 2J
#lstm_cell_97/BiasAdd/ReadVariableOp#lstm_cell_97/BiasAdd/ReadVariableOp2H
"lstm_cell_97/MatMul/ReadVariableOp"lstm_cell_97/MatMul/ReadVariableOp2L
$lstm_cell_97/MatMul_1/ReadVariableOp$lstm_cell_97/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
Ц

J__inference_sequential_114_layer_call_and_return_conditional_losses_596655

inputsG
4lstm_342_lstm_cell_96_matmul_readvariableop_resource:	I
6lstm_342_lstm_cell_96_matmul_1_readvariableop_resource:	dD
5lstm_342_lstm_cell_96_biasadd_readvariableop_resource:	G
4lstm_343_lstm_cell_97_matmul_readvariableop_resource:	dШI
6lstm_343_lstm_cell_97_matmul_1_readvariableop_resource:	2ШD
5lstm_343_lstm_cell_97_biasadd_readvariableop_resource:	ШF
4lstm_344_lstm_cell_98_matmul_readvariableop_resource:2(H
6lstm_344_lstm_cell_98_matmul_1_readvariableop_resource:
(C
5lstm_344_lstm_cell_98_biasadd_readvariableop_resource:(:
(dense_114_matmul_readvariableop_resource:
7
)dense_114_biasadd_readvariableop_resource:
identityЂ dense_114/BiasAdd/ReadVariableOpЂdense_114/MatMul/ReadVariableOpЂ,lstm_342/lstm_cell_96/BiasAdd/ReadVariableOpЂ+lstm_342/lstm_cell_96/MatMul/ReadVariableOpЂ-lstm_342/lstm_cell_96/MatMul_1/ReadVariableOpЂlstm_342/whileЂ,lstm_343/lstm_cell_97/BiasAdd/ReadVariableOpЂ+lstm_343/lstm_cell_97/MatMul/ReadVariableOpЂ-lstm_343/lstm_cell_97/MatMul_1/ReadVariableOpЂlstm_343/whileЂ,lstm_344/lstm_cell_98/BiasAdd/ReadVariableOpЂ+lstm_344/lstm_cell_98/MatMul/ReadVariableOpЂ-lstm_344/lstm_cell_98/MatMul_1/ReadVariableOpЂlstm_344/whileD
lstm_342/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_342/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_342/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_342/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
lstm_342/strided_sliceStridedSlicelstm_342/Shape:output:0%lstm_342/strided_slice/stack:output:0'lstm_342/strided_slice/stack_1:output:0'lstm_342/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_342/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_342/zeros/packedPacklstm_342/strided_slice:output:0 lstm_342/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_342/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_342/zerosFilllstm_342/zeros/packed:output:0lstm_342/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџd[
lstm_342/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_342/zeros_1/packedPacklstm_342/strided_slice:output:0"lstm_342/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_342/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_342/zeros_1Fill lstm_342/zeros_1/packed:output:0lstm_342/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdl
lstm_342/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_342/transpose	Transposeinputs lstm_342/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџV
lstm_342/Shape_1Shapelstm_342/transpose:y:0*
T0*
_output_shapes
:h
lstm_342/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_342/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_342/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_342/strided_slice_1StridedSlicelstm_342/Shape_1:output:0'lstm_342/strided_slice_1/stack:output:0)lstm_342/strided_slice_1/stack_1:output:0)lstm_342/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_342/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЯ
lstm_342/TensorArrayV2TensorListReserve-lstm_342/TensorArrayV2/element_shape:output:0!lstm_342/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
>lstm_342/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ћ
0lstm_342/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_342/transpose:y:0Glstm_342/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвh
lstm_342/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_342/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_342/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_342/strided_slice_2StridedSlicelstm_342/transpose:y:0'lstm_342/strided_slice_2/stack:output:0)lstm_342/strided_slice_2/stack_1:output:0)lstm_342/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskЁ
+lstm_342/lstm_cell_96/MatMul/ReadVariableOpReadVariableOp4lstm_342_lstm_cell_96_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Б
lstm_342/lstm_cell_96/MatMulMatMul!lstm_342/strided_slice_2:output:03lstm_342/lstm_cell_96/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЅ
-lstm_342/lstm_cell_96/MatMul_1/ReadVariableOpReadVariableOp6lstm_342_lstm_cell_96_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ћ
lstm_342/lstm_cell_96/MatMul_1MatMullstm_342/zeros:output:05lstm_342/lstm_cell_96/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЇ
lstm_342/lstm_cell_96/addAddV2&lstm_342/lstm_cell_96/MatMul:product:0(lstm_342/lstm_cell_96/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
,lstm_342/lstm_cell_96/BiasAdd/ReadVariableOpReadVariableOp5lstm_342_lstm_cell_96_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0А
lstm_342/lstm_cell_96/BiasAddBiasAddlstm_342/lstm_cell_96/add:z:04lstm_342/lstm_cell_96/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџg
%lstm_342/lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ј
lstm_342/lstm_cell_96/splitSplit.lstm_342/lstm_cell_96/split/split_dim:output:0&lstm_342/lstm_cell_96/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split
lstm_342/lstm_cell_96/SigmoidSigmoid$lstm_342/lstm_cell_96/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_342/lstm_cell_96/Sigmoid_1Sigmoid$lstm_342/lstm_cell_96/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_342/lstm_cell_96/mulMul#lstm_342/lstm_cell_96/Sigmoid_1:y:0lstm_342/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdz
lstm_342/lstm_cell_96/ReluRelu$lstm_342/lstm_cell_96/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdЁ
lstm_342/lstm_cell_96/mul_1Mul!lstm_342/lstm_cell_96/Sigmoid:y:0(lstm_342/lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_342/lstm_cell_96/add_1AddV2lstm_342/lstm_cell_96/mul:z:0lstm_342/lstm_cell_96/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_342/lstm_cell_96/Sigmoid_2Sigmoid$lstm_342/lstm_cell_96/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_342/lstm_cell_96/Relu_1Relulstm_342/lstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdЅ
lstm_342/lstm_cell_96/mul_2Mul#lstm_342/lstm_cell_96/Sigmoid_2:y:0*lstm_342/lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdw
&lstm_342/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   г
lstm_342/TensorArrayV2_1TensorListReserve/lstm_342/TensorArrayV2_1/element_shape:output:0!lstm_342/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвO
lstm_342/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_342/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ]
lstm_342/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_342/whileWhile$lstm_342/while/loop_counter:output:0*lstm_342/while/maximum_iterations:output:0lstm_342/time:output:0!lstm_342/TensorArrayV2_1:handle:0lstm_342/zeros:output:0lstm_342/zeros_1:output:0!lstm_342/strided_slice_1:output:0@lstm_342/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_342_lstm_cell_96_matmul_readvariableop_resource6lstm_342_lstm_cell_96_matmul_1_readvariableop_resource5lstm_342_lstm_cell_96_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_342_while_body_596287*&
condR
lstm_342_while_cond_596286*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
9lstm_342/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   н
+lstm_342/TensorArrayV2Stack/TensorListStackTensorListStacklstm_342/while:output:3Blstm_342/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0q
lstm_342/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџj
 lstm_342/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_342/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Д
lstm_342/strided_slice_3StridedSlice4lstm_342/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_342/strided_slice_3/stack:output:0)lstm_342/strided_slice_3/stack_1:output:0)lstm_342/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskn
lstm_342/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Б
lstm_342/transpose_1	Transpose4lstm_342/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_342/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdd
lstm_342/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_343/ShapeShapelstm_342/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_343/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_343/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_343/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
lstm_343/strided_sliceStridedSlicelstm_343/Shape:output:0%lstm_343/strided_slice/stack:output:0'lstm_343/strided_slice/stack_1:output:0'lstm_343/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_343/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_343/zeros/packedPacklstm_343/strided_slice:output:0 lstm_343/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_343/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_343/zerosFilllstm_343/zeros/packed:output:0lstm_343/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2[
lstm_343/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_343/zeros_1/packedPacklstm_343/strided_slice:output:0"lstm_343/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_343/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_343/zeros_1Fill lstm_343/zeros_1/packed:output:0lstm_343/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2l
lstm_343/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_343/transpose	Transposelstm_342/transpose_1:y:0 lstm_343/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdV
lstm_343/Shape_1Shapelstm_343/transpose:y:0*
T0*
_output_shapes
:h
lstm_343/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_343/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_343/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_343/strided_slice_1StridedSlicelstm_343/Shape_1:output:0'lstm_343/strided_slice_1/stack:output:0)lstm_343/strided_slice_1/stack_1:output:0)lstm_343/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_343/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЯ
lstm_343/TensorArrayV2TensorListReserve-lstm_343/TensorArrayV2/element_shape:output:0!lstm_343/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
>lstm_343/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ћ
0lstm_343/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_343/transpose:y:0Glstm_343/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвh
lstm_343/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_343/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_343/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_343/strided_slice_2StridedSlicelstm_343/transpose:y:0'lstm_343/strided_slice_2/stack:output:0)lstm_343/strided_slice_2/stack_1:output:0)lstm_343/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskЁ
+lstm_343/lstm_cell_97/MatMul/ReadVariableOpReadVariableOp4lstm_343_lstm_cell_97_matmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0Б
lstm_343/lstm_cell_97/MatMulMatMul!lstm_343/strided_slice_2:output:03lstm_343/lstm_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЅ
-lstm_343/lstm_cell_97/MatMul_1/ReadVariableOpReadVariableOp6lstm_343_lstm_cell_97_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0Ћ
lstm_343/lstm_cell_97/MatMul_1MatMullstm_343/zeros:output:05lstm_343/lstm_cell_97/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЇ
lstm_343/lstm_cell_97/addAddV2&lstm_343/lstm_cell_97/MatMul:product:0(lstm_343/lstm_cell_97/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
,lstm_343/lstm_cell_97/BiasAdd/ReadVariableOpReadVariableOp5lstm_343_lstm_cell_97_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0А
lstm_343/lstm_cell_97/BiasAddBiasAddlstm_343/lstm_cell_97/add:z:04lstm_343/lstm_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШg
%lstm_343/lstm_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ј
lstm_343/lstm_cell_97/splitSplit.lstm_343/lstm_cell_97/split/split_dim:output:0&lstm_343/lstm_cell_97/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split
lstm_343/lstm_cell_97/SigmoidSigmoid$lstm_343/lstm_cell_97/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_343/lstm_cell_97/Sigmoid_1Sigmoid$lstm_343/lstm_cell_97/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_343/lstm_cell_97/mulMul#lstm_343/lstm_cell_97/Sigmoid_1:y:0lstm_343/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2z
lstm_343/lstm_cell_97/ReluRelu$lstm_343/lstm_cell_97/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
lstm_343/lstm_cell_97/mul_1Mul!lstm_343/lstm_cell_97/Sigmoid:y:0(lstm_343/lstm_cell_97/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_343/lstm_cell_97/add_1AddV2lstm_343/lstm_cell_97/mul:z:0lstm_343/lstm_cell_97/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_343/lstm_cell_97/Sigmoid_2Sigmoid$lstm_343/lstm_cell_97/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_343/lstm_cell_97/Relu_1Relulstm_343/lstm_cell_97/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
lstm_343/lstm_cell_97/mul_2Mul#lstm_343/lstm_cell_97/Sigmoid_2:y:0*lstm_343/lstm_cell_97/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2w
&lstm_343/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   г
lstm_343/TensorArrayV2_1TensorListReserve/lstm_343/TensorArrayV2_1/element_shape:output:0!lstm_343/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвO
lstm_343/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_343/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ]
lstm_343/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_343/whileWhile$lstm_343/while/loop_counter:output:0*lstm_343/while/maximum_iterations:output:0lstm_343/time:output:0!lstm_343/TensorArrayV2_1:handle:0lstm_343/zeros:output:0lstm_343/zeros_1:output:0!lstm_343/strided_slice_1:output:0@lstm_343/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_343_lstm_cell_97_matmul_readvariableop_resource6lstm_343_lstm_cell_97_matmul_1_readvariableop_resource5lstm_343_lstm_cell_97_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_343_while_body_596426*&
condR
lstm_343_while_cond_596425*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
9lstm_343/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   н
+lstm_343/TensorArrayV2Stack/TensorListStackTensorListStacklstm_343/while:output:3Blstm_343/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0q
lstm_343/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџj
 lstm_343/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_343/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Д
lstm_343/strided_slice_3StridedSlice4lstm_343/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_343/strided_slice_3/stack:output:0)lstm_343/strided_slice_3/stack_1:output:0)lstm_343/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskn
lstm_343/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Б
lstm_343/transpose_1	Transpose4lstm_343/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_343/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2d
lstm_343/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_344/ShapeShapelstm_343/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_344/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_344/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_344/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
lstm_344/strided_sliceStridedSlicelstm_344/Shape:output:0%lstm_344/strided_slice/stack:output:0'lstm_344/strided_slice/stack_1:output:0'lstm_344/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_344/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_344/zeros/packedPacklstm_344/strided_slice:output:0 lstm_344/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_344/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_344/zerosFilllstm_344/zeros/packed:output:0lstm_344/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
[
lstm_344/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

lstm_344/zeros_1/packedPacklstm_344/strided_slice:output:0"lstm_344/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_344/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_344/zeros_1Fill lstm_344/zeros_1/packed:output:0lstm_344/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
l
lstm_344/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_344/transpose	Transposelstm_343/transpose_1:y:0 lstm_344/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2V
lstm_344/Shape_1Shapelstm_344/transpose:y:0*
T0*
_output_shapes
:h
lstm_344/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_344/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_344/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_344/strided_slice_1StridedSlicelstm_344/Shape_1:output:0'lstm_344/strided_slice_1/stack:output:0)lstm_344/strided_slice_1/stack_1:output:0)lstm_344/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_344/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЯ
lstm_344/TensorArrayV2TensorListReserve-lstm_344/TensorArrayV2/element_shape:output:0!lstm_344/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
>lstm_344/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ћ
0lstm_344/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_344/transpose:y:0Glstm_344/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвh
lstm_344/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_344/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_344/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_344/strided_slice_2StridedSlicelstm_344/transpose:y:0'lstm_344/strided_slice_2/stack:output:0)lstm_344/strided_slice_2/stack_1:output:0)lstm_344/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask 
+lstm_344/lstm_cell_98/MatMul/ReadVariableOpReadVariableOp4lstm_344_lstm_cell_98_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0А
lstm_344/lstm_cell_98/MatMulMatMul!lstm_344/strided_slice_2:output:03lstm_344/lstm_cell_98/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(Є
-lstm_344/lstm_cell_98/MatMul_1/ReadVariableOpReadVariableOp6lstm_344_lstm_cell_98_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Њ
lstm_344/lstm_cell_98/MatMul_1MatMullstm_344/zeros:output:05lstm_344/lstm_cell_98/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(І
lstm_344/lstm_cell_98/addAddV2&lstm_344/lstm_cell_98/MatMul:product:0(lstm_344/lstm_cell_98/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
,lstm_344/lstm_cell_98/BiasAdd/ReadVariableOpReadVariableOp5lstm_344_lstm_cell_98_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Џ
lstm_344/lstm_cell_98/BiasAddBiasAddlstm_344/lstm_cell_98/add:z:04lstm_344/lstm_cell_98/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(g
%lstm_344/lstm_cell_98/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ј
lstm_344/lstm_cell_98/splitSplit.lstm_344/lstm_cell_98/split/split_dim:output:0&lstm_344/lstm_cell_98/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_split
lstm_344/lstm_cell_98/SigmoidSigmoid$lstm_344/lstm_cell_98/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_344/lstm_cell_98/Sigmoid_1Sigmoid$lstm_344/lstm_cell_98/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_344/lstm_cell_98/mulMul#lstm_344/lstm_cell_98/Sigmoid_1:y:0lstm_344/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
z
lstm_344/lstm_cell_98/ReluRelu$lstm_344/lstm_cell_98/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
Ё
lstm_344/lstm_cell_98/mul_1Mul!lstm_344/lstm_cell_98/Sigmoid:y:0(lstm_344/lstm_cell_98/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_344/lstm_cell_98/add_1AddV2lstm_344/lstm_cell_98/mul:z:0lstm_344/lstm_cell_98/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_344/lstm_cell_98/Sigmoid_2Sigmoid$lstm_344/lstm_cell_98/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_344/lstm_cell_98/Relu_1Relulstm_344/lstm_cell_98/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
Ѕ
lstm_344/lstm_cell_98/mul_2Mul#lstm_344/lstm_cell_98/Sigmoid_2:y:0*lstm_344/lstm_cell_98/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
w
&lstm_344/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   г
lstm_344/TensorArrayV2_1TensorListReserve/lstm_344/TensorArrayV2_1/element_shape:output:0!lstm_344/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвO
lstm_344/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_344/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ]
lstm_344/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_344/whileWhile$lstm_344/while/loop_counter:output:0*lstm_344/while/maximum_iterations:output:0lstm_344/time:output:0!lstm_344/TensorArrayV2_1:handle:0lstm_344/zeros:output:0lstm_344/zeros_1:output:0!lstm_344/strided_slice_1:output:0@lstm_344/TensorArrayUnstack/TensorListFromTensor:output_handle:04lstm_344_lstm_cell_98_matmul_readvariableop_resource6lstm_344_lstm_cell_98_matmul_1_readvariableop_resource5lstm_344_lstm_cell_98_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_344_while_body_596565*&
condR
lstm_344_while_cond_596564*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
9lstm_344/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   н
+lstm_344/TensorArrayV2Stack/TensorListStackTensorListStacklstm_344/while:output:3Blstm_344/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ
*
element_dtype0q
lstm_344/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџj
 lstm_344/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_344/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Д
lstm_344/strided_slice_3StridedSlice4lstm_344/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_344/strided_slice_3/stack:output:0)lstm_344/strided_slice_3/stack_1:output:0)lstm_344/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maskn
lstm_344/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Б
lstm_344/transpose_1	Transpose4lstm_344/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_344/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
d
lstm_344/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_114/MatMul/ReadVariableOpReadVariableOp(dense_114_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_114/MatMulMatMul!lstm_344/strided_slice_3:output:0'dense_114/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
 dense_114/BiasAdd/ReadVariableOpReadVariableOp)dense_114_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_114/BiasAddBiasAdddense_114/MatMul:product:0(dense_114/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџi
IdentityIdentitydense_114/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџх
NoOpNoOp!^dense_114/BiasAdd/ReadVariableOp ^dense_114/MatMul/ReadVariableOp-^lstm_342/lstm_cell_96/BiasAdd/ReadVariableOp,^lstm_342/lstm_cell_96/MatMul/ReadVariableOp.^lstm_342/lstm_cell_96/MatMul_1/ReadVariableOp^lstm_342/while-^lstm_343/lstm_cell_97/BiasAdd/ReadVariableOp,^lstm_343/lstm_cell_97/MatMul/ReadVariableOp.^lstm_343/lstm_cell_97/MatMul_1/ReadVariableOp^lstm_343/while-^lstm_344/lstm_cell_98/BiasAdd/ReadVariableOp,^lstm_344/lstm_cell_98/MatMul/ReadVariableOp.^lstm_344/lstm_cell_98/MatMul_1/ReadVariableOp^lstm_344/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 2D
 dense_114/BiasAdd/ReadVariableOp dense_114/BiasAdd/ReadVariableOp2B
dense_114/MatMul/ReadVariableOpdense_114/MatMul/ReadVariableOp2\
,lstm_342/lstm_cell_96/BiasAdd/ReadVariableOp,lstm_342/lstm_cell_96/BiasAdd/ReadVariableOp2Z
+lstm_342/lstm_cell_96/MatMul/ReadVariableOp+lstm_342/lstm_cell_96/MatMul/ReadVariableOp2^
-lstm_342/lstm_cell_96/MatMul_1/ReadVariableOp-lstm_342/lstm_cell_96/MatMul_1/ReadVariableOp2 
lstm_342/whilelstm_342/while2\
,lstm_343/lstm_cell_97/BiasAdd/ReadVariableOp,lstm_343/lstm_cell_97/BiasAdd/ReadVariableOp2Z
+lstm_343/lstm_cell_97/MatMul/ReadVariableOp+lstm_343/lstm_cell_97/MatMul/ReadVariableOp2^
-lstm_343/lstm_cell_97/MatMul_1/ReadVariableOp-lstm_343/lstm_cell_97/MatMul_1/ReadVariableOp2 
lstm_343/whilelstm_343/while2\
,lstm_344/lstm_cell_98/BiasAdd/ReadVariableOp,lstm_344/lstm_cell_98/BiasAdd/ReadVariableOp2Z
+lstm_344/lstm_cell_98/MatMul/ReadVariableOp+lstm_344/lstm_cell_98/MatMul/ReadVariableOp2^
-lstm_344/lstm_cell_98/MatMul_1/ReadVariableOp-lstm_344/lstm_cell_98/MatMul_1/ReadVariableOp2 
lstm_344/whilelstm_344/while:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ф

*__inference_dense_114_layer_call_fn_598939

inputs
unknown:

	unknown_0:
identityЂStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_114_layer_call_and_return_conditional_losses_595431o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
тJ

D__inference_lstm_342_layer_call_and_return_conditional_losses_597412
inputs_0>
+lstm_cell_96_matmul_readvariableop_resource:	@
-lstm_cell_96_matmul_1_readvariableop_resource:	d;
,lstm_cell_96_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_96/BiasAdd/ReadVariableOpЂ"lstm_cell_96/MatMul/ReadVariableOpЂ$lstm_cell_96/MatMul_1/ReadVariableOpЂwhile=
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
valueB:б
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
:џџџџџџџџџdR
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
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_96/MatMul/ReadVariableOpReadVariableOp+lstm_cell_96_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_96/MatMulMatMulstrided_slice_2:output:0*lstm_cell_96/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_96/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_96_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_96/MatMul_1MatMulzeros:output:0,lstm_cell_96/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_96/addAddV2lstm_cell_96/MatMul:product:0lstm_cell_96/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_96/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_96_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_96/BiasAddBiasAddlstm_cell_96/add:z:0+lstm_cell_96/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_96/splitSplit%lstm_cell_96/split/split_dim:output:0lstm_cell_96/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_96/SigmoidSigmoidlstm_cell_96/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_96/Sigmoid_1Sigmoidlstm_cell_96/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_96/mulMullstm_cell_96/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_96/ReluRelulstm_cell_96/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_96/mul_1Mullstm_cell_96/Sigmoid:y:0lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_96/add_1AddV2lstm_cell_96/mul:z:0lstm_cell_96/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_96/Sigmoid_2Sigmoidlstm_cell_96/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_96/Relu_1Relulstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_96/mul_2Mullstm_cell_96/Sigmoid_2:y:0!lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_96_matmul_readvariableop_resource-lstm_cell_96_matmul_1_readvariableop_resource,lstm_cell_96_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_597328*
condR
while_cond_597327*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџdР
NoOpNoOp$^lstm_cell_96/BiasAdd/ReadVariableOp#^lstm_cell_96/MatMul/ReadVariableOp%^lstm_cell_96/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2J
#lstm_cell_96/BiasAdd/ReadVariableOp#lstm_cell_96/BiasAdd/ReadVariableOp2H
"lstm_cell_96/MatMul/ReadVariableOp"lstm_cell_96/MatMul/ReadVariableOp2L
$lstm_cell_96/MatMul_1/ReadVariableOp$lstm_cell_96/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
В

ї
lstm_344_while_cond_596991.
*lstm_344_while_lstm_344_while_loop_counter4
0lstm_344_while_lstm_344_while_maximum_iterations
lstm_344_while_placeholder 
lstm_344_while_placeholder_1 
lstm_344_while_placeholder_2 
lstm_344_while_placeholder_30
,lstm_344_while_less_lstm_344_strided_slice_1F
Blstm_344_while_lstm_344_while_cond_596991___redundant_placeholder0F
Blstm_344_while_lstm_344_while_cond_596991___redundant_placeholder1F
Blstm_344_while_lstm_344_while_cond_596991___redundant_placeholder2F
Blstm_344_while_lstm_344_while_cond_596991___redundant_placeholder3
lstm_344_while_identity

lstm_344/while/LessLesslstm_344_while_placeholder,lstm_344_while_less_lstm_344_strided_slice_1*
T0*
_output_shapes
: ]
lstm_344/while/IdentityIdentitylstm_344/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_344_while_identity lstm_344/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
В

ї
lstm_344_while_cond_596564.
*lstm_344_while_lstm_344_while_loop_counter4
0lstm_344_while_lstm_344_while_maximum_iterations
lstm_344_while_placeholder 
lstm_344_while_placeholder_1 
lstm_344_while_placeholder_2 
lstm_344_while_placeholder_30
,lstm_344_while_less_lstm_344_strided_slice_1F
Blstm_344_while_lstm_344_while_cond_596564___redundant_placeholder0F
Blstm_344_while_lstm_344_while_cond_596564___redundant_placeholder1F
Blstm_344_while_lstm_344_while_cond_596564___redundant_placeholder2F
Blstm_344_while_lstm_344_while_cond_596564___redundant_placeholder3
lstm_344_while_identity

lstm_344/while/LessLesslstm_344_while_placeholder,lstm_344_while_less_lstm_344_strided_slice_1*
T0*
_output_shapes
: ]
lstm_344/while/IdentityIdentitylstm_344/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_344_while_identity lstm_344/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
н

H__inference_lstm_cell_97_layer_call_and_return_conditional_losses_599145

inputs
states_0
states_11
matmul_readvariableop_resource:	dШ3
 matmul_1_readvariableop_resource:	2Ш.
biasadd_readvariableop_resource:	Ш
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dШ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd:џџџџџџџџџ2:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/1

Е
)__inference_lstm_344_layer_call_fn_598336
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identityЂStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_344_layer_call_and_return_conditional_losses_594955o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs/0
Е
У
while_cond_595709
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_595709___redundant_placeholder04
0while_while_cond_595709___redundant_placeholder14
0while_while_cond_595709___redundant_placeholder24
0while_while_cond_595709___redundant_placeholder3
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
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
Ш	
і
E__inference_dense_114_layer_call_and_return_conditional_losses_598949

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs

Ж
)__inference_lstm_343_layer_call_fn_597742

inputs
unknown:	dШ
	unknown_0:	2Ш
	unknown_1:	Ш
identityЂStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_343_layer_call_and_return_conditional_losses_595794s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
8

D__inference_lstm_343_layer_call_and_return_conditional_losses_594414

inputs&
lstm_cell_97_594332:	dШ&
lstm_cell_97_594334:	2Ш"
lstm_cell_97_594336:	Ш
identityЂ$lstm_cell_97/StatefulPartitionedCallЂwhile;
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
valueB:б
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
:џџџџџџџџџ2R
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
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџdD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskѕ
$lstm_cell_97/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_97_594332lstm_cell_97_594334lstm_cell_97_594336*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_97_layer_call_and_return_conditional_losses_594331n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : З
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_97_594332lstm_cell_97_594334lstm_cell_97_594336*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_594345*
condR
while_cond_594344*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2u
NoOpNoOp%^lstm_cell_97/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџd: : : 2L
$lstm_cell_97/StatefulPartitionedCall$lstm_cell_97/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџd
 
_user_specified_nameinputs
дJ

D__inference_lstm_344_layer_call_and_return_conditional_losses_598644
inputs_0=
+lstm_cell_98_matmul_readvariableop_resource:2(?
-lstm_cell_98_matmul_1_readvariableop_resource:
(:
,lstm_cell_98_biasadd_readvariableop_resource:(
identityЂ#lstm_cell_98/BiasAdd/ReadVariableOpЂ"lstm_cell_98/MatMul/ReadVariableOpЂ$lstm_cell_98/MatMul_1/ReadVariableOpЂwhile=
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
valueB:б
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
:џџџџџџџџџ
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
:џџџџџџџџџ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2D
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
"lstm_cell_98/MatMul/ReadVariableOpReadVariableOp+lstm_cell_98_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_98/MatMulMatMulstrided_slice_2:output:0*lstm_cell_98/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
$lstm_cell_98/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_98_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_98/MatMul_1MatMulzeros:output:0,lstm_cell_98/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
lstm_cell_98/addAddV2lstm_cell_98/MatMul:product:0lstm_cell_98/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
#lstm_cell_98/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_98_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_98/BiasAddBiasAddlstm_cell_98/add:z:0+lstm_cell_98/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(^
lstm_cell_98/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_98/splitSplit%lstm_cell_98/split/split_dim:output:0lstm_cell_98/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitn
lstm_cell_98/SigmoidSigmoidlstm_cell_98/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_98/Sigmoid_1Sigmoidlstm_cell_98/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
w
lstm_cell_98/mulMullstm_cell_98/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
h
lstm_cell_98/ReluRelulstm_cell_98/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_98/mul_1Mullstm_cell_98/Sigmoid:y:0lstm_cell_98/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
{
lstm_cell_98/add_1AddV2lstm_cell_98/mul:z:0lstm_cell_98/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
lstm_cell_98/Sigmoid_2Sigmoidlstm_cell_98/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
e
lstm_cell_98/Relu_1Relulstm_cell_98/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

lstm_cell_98/mul_2Mullstm_cell_98/Sigmoid_2:y:0!lstm_cell_98/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_98_matmul_readvariableop_resource-lstm_cell_98_matmul_1_readvariableop_resource,lstm_cell_98_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_598560*
condR
while_cond_598559*K
output_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ
   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
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
:џџџџџџџџџ
Р
NoOpNoOp$^lstm_cell_98/BiasAdd/ReadVariableOp#^lstm_cell_98/MatMul/ReadVariableOp%^lstm_cell_98/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2J
#lstm_cell_98/BiasAdd/ReadVariableOp#lstm_cell_98/BiasAdd/ReadVariableOp2H
"lstm_cell_98/MatMul/ReadVariableOp"lstm_cell_98/MatMul/ReadVariableOp2L
$lstm_cell_98/MatMul_1/ReadVariableOp$lstm_cell_98/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs/0
Е
У
while_cond_594694
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_594694___redundant_placeholder04
0while_while_cond_594694___redundant_placeholder14
0while_while_cond_594694___redundant_placeholder24
0while_while_cond_594694___redundant_placeholder3
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
@: : : : :џџџџџџџџџ
:џџџџџџџџџ
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
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
:
Я
ї
J__inference_sequential_114_layer_call_and_return_conditional_losses_596109
lstm_342_input"
lstm_342_596082:	"
lstm_342_596084:	d
lstm_342_596086:	"
lstm_343_596089:	dШ"
lstm_343_596091:	2Ш
lstm_343_596093:	Ш!
lstm_344_596096:2(!
lstm_344_596098:
(
lstm_344_596100:("
dense_114_596103:

dense_114_596105:
identityЂ!dense_114/StatefulPartitionedCallЂ lstm_342/StatefulPartitionedCallЂ lstm_343/StatefulPartitionedCallЂ lstm_344/StatefulPartitionedCall
 lstm_342/StatefulPartitionedCallStatefulPartitionedCalllstm_342_inputlstm_342_596082lstm_342_596084lstm_342_596086*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_342_layer_call_and_return_conditional_losses_595113Њ
 lstm_343/StatefulPartitionedCallStatefulPartitionedCall)lstm_342/StatefulPartitionedCall:output:0lstm_343_596089lstm_343_596091lstm_343_596093*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_343_layer_call_and_return_conditional_losses_595263І
 lstm_344/StatefulPartitionedCallStatefulPartitionedCall)lstm_343/StatefulPartitionedCall:output:0lstm_344_596096lstm_344_596098lstm_344_596100*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_344_layer_call_and_return_conditional_losses_595413
!dense_114/StatefulPartitionedCallStatefulPartitionedCall)lstm_344/StatefulPartitionedCall:output:0dense_114_596103dense_114_596105*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_114_layer_call_and_return_conditional_losses_595431y
IdentityIdentity*dense_114/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџг
NoOpNoOp"^dense_114/StatefulPartitionedCall!^lstm_342/StatefulPartitionedCall!^lstm_343/StatefulPartitionedCall!^lstm_344/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџ: : : : : : : : : : : 2F
!dense_114/StatefulPartitionedCall!dense_114/StatefulPartitionedCall2D
 lstm_342/StatefulPartitionedCall lstm_342/StatefulPartitionedCall2D
 lstm_343/StatefulPartitionedCall lstm_343/StatefulPartitionedCall2D
 lstm_344/StatefulPartitionedCall lstm_344/StatefulPartitionedCall:[ W
+
_output_shapes
:џџџџџџџџџ
(
_user_specified_namelstm_342_input
џ7
Ъ
while_body_595329
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_98_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_98_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_98_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_98_matmul_readvariableop_resource:2(E
3while_lstm_cell_98_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_98_biasadd_readvariableop_resource:(Ђ)while/lstm_cell_98/BiasAdd/ReadVariableOpЂ(while/lstm_cell_98/MatMul/ReadVariableOpЂ*while/lstm_cell_98/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
(while/lstm_cell_98/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_98_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Й
while/lstm_cell_98/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_98/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ( 
*while/lstm_cell_98/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_98_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_98/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_98/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
while/lstm_cell_98/addAddV2#while/lstm_cell_98/MatMul:product:0%while/lstm_cell_98/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
)while/lstm_cell_98/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_98_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0І
while/lstm_cell_98/BiasAddBiasAddwhile/lstm_cell_98/add:z:01while/lstm_cell_98/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
"while/lstm_cell_98/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_98/splitSplit+while/lstm_cell_98/split/split_dim:output:0#while/lstm_cell_98/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitz
while/lstm_cell_98/SigmoidSigmoid!while/lstm_cell_98/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_98/Sigmoid_1Sigmoid!while/lstm_cell_98/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_98/mulMul while/lstm_cell_98/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
t
while/lstm_cell_98/ReluRelu!while/lstm_cell_98/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_98/mul_1Mulwhile/lstm_cell_98/Sigmoid:y:0%while/lstm_cell_98/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_98/add_1AddV2while/lstm_cell_98/mul:z:0while/lstm_cell_98/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_98/Sigmoid_2Sigmoid!while/lstm_cell_98/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
q
while/lstm_cell_98/Relu_1Reluwhile/lstm_cell_98/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_98/mul_2Mul while/lstm_cell_98/Sigmoid_2:y:0'while/lstm_cell_98/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_98/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_98/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
y
while/Identity_5Identitywhile/lstm_cell_98/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
а

while/NoOpNoOp*^while/lstm_cell_98/BiasAdd/ReadVariableOp)^while/lstm_cell_98/MatMul/ReadVariableOp+^while/lstm_cell_98/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_98_biasadd_readvariableop_resource4while_lstm_cell_98_biasadd_readvariableop_resource_0"l
3while_lstm_cell_98_matmul_1_readvariableop_resource5while_lstm_cell_98_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_98_matmul_readvariableop_resource3while_lstm_cell_98_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2V
)while/lstm_cell_98/BiasAdd/ReadVariableOp)while/lstm_cell_98/BiasAdd/ReadVariableOp2T
(while/lstm_cell_98/MatMul/ReadVariableOp(while/lstm_cell_98/MatMul/ReadVariableOp2X
*while/lstm_cell_98/MatMul_1/ReadVariableOp*while/lstm_cell_98/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
н

H__inference_lstm_cell_96_layer_call_and_return_conditional_losses_599047

inputs
states_0
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџd:џџџџџџџџџd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/1
ЄJ

D__inference_lstm_342_layer_call_and_return_conditional_losses_597698

inputs>
+lstm_cell_96_matmul_readvariableop_resource:	@
-lstm_cell_96_matmul_1_readvariableop_resource:	d;
,lstm_cell_96_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_96/BiasAdd/ReadVariableOpЂ"lstm_cell_96/MatMul/ReadVariableOpЂ$lstm_cell_96/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
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
:џџџџџџџџџdR
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
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_96/MatMul/ReadVariableOpReadVariableOp+lstm_cell_96_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_96/MatMulMatMulstrided_slice_2:output:0*lstm_cell_96/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_96/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_96_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_96/MatMul_1MatMulzeros:output:0,lstm_cell_96/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_96/addAddV2lstm_cell_96/MatMul:product:0lstm_cell_96/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_96/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_96_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_96/BiasAddBiasAddlstm_cell_96/add:z:0+lstm_cell_96/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_96/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_96/splitSplit%lstm_cell_96/split/split_dim:output:0lstm_cell_96/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_96/SigmoidSigmoidlstm_cell_96/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_96/Sigmoid_1Sigmoidlstm_cell_96/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_96/mulMullstm_cell_96/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_96/ReluRelulstm_cell_96/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_96/mul_1Mullstm_cell_96/Sigmoid:y:0lstm_cell_96/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_96/add_1AddV2lstm_cell_96/mul:z:0lstm_cell_96/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_96/Sigmoid_2Sigmoidlstm_cell_96/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_96/Relu_1Relulstm_cell_96/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_96/mul_2Mullstm_cell_96/Sigmoid_2:y:0!lstm_cell_96/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_96_matmul_readvariableop_resource-lstm_cell_96_matmul_1_readvariableop_resource,lstm_cell_96_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_597614*
condR
while_cond_597613*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџdР
NoOpNoOp$^lstm_cell_96/BiasAdd/ReadVariableOp#^lstm_cell_96/MatMul/ReadVariableOp%^lstm_cell_96/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2J
#lstm_cell_96/BiasAdd/ReadVariableOp#lstm_cell_96/BiasAdd/ReadVariableOp2H
"lstm_cell_96/MatMul/ReadVariableOp"lstm_cell_96/MatMul/ReadVariableOp2L
$lstm_cell_96/MatMul_1/ReadVariableOp$lstm_cell_96/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
џ7
Ъ
while_body_598417
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_98_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_98_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_98_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_98_matmul_readvariableop_resource:2(E
3while_lstm_cell_98_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_98_biasadd_readvariableop_resource:(Ђ)while/lstm_cell_98/BiasAdd/ReadVariableOpЂ(while/lstm_cell_98/MatMul/ReadVariableOpЂ*while/lstm_cell_98/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
(while/lstm_cell_98/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_98_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Й
while/lstm_cell_98/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_98/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ( 
*while/lstm_cell_98/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_98_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_98/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_98/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
while/lstm_cell_98/addAddV2#while/lstm_cell_98/MatMul:product:0%while/lstm_cell_98/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
)while/lstm_cell_98/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_98_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0І
while/lstm_cell_98/BiasAddBiasAddwhile/lstm_cell_98/add:z:01while/lstm_cell_98/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
"while/lstm_cell_98/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_98/splitSplit+while/lstm_cell_98/split/split_dim:output:0#while/lstm_cell_98/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitz
while/lstm_cell_98/SigmoidSigmoid!while/lstm_cell_98/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_98/Sigmoid_1Sigmoid!while/lstm_cell_98/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_98/mulMul while/lstm_cell_98/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
t
while/lstm_cell_98/ReluRelu!while/lstm_cell_98/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_98/mul_1Mulwhile/lstm_cell_98/Sigmoid:y:0%while/lstm_cell_98/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_98/add_1AddV2while/lstm_cell_98/mul:z:0while/lstm_cell_98/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_98/Sigmoid_2Sigmoid!while/lstm_cell_98/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
q
while/lstm_cell_98/Relu_1Reluwhile/lstm_cell_98/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_98/mul_2Mul while/lstm_cell_98/Sigmoid_2:y:0'while/lstm_cell_98/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_98/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_98/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
y
while/Identity_5Identitywhile/lstm_cell_98/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
а

while/NoOpNoOp*^while/lstm_cell_98/BiasAdd/ReadVariableOp)^while/lstm_cell_98/MatMul/ReadVariableOp+^while/lstm_cell_98/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_98_biasadd_readvariableop_resource4while_lstm_cell_98_biasadd_readvariableop_resource_0"l
3while_lstm_cell_98_matmul_1_readvariableop_resource5while_lstm_cell_98_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_98_matmul_readvariableop_resource3while_lstm_cell_98_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2V
)while/lstm_cell_98/BiasAdd/ReadVariableOp)while/lstm_cell_98/BiasAdd/ReadVariableOp2T
(while/lstm_cell_98/MatMul/ReadVariableOp(while/lstm_cell_98/MatMul/ReadVariableOp2X
*while/lstm_cell_98/MatMul_1/ReadVariableOp*while/lstm_cell_98/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
Е
У
while_cond_594344
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_594344___redundant_placeholder04
0while_while_cond_594344___redundant_placeholder14
0while_while_cond_594344___redundant_placeholder24
0while_while_cond_594344___redundant_placeholder3
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
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
џ7
Ъ
while_body_598560
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_98_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_98_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_98_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_98_matmul_readvariableop_resource:2(E
3while_lstm_cell_98_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_98_biasadd_readvariableop_resource:(Ђ)while/lstm_cell_98/BiasAdd/ReadVariableOpЂ(while/lstm_cell_98/MatMul/ReadVariableOpЂ*while/lstm_cell_98/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
(while/lstm_cell_98/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_98_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Й
while/lstm_cell_98/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_98/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ( 
*while/lstm_cell_98/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_98_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_98/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_98/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
while/lstm_cell_98/addAddV2#while/lstm_cell_98/MatMul:product:0%while/lstm_cell_98/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ(
)while/lstm_cell_98/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_98_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0І
while/lstm_cell_98/BiasAddBiasAddwhile/lstm_cell_98/add:z:01while/lstm_cell_98/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(d
"while/lstm_cell_98/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_98/splitSplit+while/lstm_cell_98/split/split_dim:output:0#while/lstm_cell_98/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
:џџџџџџџџџ
*
	num_splitz
while/lstm_cell_98/SigmoidSigmoid!while/lstm_cell_98/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_98/Sigmoid_1Sigmoid!while/lstm_cell_98/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_98/mulMul while/lstm_cell_98/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
t
while/lstm_cell_98/ReluRelu!while/lstm_cell_98/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_98/mul_1Mulwhile/lstm_cell_98/Sigmoid:y:0%while/lstm_cell_98/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_98/add_1AddV2while/lstm_cell_98/mul:z:0while/lstm_cell_98/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
|
while/lstm_cell_98/Sigmoid_2Sigmoid!while/lstm_cell_98/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
q
while/lstm_cell_98/Relu_1Reluwhile/lstm_cell_98/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ

while/lstm_cell_98/mul_2Mul while/lstm_cell_98/Sigmoid_2:y:0'while/lstm_cell_98/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
Х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_98/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_98/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
y
while/Identity_5Identitywhile/lstm_cell_98/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
а

while/NoOpNoOp*^while/lstm_cell_98/BiasAdd/ReadVariableOp)^while/lstm_cell_98/MatMul/ReadVariableOp+^while/lstm_cell_98/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_98_biasadd_readvariableop_resource4while_lstm_cell_98_biasadd_readvariableop_resource_0"l
3while_lstm_cell_98_matmul_1_readvariableop_resource5while_lstm_cell_98_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_98_matmul_readvariableop_resource3while_lstm_cell_98_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ
:џџџџџџџџџ
: : : : : 2V
)while/lstm_cell_98/BiasAdd/ReadVariableOp)while/lstm_cell_98/BiasAdd/ReadVariableOp2T
(while/lstm_cell_98/MatMul/ReadVariableOp(while/lstm_cell_98/MatMul/ReadVariableOp2X
*while/lstm_cell_98/MatMul_1/ReadVariableOp*while/lstm_cell_98/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
:-)
'
_output_shapes
:џџџџџџџџџ
:

_output_shapes
: :

_output_shapes
: 
Е
У
while_cond_595178
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_595178___redundant_placeholder04
0while_while_cond_595178___redundant_placeholder14
0while_while_cond_595178___redundant_placeholder24
0while_while_cond_595178___redundant_placeholder3
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
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
Е
У
while_cond_593994
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_593994___redundant_placeholder04
0while_while_cond_593994___redundant_placeholder14
0while_while_cond_593994___redundant_placeholder24
0while_while_cond_593994___redundant_placeholder3
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
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*О
serving_defaultЊ
M
lstm_342_input;
 serving_default_lstm_342_input:0џџџџџџџџџ=
	dense_1140
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:б
Њ
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
__call__
+&call_and_return_all_conditional_losses
_default_save_signature"
_tf_keras_sequential
ъ
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
ъ
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
ъ
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
т

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3m4m5m!v"v-v.v/v0v1v2v3v4v5v"
	optimizer
-
serving_default"
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
Ю
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object

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
__call__
+&call_and_return_all_conditional_losses"
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
М

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object

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
__call__
+&call_and_return_all_conditional_losses"
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
М

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object

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
__call__
+&call_and_return_all_conditional_losses"
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
М

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
": 
2dense_114/kernel
:2dense_114/bias
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
А
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
$	variables
%trainable_variables
&regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0:.	2lstm_342/lstm_cell_342/kernel
::8	d2'lstm_342/lstm_cell_342/recurrent_kernel
*:(2lstm_342/lstm_cell_342/bias
0:.	dШ2lstm_343/lstm_cell_343/kernel
::8	2Ш2'lstm_343/lstm_cell_343/recurrent_kernel
*:(Ш2lstm_343/lstm_cell_343/bias
/:-2(2lstm_344/lstm_cell_344/kernel
9:7
(2'lstm_344/lstm_cell_344/recurrent_kernel
):'(2lstm_344/lstm_cell_344/bias
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
А
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
=	variables
>trainable_variables
?regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
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
А
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
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
А
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
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
2Adam/dense_114/kernel/m
!:2Adam/dense_114/bias/m
5:3	2$Adam/lstm_342/lstm_cell_342/kernel/m
?:=	d2.Adam/lstm_342/lstm_cell_342/recurrent_kernel/m
/:-2"Adam/lstm_342/lstm_cell_342/bias/m
5:3	dШ2$Adam/lstm_343/lstm_cell_343/kernel/m
?:=	2Ш2.Adam/lstm_343/lstm_cell_343/recurrent_kernel/m
/:-Ш2"Adam/lstm_343/lstm_cell_343/bias/m
4:22(2$Adam/lstm_344/lstm_cell_344/kernel/m
>:<
(2.Adam/lstm_344/lstm_cell_344/recurrent_kernel/m
.:,(2"Adam/lstm_344/lstm_cell_344/bias/m
':%
2Adam/dense_114/kernel/v
!:2Adam/dense_114/bias/v
5:3	2$Adam/lstm_342/lstm_cell_342/kernel/v
?:=	d2.Adam/lstm_342/lstm_cell_342/recurrent_kernel/v
/:-2"Adam/lstm_342/lstm_cell_342/bias/v
5:3	dШ2$Adam/lstm_343/lstm_cell_343/kernel/v
?:=	2Ш2.Adam/lstm_343/lstm_cell_343/recurrent_kernel/v
/:-Ш2"Adam/lstm_343/lstm_cell_343/bias/v
4:22(2$Adam/lstm_344/lstm_cell_344/kernel/v
>:<
(2.Adam/lstm_344/lstm_cell_344/recurrent_kernel/v
.:,(2"Adam/lstm_344/lstm_cell_344/bias/v
2
/__inference_sequential_114_layer_call_fn_595463
/__inference_sequential_114_layer_call_fn_596201
/__inference_sequential_114_layer_call_fn_596228
/__inference_sequential_114_layer_call_fn_596079Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
і2ѓ
J__inference_sequential_114_layer_call_and_return_conditional_losses_596655
J__inference_sequential_114_layer_call_and_return_conditional_losses_597082
J__inference_sequential_114_layer_call_and_return_conditional_losses_596109
J__inference_sequential_114_layer_call_and_return_conditional_losses_596139Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
гBа
!__inference__wrapped_model_593914lstm_342_input"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
)__inference_lstm_342_layer_call_fn_597093
)__inference_lstm_342_layer_call_fn_597104
)__inference_lstm_342_layer_call_fn_597115
)__inference_lstm_342_layer_call_fn_597126е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ѓ2№
D__inference_lstm_342_layer_call_and_return_conditional_losses_597269
D__inference_lstm_342_layer_call_and_return_conditional_losses_597412
D__inference_lstm_342_layer_call_and_return_conditional_losses_597555
D__inference_lstm_342_layer_call_and_return_conditional_losses_597698е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
)__inference_lstm_343_layer_call_fn_597709
)__inference_lstm_343_layer_call_fn_597720
)__inference_lstm_343_layer_call_fn_597731
)__inference_lstm_343_layer_call_fn_597742е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ѓ2№
D__inference_lstm_343_layer_call_and_return_conditional_losses_597885
D__inference_lstm_343_layer_call_and_return_conditional_losses_598028
D__inference_lstm_343_layer_call_and_return_conditional_losses_598171
D__inference_lstm_343_layer_call_and_return_conditional_losses_598314е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
)__inference_lstm_344_layer_call_fn_598325
)__inference_lstm_344_layer_call_fn_598336
)__inference_lstm_344_layer_call_fn_598347
)__inference_lstm_344_layer_call_fn_598358е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ѓ2№
D__inference_lstm_344_layer_call_and_return_conditional_losses_598501
D__inference_lstm_344_layer_call_and_return_conditional_losses_598644
D__inference_lstm_344_layer_call_and_return_conditional_losses_598787
D__inference_lstm_344_layer_call_and_return_conditional_losses_598930е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
д2б
*__inference_dense_114_layer_call_fn_598939Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
я2ь
E__inference_dense_114_layer_call_and_return_conditional_losses_598949Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
вBЯ
$__inference_signature_wrapper_596174lstm_342_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ђ2
-__inference_lstm_cell_96_layer_call_fn_598966
-__inference_lstm_cell_96_layer_call_fn_598983О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
и2е
H__inference_lstm_cell_96_layer_call_and_return_conditional_losses_599015
H__inference_lstm_cell_96_layer_call_and_return_conditional_losses_599047О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ђ2
-__inference_lstm_cell_97_layer_call_fn_599064
-__inference_lstm_cell_97_layer_call_fn_599081О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
и2е
H__inference_lstm_cell_97_layer_call_and_return_conditional_losses_599113
H__inference_lstm_cell_97_layer_call_and_return_conditional_losses_599145О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ђ2
-__inference_lstm_cell_98_layer_call_fn_599162
-__inference_lstm_cell_98_layer_call_fn_599179О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
и2е
H__inference_lstm_cell_98_layer_call_and_return_conditional_losses_599211
H__inference_lstm_cell_98_layer_call_and_return_conditional_losses_599243О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 Ї
!__inference__wrapped_model_593914-./012345!";Ђ8
1Ђ.
,)
lstm_342_inputџџџџџџџџџ
Њ "5Њ2
0
	dense_114# 
	dense_114џџџџџџџџџЅ
E__inference_dense_114_layer_call_and_return_conditional_losses_598949\!"/Ђ,
%Ђ"
 
inputsџџџџџџџџџ

Њ "%Ђ"

0џџџџџџџџџ
 }
*__inference_dense_114_layer_call_fn_598939O!"/Ђ,
%Ђ"
 
inputsџџџџџџџџџ

Њ "џџџџџџџџџг
D__inference_lstm_342_layer_call_and_return_conditional_losses_597269-./OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџd
 г
D__inference_lstm_342_layer_call_and_return_conditional_losses_597412-./OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџd
 Й
D__inference_lstm_342_layer_call_and_return_conditional_losses_597555q-./?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p 

 
Њ ")Ђ&

0џџџџџџџџџd
 Й
D__inference_lstm_342_layer_call_and_return_conditional_losses_597698q-./?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p

 
Њ ")Ђ&

0џџџџџџџџџd
 Њ
)__inference_lstm_342_layer_call_fn_597093}-./OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "%"џџџџџџџџџџџџџџџџџџdЊ
)__inference_lstm_342_layer_call_fn_597104}-./OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "%"џџџџџџџџџџџџџџџџџџd
)__inference_lstm_342_layer_call_fn_597115d-./?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p 

 
Њ "џџџџџџџџџd
)__inference_lstm_342_layer_call_fn_597126d-./?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p

 
Њ "џџџџџџџџџdг
D__inference_lstm_343_layer_call_and_return_conditional_losses_597885012OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџd

 
p 

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџ2
 г
D__inference_lstm_343_layer_call_and_return_conditional_losses_598028012OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџd

 
p

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџ2
 Й
D__inference_lstm_343_layer_call_and_return_conditional_losses_598171q012?Ђ<
5Ђ2
$!
inputsџџџџџџџџџd

 
p 

 
Њ ")Ђ&

0џџџџџџџџџ2
 Й
D__inference_lstm_343_layer_call_and_return_conditional_losses_598314q012?Ђ<
5Ђ2
$!
inputsџџџџџџџџџd

 
p

 
Њ ")Ђ&

0џџџџџџџџџ2
 Њ
)__inference_lstm_343_layer_call_fn_597709}012OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџd

 
p 

 
Њ "%"џџџџџџџџџџџџџџџџџџ2Њ
)__inference_lstm_343_layer_call_fn_597720}012OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџd

 
p

 
Њ "%"џџџџџџџџџџџџџџџџџџ2
)__inference_lstm_343_layer_call_fn_597731d012?Ђ<
5Ђ2
$!
inputsџџџџџџџџџd

 
p 

 
Њ "џџџџџџџџџ2
)__inference_lstm_343_layer_call_fn_597742d012?Ђ<
5Ђ2
$!
inputsџџџџџџџџџd

 
p

 
Њ "џџџџџџџџџ2Х
D__inference_lstm_344_layer_call_and_return_conditional_losses_598501}345OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ2

 
p 

 
Њ "%Ђ"

0џџџџџџџџџ

 Х
D__inference_lstm_344_layer_call_and_return_conditional_losses_598644}345OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ2

 
p

 
Њ "%Ђ"

0џџџџџџџџџ

 Е
D__inference_lstm_344_layer_call_and_return_conditional_losses_598787m345?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ2

 
p 

 
Њ "%Ђ"

0џџџџџџџџџ

 Е
D__inference_lstm_344_layer_call_and_return_conditional_losses_598930m345?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ2

 
p

 
Њ "%Ђ"

0џџџџџџџџџ

 
)__inference_lstm_344_layer_call_fn_598325p345OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ2

 
p 

 
Њ "џџџџџџџџџ

)__inference_lstm_344_layer_call_fn_598336p345OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ2

 
p

 
Њ "џџџџџџџџџ

)__inference_lstm_344_layer_call_fn_598347`345?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ2

 
p 

 
Њ "џџџџџџџџџ

)__inference_lstm_344_layer_call_fn_598358`345?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ2

 
p

 
Њ "џџџџџџџџџ
Ъ
H__inference_lstm_cell_96_layer_call_and_return_conditional_losses_599015§-./Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџd
"
states/1џџџџџџџџџd
p 
Њ "sЂp
iЂf

0/0џџџџџџџџџd
EB

0/1/0џџџџџџџџџd

0/1/1џџџџџџџџџd
 Ъ
H__inference_lstm_cell_96_layer_call_and_return_conditional_losses_599047§-./Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџd
"
states/1џџџџџџџџџd
p
Њ "sЂp
iЂf

0/0џџџџџџџџџd
EB

0/1/0џџџџџџџџџd

0/1/1џџџџџџџџџd
 
-__inference_lstm_cell_96_layer_call_fn_598966э-./Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџd
"
states/1џџџџџџџџџd
p 
Њ "cЂ`

0џџџџџџџџџd
A>

1/0џџџџџџџџџd

1/1џџџџџџџџџd
-__inference_lstm_cell_96_layer_call_fn_598983э-./Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџd
"
states/1џџџџџџџџџd
p
Њ "cЂ`

0џџџџџџџџџd
A>

1/0џџџџџџџџџd

1/1џџџџџџџџџdЪ
H__inference_lstm_cell_97_layer_call_and_return_conditional_losses_599113§012Ђ}
vЂs
 
inputsџџџџџџџџџd
KЂH
"
states/0џџџџџџџџџ2
"
states/1џџџџџџџџџ2
p 
Њ "sЂp
iЂf

0/0џџџџџџџџџ2
EB

0/1/0џџџџџџџџџ2

0/1/1џџџџџџџџџ2
 Ъ
H__inference_lstm_cell_97_layer_call_and_return_conditional_losses_599145§012Ђ}
vЂs
 
inputsџџџџџџџџџd
KЂH
"
states/0џџџџџџџџџ2
"
states/1џџџџџџџџџ2
p
Њ "sЂp
iЂf

0/0џџџџџџџџџ2
EB

0/1/0џџџџџџџџџ2

0/1/1џџџџџџџџџ2
 
-__inference_lstm_cell_97_layer_call_fn_599064э012Ђ}
vЂs
 
inputsџџџџџџџџџd
KЂH
"
states/0џџџџџџџџџ2
"
states/1џџџџџџџџџ2
p 
Њ "cЂ`

0џџџџџџџџџ2
A>

1/0џџџџџџџџџ2

1/1џџџџџџџџџ2
-__inference_lstm_cell_97_layer_call_fn_599081э012Ђ}
vЂs
 
inputsџџџџџџџџџd
KЂH
"
states/0џџџџџџџџџ2
"
states/1џџџџџџџџџ2
p
Њ "cЂ`

0џџџџџџџџџ2
A>

1/0џџџџџџџџџ2

1/1џџџџџџџџџ2Ъ
H__inference_lstm_cell_98_layer_call_and_return_conditional_losses_599211§345Ђ}
vЂs
 
inputsџџџџџџџџџ2
KЂH
"
states/0џџџџџџџџџ

"
states/1џџџџџџџџџ

p 
Њ "sЂp
iЂf

0/0џџџџџџџџџ

EB

0/1/0џџџџџџџџџ


0/1/1џџџџџџџџџ

 Ъ
H__inference_lstm_cell_98_layer_call_and_return_conditional_losses_599243§345Ђ}
vЂs
 
inputsџџџџџџџџџ2
KЂH
"
states/0џџџџџџџџџ

"
states/1џџџџџџџџџ

p
Њ "sЂp
iЂf

0/0џџџџџџџџџ

EB

0/1/0џџџџџџџџџ


0/1/1џџџџџџџџџ

 
-__inference_lstm_cell_98_layer_call_fn_599162э345Ђ}
vЂs
 
inputsџџџџџџџџџ2
KЂH
"
states/0џџџџџџџџџ

"
states/1џџџџџџџџџ

p 
Њ "cЂ`

0џџџџџџџџџ

A>

1/0џџџџџџџџџ


1/1џџџџџџџџџ

-__inference_lstm_cell_98_layer_call_fn_599179э345Ђ}
vЂs
 
inputsџџџџџџџџџ2
KЂH
"
states/0џџџџџџџџџ

"
states/1џџџџџџџџџ

p
Њ "cЂ`

0џџџџџџџџџ

A>

1/0џџџџџџџџџ


1/1џџџџџџџџџ
Ч
J__inference_sequential_114_layer_call_and_return_conditional_losses_596109y-./012345!"CЂ@
9Ђ6
,)
lstm_342_inputџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Ч
J__inference_sequential_114_layer_call_and_return_conditional_losses_596139y-./012345!"CЂ@
9Ђ6
,)
lstm_342_inputџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 П
J__inference_sequential_114_layer_call_and_return_conditional_losses_596655q-./012345!";Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 П
J__inference_sequential_114_layer_call_and_return_conditional_losses_597082q-./012345!";Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 
/__inference_sequential_114_layer_call_fn_595463l-./012345!"CЂ@
9Ђ6
,)
lstm_342_inputџџџџџџџџџ
p 

 
Њ "џџџџџџџџџ
/__inference_sequential_114_layer_call_fn_596079l-./012345!"CЂ@
9Ђ6
,)
lstm_342_inputџџџџџџџџџ
p

 
Њ "џџџџџџџџџ
/__inference_sequential_114_layer_call_fn_596201d-./012345!";Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ "џџџџџџџџџ
/__inference_sequential_114_layer_call_fn_596228d-./012345!";Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ "џџџџџџџџџМ
$__inference_signature_wrapper_596174-./012345!"MЂJ
Ђ 
CЊ@
>
lstm_342_input,)
lstm_342_inputџџџџџџџџџ"5Њ2
0
	dense_114# 
	dense_114џџџџџџџџџ
љд/
хє
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
B
AssignVariableOp
resource
value"dtype"
dtypetypeѕ
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
delete_old_dirsbool(ѕ
?
Mul
x"T
y"T
z"T"
Ttype:
2	љ
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
dtypetypeѕ
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
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
┴
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
executor_typestring ѕе
@
StaticRegexFullMatch	
input

output
"
patternstring
Ш
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
Ф
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleіжelement_dtype"
element_dtypetype"

shape_typetype:
2	
џ
TensorListReserve
element_shape"
shape_type
num_elements#
handleіжelement_dtype"
element_dtypetype"

shape_typetype:
2	
ѕ
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ
ћ
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
ѕ"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28ВИ-
z
dense_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_37/kernel
s
#dense_37/kernel/Read/ReadVariableOpReadVariableOpdense_37/kernel*
_output_shapes

:
*
dtype0
r
dense_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_37/bias
k
!dense_37/bias/Read/ReadVariableOpReadVariableOpdense_37/bias*
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
Ќ
lstm_111/lstm_cell_111/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*.
shared_namelstm_111/lstm_cell_111/kernel
љ
1lstm_111/lstm_cell_111/kernel/Read/ReadVariableOpReadVariableOplstm_111/lstm_cell_111/kernel*
_output_shapes
:	љ*
dtype0
Ф
'lstm_111/lstm_cell_111/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*8
shared_name)'lstm_111/lstm_cell_111/recurrent_kernel
ц
;lstm_111/lstm_cell_111/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_111/lstm_cell_111/recurrent_kernel*
_output_shapes
:	dљ*
dtype0
Ј
lstm_111/lstm_cell_111/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*,
shared_namelstm_111/lstm_cell_111/bias
ѕ
/lstm_111/lstm_cell_111/bias/Read/ReadVariableOpReadVariableOplstm_111/lstm_cell_111/bias*
_output_shapes	
:љ*
dtype0
Ќ
lstm_112/lstm_cell_112/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*.
shared_namelstm_112/lstm_cell_112/kernel
љ
1lstm_112/lstm_cell_112/kernel/Read/ReadVariableOpReadVariableOplstm_112/lstm_cell_112/kernel*
_output_shapes
:	d╚*
dtype0
Ф
'lstm_112/lstm_cell_112/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*8
shared_name)'lstm_112/lstm_cell_112/recurrent_kernel
ц
;lstm_112/lstm_cell_112/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_112/lstm_cell_112/recurrent_kernel*
_output_shapes
:	2╚*
dtype0
Ј
lstm_112/lstm_cell_112/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*,
shared_namelstm_112/lstm_cell_112/bias
ѕ
/lstm_112/lstm_cell_112/bias/Read/ReadVariableOpReadVariableOplstm_112/lstm_cell_112/bias*
_output_shapes	
:╚*
dtype0
ќ
lstm_113/lstm_cell_113/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_113/lstm_cell_113/kernel
Ј
1lstm_113/lstm_cell_113/kernel/Read/ReadVariableOpReadVariableOplstm_113/lstm_cell_113/kernel*
_output_shapes

:2(*
dtype0
ф
'lstm_113/lstm_cell_113/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_113/lstm_cell_113/recurrent_kernel
Б
;lstm_113/lstm_cell_113/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_113/lstm_cell_113/recurrent_kernel*
_output_shapes

:
(*
dtype0
ј
lstm_113/lstm_cell_113/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_113/lstm_cell_113/bias
Є
/lstm_113/lstm_cell_113/bias/Read/ReadVariableOpReadVariableOplstm_113/lstm_cell_113/bias*
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
ѕ
Adam/dense_37/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_37/kernel/m
Ђ
*Adam/dense_37/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_37/kernel/m*
_output_shapes

:
*
dtype0
ђ
Adam/dense_37/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_37/bias/m
y
(Adam/dense_37/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_37/bias/m*
_output_shapes
:*
dtype0
Ц
$Adam/lstm_111/lstm_cell_111/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*5
shared_name&$Adam/lstm_111/lstm_cell_111/kernel/m
ъ
8Adam/lstm_111/lstm_cell_111/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_111/lstm_cell_111/kernel/m*
_output_shapes
:	љ*
dtype0
╣
.Adam/lstm_111/lstm_cell_111/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*?
shared_name0.Adam/lstm_111/lstm_cell_111/recurrent_kernel/m
▓
BAdam/lstm_111/lstm_cell_111/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_111/lstm_cell_111/recurrent_kernel/m*
_output_shapes
:	dљ*
dtype0
Ю
"Adam/lstm_111/lstm_cell_111/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*3
shared_name$"Adam/lstm_111/lstm_cell_111/bias/m
ќ
6Adam/lstm_111/lstm_cell_111/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_111/lstm_cell_111/bias/m*
_output_shapes	
:љ*
dtype0
Ц
$Adam/lstm_112/lstm_cell_112/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*5
shared_name&$Adam/lstm_112/lstm_cell_112/kernel/m
ъ
8Adam/lstm_112/lstm_cell_112/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_112/lstm_cell_112/kernel/m*
_output_shapes
:	d╚*
dtype0
╣
.Adam/lstm_112/lstm_cell_112/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*?
shared_name0.Adam/lstm_112/lstm_cell_112/recurrent_kernel/m
▓
BAdam/lstm_112/lstm_cell_112/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_112/lstm_cell_112/recurrent_kernel/m*
_output_shapes
:	2╚*
dtype0
Ю
"Adam/lstm_112/lstm_cell_112/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*3
shared_name$"Adam/lstm_112/lstm_cell_112/bias/m
ќ
6Adam/lstm_112/lstm_cell_112/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_112/lstm_cell_112/bias/m*
_output_shapes	
:╚*
dtype0
ц
$Adam/lstm_113/lstm_cell_113/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_113/lstm_cell_113/kernel/m
Ю
8Adam/lstm_113/lstm_cell_113/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_113/lstm_cell_113/kernel/m*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_113/lstm_cell_113/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_113/lstm_cell_113/recurrent_kernel/m
▒
BAdam/lstm_113/lstm_cell_113/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_113/lstm_cell_113/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
ю
"Adam/lstm_113/lstm_cell_113/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_113/lstm_cell_113/bias/m
Ћ
6Adam/lstm_113/lstm_cell_113/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_113/lstm_cell_113/bias/m*
_output_shapes
:(*
dtype0
ѕ
Adam/dense_37/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_37/kernel/v
Ђ
*Adam/dense_37/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_37/kernel/v*
_output_shapes

:
*
dtype0
ђ
Adam/dense_37/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_37/bias/v
y
(Adam/dense_37/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_37/bias/v*
_output_shapes
:*
dtype0
Ц
$Adam/lstm_111/lstm_cell_111/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*5
shared_name&$Adam/lstm_111/lstm_cell_111/kernel/v
ъ
8Adam/lstm_111/lstm_cell_111/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_111/lstm_cell_111/kernel/v*
_output_shapes
:	љ*
dtype0
╣
.Adam/lstm_111/lstm_cell_111/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*?
shared_name0.Adam/lstm_111/lstm_cell_111/recurrent_kernel/v
▓
BAdam/lstm_111/lstm_cell_111/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_111/lstm_cell_111/recurrent_kernel/v*
_output_shapes
:	dљ*
dtype0
Ю
"Adam/lstm_111/lstm_cell_111/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*3
shared_name$"Adam/lstm_111/lstm_cell_111/bias/v
ќ
6Adam/lstm_111/lstm_cell_111/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_111/lstm_cell_111/bias/v*
_output_shapes	
:љ*
dtype0
Ц
$Adam/lstm_112/lstm_cell_112/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*5
shared_name&$Adam/lstm_112/lstm_cell_112/kernel/v
ъ
8Adam/lstm_112/lstm_cell_112/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_112/lstm_cell_112/kernel/v*
_output_shapes
:	d╚*
dtype0
╣
.Adam/lstm_112/lstm_cell_112/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*?
shared_name0.Adam/lstm_112/lstm_cell_112/recurrent_kernel/v
▓
BAdam/lstm_112/lstm_cell_112/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_112/lstm_cell_112/recurrent_kernel/v*
_output_shapes
:	2╚*
dtype0
Ю
"Adam/lstm_112/lstm_cell_112/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*3
shared_name$"Adam/lstm_112/lstm_cell_112/bias/v
ќ
6Adam/lstm_112/lstm_cell_112/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_112/lstm_cell_112/bias/v*
_output_shapes	
:╚*
dtype0
ц
$Adam/lstm_113/lstm_cell_113/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_113/lstm_cell_113/kernel/v
Ю
8Adam/lstm_113/lstm_cell_113/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_113/lstm_cell_113/kernel/v*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_113/lstm_cell_113/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_113/lstm_cell_113/recurrent_kernel/v
▒
BAdam/lstm_113/lstm_cell_113/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_113/lstm_cell_113/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
ю
"Adam/lstm_113/lstm_cell_113/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_113/lstm_cell_113/bias/v
Ћ
6Adam/lstm_113/lstm_cell_113/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_113/lstm_cell_113/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
▀A
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*џA
valueљABЇA BєA
▓
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
Љ
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
Љ
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
Љ
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
Ї

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
ћ
(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3mђ4mЂ5mѓ!vЃ"vё-vЁ.vє/vЄ0vѕ1vЅ2vі3vІ4vї5vЇ
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
Г
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
│
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
╣

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
│
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
╣

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
│
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
╣

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
VARIABLE_VALUEdense_37/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_37/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

!0
"1

!0
"1
 
Г
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
VARIABLE_VALUElstm_111/lstm_cell_111/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_111/lstm_cell_111/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_111/lstm_cell_111/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_112/lstm_cell_112/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_112/lstm_cell_112/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_112/lstm_cell_112/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_113/lstm_cell_113/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_113/lstm_cell_113/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_113/lstm_cell_113/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
Г
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
Г
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
Г
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
VARIABLE_VALUEAdam/dense_37/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_37/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_111/lstm_cell_111/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_111/lstm_cell_111/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_111/lstm_cell_111/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_112/lstm_cell_112/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_112/lstm_cell_112/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_112/lstm_cell_112/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_113/lstm_cell_113/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_113/lstm_cell_113/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_113/lstm_cell_113/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_37/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_37/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_111/lstm_cell_111/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_111/lstm_cell_111/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_111/lstm_cell_111/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_112/lstm_cell_112/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_112/lstm_cell_112/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_112/lstm_cell_112/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_113/lstm_cell_113/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_113/lstm_cell_113/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_113/lstm_cell_113/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ѕ
serving_default_lstm_111_inputPlaceholder*+
_output_shapes
:         *
dtype0* 
shape:         
Ъ
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_111_inputlstm_111/lstm_cell_111/kernel'lstm_111/lstm_cell_111/recurrent_kernellstm_111/lstm_cell_111/biaslstm_112/lstm_cell_112/kernel'lstm_112/lstm_cell_112/recurrent_kernellstm_112/lstm_cell_112/biaslstm_113/lstm_cell_113/kernel'lstm_113/lstm_cell_113/recurrent_kernellstm_113/lstm_cell_113/biasdense_37/kerneldense_37/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *.
f)R'
%__inference_signature_wrapper_2083411
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Й
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_37/kernel/Read/ReadVariableOp!dense_37/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_111/lstm_cell_111/kernel/Read/ReadVariableOp;lstm_111/lstm_cell_111/recurrent_kernel/Read/ReadVariableOp/lstm_111/lstm_cell_111/bias/Read/ReadVariableOp1lstm_112/lstm_cell_112/kernel/Read/ReadVariableOp;lstm_112/lstm_cell_112/recurrent_kernel/Read/ReadVariableOp/lstm_112/lstm_cell_112/bias/Read/ReadVariableOp1lstm_113/lstm_cell_113/kernel/Read/ReadVariableOp;lstm_113/lstm_cell_113/recurrent_kernel/Read/ReadVariableOp/lstm_113/lstm_cell_113/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_37/kernel/m/Read/ReadVariableOp(Adam/dense_37/bias/m/Read/ReadVariableOp8Adam/lstm_111/lstm_cell_111/kernel/m/Read/ReadVariableOpBAdam/lstm_111/lstm_cell_111/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_111/lstm_cell_111/bias/m/Read/ReadVariableOp8Adam/lstm_112/lstm_cell_112/kernel/m/Read/ReadVariableOpBAdam/lstm_112/lstm_cell_112/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_112/lstm_cell_112/bias/m/Read/ReadVariableOp8Adam/lstm_113/lstm_cell_113/kernel/m/Read/ReadVariableOpBAdam/lstm_113/lstm_cell_113/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_113/lstm_cell_113/bias/m/Read/ReadVariableOp*Adam/dense_37/kernel/v/Read/ReadVariableOp(Adam/dense_37/bias/v/Read/ReadVariableOp8Adam/lstm_111/lstm_cell_111/kernel/v/Read/ReadVariableOpBAdam/lstm_111/lstm_cell_111/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_111/lstm_cell_111/bias/v/Read/ReadVariableOp8Adam/lstm_112/lstm_cell_112/kernel/v/Read/ReadVariableOpBAdam/lstm_112/lstm_cell_112/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_112/lstm_cell_112/bias/v/Read/ReadVariableOp8Adam/lstm_113/lstm_cell_113/kernel/v/Read/ReadVariableOpBAdam/lstm_113/lstm_cell_113/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_113/lstm_cell_113/bias/v/Read/ReadVariableOpConst*5
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
GPU 2J 8ѓ *)
f$R"
 __inference__traced_save_2086623
Ў
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_37/kerneldense_37/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_111/lstm_cell_111/kernel'lstm_111/lstm_cell_111/recurrent_kernellstm_111/lstm_cell_111/biaslstm_112/lstm_cell_112/kernel'lstm_112/lstm_cell_112/recurrent_kernellstm_112/lstm_cell_112/biaslstm_113/lstm_cell_113/kernel'lstm_113/lstm_cell_113/recurrent_kernellstm_113/lstm_cell_113/biastotalcountAdam/dense_37/kernel/mAdam/dense_37/bias/m$Adam/lstm_111/lstm_cell_111/kernel/m.Adam/lstm_111/lstm_cell_111/recurrent_kernel/m"Adam/lstm_111/lstm_cell_111/bias/m$Adam/lstm_112/lstm_cell_112/kernel/m.Adam/lstm_112/lstm_cell_112/recurrent_kernel/m"Adam/lstm_112/lstm_cell_112/bias/m$Adam/lstm_113/lstm_cell_113/kernel/m.Adam/lstm_113/lstm_cell_113/recurrent_kernel/m"Adam/lstm_113/lstm_cell_113/bias/mAdam/dense_37/kernel/vAdam/dense_37/bias/v$Adam/lstm_111/lstm_cell_111/kernel/v.Adam/lstm_111/lstm_cell_111/recurrent_kernel/v"Adam/lstm_111/lstm_cell_111/bias/v$Adam/lstm_112/lstm_cell_112/kernel/v.Adam/lstm_112/lstm_cell_112/recurrent_kernel/v"Adam/lstm_112/lstm_cell_112/bias/v$Adam/lstm_113/lstm_cell_113/kernel/v.Adam/lstm_113/lstm_cell_113/recurrent_kernel/v"Adam/lstm_113/lstm_cell_113/bias/v*4
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
GPU 2J 8ѓ *,
f'R%
#__inference__traced_restore_2086753Ћш+
Л8
┌
while_body_2084851
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_342_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_342_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_342_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_342_matmul_readvariableop_resource:	љG
4while_lstm_cell_342_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_342_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_342/BiasAdd/ReadVariableOpб)while/lstm_cell_342/MatMul/ReadVariableOpб+while/lstm_cell_342/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_342/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_342_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_342/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_342/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_342/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_342_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_342/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_342/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_342/addAddV2$while/lstm_cell_342/MatMul:product:0&while/lstm_cell_342/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_342/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_342_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_342/BiasAddBiasAddwhile/lstm_cell_342/add:z:02while/lstm_cell_342/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_342/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_342/splitSplit,while/lstm_cell_342/split/split_dim:output:0$while/lstm_cell_342/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_342/SigmoidSigmoid"while/lstm_cell_342/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_342/Sigmoid_1Sigmoid"while/lstm_cell_342/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_342/mulMul!while/lstm_cell_342/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_342/ReluRelu"while/lstm_cell_342/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_342/mul_1Mulwhile/lstm_cell_342/Sigmoid:y:0&while/lstm_cell_342/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_342/add_1AddV2while/lstm_cell_342/mul:z:0while/lstm_cell_342/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_342/Sigmoid_2Sigmoid"while/lstm_cell_342/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_342/Relu_1Reluwhile/lstm_cell_342/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_342/mul_2Mul!while/lstm_cell_342/Sigmoid_2:y:0(while/lstm_cell_342/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_342/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_342/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_342/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_342/BiasAdd/ReadVariableOp*^while/lstm_cell_342/MatMul/ReadVariableOp,^while/lstm_cell_342/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_342_biasadd_readvariableop_resource5while_lstm_cell_342_biasadd_readvariableop_resource_0"n
4while_lstm_cell_342_matmul_1_readvariableop_resource6while_lstm_cell_342_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_342_matmul_readvariableop_resource4while_lstm_cell_342_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_342/BiasAdd/ReadVariableOp*while/lstm_cell_342/BiasAdd/ReadVariableOp2V
)while/lstm_cell_342/MatMul/ReadVariableOp)while/lstm_cell_342/MatMul/ReadVariableOp2Z
+while/lstm_cell_342/MatMul_1/ReadVariableOp+while/lstm_cell_342/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
ПJ
а
E__inference_lstm_113_layer_call_and_return_conditional_losses_2086024

inputs>
,lstm_cell_344_matmul_readvariableop_resource:2(@
.lstm_cell_344_matmul_1_readvariableop_resource:
(;
-lstm_cell_344_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_344/BiasAdd/ReadVariableOpб#lstm_cell_344/MatMul/ReadVariableOpб%lstm_cell_344/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_344/MatMul/ReadVariableOpReadVariableOp,lstm_cell_344_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_344/MatMulMatMulstrided_slice_2:output:0+lstm_cell_344/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_344/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_344_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_344/MatMul_1MatMulzeros:output:0-lstm_cell_344/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_344/addAddV2lstm_cell_344/MatMul:product:0 lstm_cell_344/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_344/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_344_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_344/BiasAddBiasAddlstm_cell_344/add:z:0,lstm_cell_344/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_344/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_344/splitSplit&lstm_cell_344/split/split_dim:output:0lstm_cell_344/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_344/SigmoidSigmoidlstm_cell_344/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_344/Sigmoid_1Sigmoidlstm_cell_344/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_344/mulMullstm_cell_344/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_344/ReluRelulstm_cell_344/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_344/mul_1Mullstm_cell_344/Sigmoid:y:0 lstm_cell_344/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_344/add_1AddV2lstm_cell_344/mul:z:0lstm_cell_344/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_344/Sigmoid_2Sigmoidlstm_cell_344/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_344/Relu_1Relulstm_cell_344/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_344/mul_2Mullstm_cell_344/Sigmoid_2:y:0"lstm_cell_344/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_344_matmul_readvariableop_resource.lstm_cell_344_matmul_1_readvariableop_resource-lstm_cell_344_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2085940*
condR
while_cond_2085939*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         
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
:         
├
NoOpNoOp%^lstm_cell_344/BiasAdd/ReadVariableOp$^lstm_cell_344/MatMul/ReadVariableOp&^lstm_cell_344/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_344/BiasAdd/ReadVariableOp$lstm_cell_344/BiasAdd/ReadVariableOp2J
#lstm_cell_344/MatMul/ReadVariableOp#lstm_cell_344/MatMul/ReadVariableOp2N
%lstm_cell_344/MatMul_1/ReadVariableOp%lstm_cell_344/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
№
Э
/__inference_lstm_cell_343_layer_call_fn_2086301

inputs
states_0
states_1
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_343_layer_call_and_return_conditional_losses_2081568o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:QM
'
_output_shapes
:         2
"
_user_specified_name
states/0:QM
'
_output_shapes
:         2
"
_user_specified_name
states/1
АC
Щ

lstm_111_while_body_2083951.
*lstm_111_while_lstm_111_while_loop_counter4
0lstm_111_while_lstm_111_while_maximum_iterations
lstm_111_while_placeholder 
lstm_111_while_placeholder_1 
lstm_111_while_placeholder_2 
lstm_111_while_placeholder_3-
)lstm_111_while_lstm_111_strided_slice_1_0i
elstm_111_while_tensorarrayv2read_tensorlistgetitem_lstm_111_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_111_while_lstm_cell_342_matmul_readvariableop_resource_0:	љR
?lstm_111_while_lstm_cell_342_matmul_1_readvariableop_resource_0:	dљM
>lstm_111_while_lstm_cell_342_biasadd_readvariableop_resource_0:	љ
lstm_111_while_identity
lstm_111_while_identity_1
lstm_111_while_identity_2
lstm_111_while_identity_3
lstm_111_while_identity_4
lstm_111_while_identity_5+
'lstm_111_while_lstm_111_strided_slice_1g
clstm_111_while_tensorarrayv2read_tensorlistgetitem_lstm_111_tensorarrayunstack_tensorlistfromtensorN
;lstm_111_while_lstm_cell_342_matmul_readvariableop_resource:	љP
=lstm_111_while_lstm_cell_342_matmul_1_readvariableop_resource:	dљK
<lstm_111_while_lstm_cell_342_biasadd_readvariableop_resource:	љѕб3lstm_111/while/lstm_cell_342/BiasAdd/ReadVariableOpб2lstm_111/while/lstm_cell_342/MatMul/ReadVariableOpб4lstm_111/while/lstm_cell_342/MatMul_1/ReadVariableOpЉ
@lstm_111/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       М
2lstm_111/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_111_while_tensorarrayv2read_tensorlistgetitem_lstm_111_tensorarrayunstack_tensorlistfromtensor_0lstm_111_while_placeholderIlstm_111/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0▒
2lstm_111/while/lstm_cell_342/MatMul/ReadVariableOpReadVariableOp=lstm_111_while_lstm_cell_342_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0О
#lstm_111/while/lstm_cell_342/MatMulMatMul9lstm_111/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_111/while/lstm_cell_342/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љх
4lstm_111/while/lstm_cell_342/MatMul_1/ReadVariableOpReadVariableOp?lstm_111_while_lstm_cell_342_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Й
%lstm_111/while/lstm_cell_342/MatMul_1MatMullstm_111_while_placeholder_2<lstm_111/while/lstm_cell_342/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ╝
 lstm_111/while/lstm_cell_342/addAddV2-lstm_111/while/lstm_cell_342/MatMul:product:0/lstm_111/while/lstm_cell_342/MatMul_1:product:0*
T0*(
_output_shapes
:         љ»
3lstm_111/while/lstm_cell_342/BiasAdd/ReadVariableOpReadVariableOp>lstm_111_while_lstm_cell_342_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┼
$lstm_111/while/lstm_cell_342/BiasAddBiasAdd$lstm_111/while/lstm_cell_342/add:z:0;lstm_111/while/lstm_cell_342/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љn
,lstm_111/while/lstm_cell_342/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_111/while/lstm_cell_342/splitSplit5lstm_111/while/lstm_cell_342/split/split_dim:output:0-lstm_111/while/lstm_cell_342/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitј
$lstm_111/while/lstm_cell_342/SigmoidSigmoid+lstm_111/while/lstm_cell_342/split:output:0*
T0*'
_output_shapes
:         dљ
&lstm_111/while/lstm_cell_342/Sigmoid_1Sigmoid+lstm_111/while/lstm_cell_342/split:output:1*
T0*'
_output_shapes
:         dБ
 lstm_111/while/lstm_cell_342/mulMul*lstm_111/while/lstm_cell_342/Sigmoid_1:y:0lstm_111_while_placeholder_3*
T0*'
_output_shapes
:         dѕ
!lstm_111/while/lstm_cell_342/ReluRelu+lstm_111/while/lstm_cell_342/split:output:2*
T0*'
_output_shapes
:         dХ
"lstm_111/while/lstm_cell_342/mul_1Mul(lstm_111/while/lstm_cell_342/Sigmoid:y:0/lstm_111/while/lstm_cell_342/Relu:activations:0*
T0*'
_output_shapes
:         dФ
"lstm_111/while/lstm_cell_342/add_1AddV2$lstm_111/while/lstm_cell_342/mul:z:0&lstm_111/while/lstm_cell_342/mul_1:z:0*
T0*'
_output_shapes
:         dљ
&lstm_111/while/lstm_cell_342/Sigmoid_2Sigmoid+lstm_111/while/lstm_cell_342/split:output:3*
T0*'
_output_shapes
:         dЁ
#lstm_111/while/lstm_cell_342/Relu_1Relu&lstm_111/while/lstm_cell_342/add_1:z:0*
T0*'
_output_shapes
:         d║
"lstm_111/while/lstm_cell_342/mul_2Mul*lstm_111/while/lstm_cell_342/Sigmoid_2:y:01lstm_111/while/lstm_cell_342/Relu_1:activations:0*
T0*'
_output_shapes
:         dЖ
3lstm_111/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_111_while_placeholder_1lstm_111_while_placeholder&lstm_111/while/lstm_cell_342/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_111/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_111/while/addAddV2lstm_111_while_placeholderlstm_111/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_111/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_111/while/add_1AddV2*lstm_111_while_lstm_111_while_loop_counterlstm_111/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_111/while/IdentityIdentitylstm_111/while/add_1:z:0^lstm_111/while/NoOp*
T0*
_output_shapes
: ј
lstm_111/while/Identity_1Identity0lstm_111_while_lstm_111_while_maximum_iterations^lstm_111/while/NoOp*
T0*
_output_shapes
: t
lstm_111/while/Identity_2Identitylstm_111/while/add:z:0^lstm_111/while/NoOp*
T0*
_output_shapes
: А
lstm_111/while/Identity_3IdentityClstm_111/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_111/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_111/while/Identity_4Identity&lstm_111/while/lstm_cell_342/mul_2:z:0^lstm_111/while/NoOp*
T0*'
_output_shapes
:         dЋ
lstm_111/while/Identity_5Identity&lstm_111/while/lstm_cell_342/add_1:z:0^lstm_111/while/NoOp*
T0*'
_output_shapes
:         dэ
lstm_111/while/NoOpNoOp4^lstm_111/while/lstm_cell_342/BiasAdd/ReadVariableOp3^lstm_111/while/lstm_cell_342/MatMul/ReadVariableOp5^lstm_111/while/lstm_cell_342/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_111_while_identity lstm_111/while/Identity:output:0"?
lstm_111_while_identity_1"lstm_111/while/Identity_1:output:0"?
lstm_111_while_identity_2"lstm_111/while/Identity_2:output:0"?
lstm_111_while_identity_3"lstm_111/while/Identity_3:output:0"?
lstm_111_while_identity_4"lstm_111/while/Identity_4:output:0"?
lstm_111_while_identity_5"lstm_111/while/Identity_5:output:0"T
'lstm_111_while_lstm_111_strided_slice_1)lstm_111_while_lstm_111_strided_slice_1_0"~
<lstm_111_while_lstm_cell_342_biasadd_readvariableop_resource>lstm_111_while_lstm_cell_342_biasadd_readvariableop_resource_0"ђ
=lstm_111_while_lstm_cell_342_matmul_1_readvariableop_resource?lstm_111_while_lstm_cell_342_matmul_1_readvariableop_resource_0"|
;lstm_111_while_lstm_cell_342_matmul_readvariableop_resource=lstm_111_while_lstm_cell_342_matmul_readvariableop_resource_0"╠
clstm_111_while_tensorarrayv2read_tensorlistgetitem_lstm_111_tensorarrayunstack_tensorlistfromtensorelstm_111_while_tensorarrayv2read_tensorlistgetitem_lstm_111_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2j
3lstm_111/while/lstm_cell_342/BiasAdd/ReadVariableOp3lstm_111/while/lstm_cell_342/BiasAdd/ReadVariableOp2h
2lstm_111/while/lstm_cell_342/MatMul/ReadVariableOp2lstm_111/while/lstm_cell_342/MatMul/ReadVariableOp2l
4lstm_111/while/lstm_cell_342/MatMul_1/ReadVariableOp4lstm_111/while/lstm_cell_342/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
РJ
Б
E__inference_lstm_111_layer_call_and_return_conditional_losses_2082350

inputs?
,lstm_cell_342_matmul_readvariableop_resource:	љA
.lstm_cell_342_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_342_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_342/BiasAdd/ReadVariableOpб#lstm_cell_342/MatMul/ReadVariableOpб%lstm_cell_342/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_342/MatMul/ReadVariableOpReadVariableOp,lstm_cell_342_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_342/MatMulMatMulstrided_slice_2:output:0+lstm_cell_342/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_342/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_342_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_342/MatMul_1MatMulzeros:output:0-lstm_cell_342/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_342/addAddV2lstm_cell_342/MatMul:product:0 lstm_cell_342/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_342/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_342_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_342/BiasAddBiasAddlstm_cell_342/add:z:0,lstm_cell_342/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_342/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_342/splitSplit&lstm_cell_342/split/split_dim:output:0lstm_cell_342/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_342/SigmoidSigmoidlstm_cell_342/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_342/Sigmoid_1Sigmoidlstm_cell_342/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_342/mulMullstm_cell_342/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_342/ReluRelulstm_cell_342/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_342/mul_1Mullstm_cell_342/Sigmoid:y:0 lstm_cell_342/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_342/add_1AddV2lstm_cell_342/mul:z:0lstm_cell_342/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_342/Sigmoid_2Sigmoidlstm_cell_342/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_342/Relu_1Relulstm_cell_342/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_342/mul_2Mullstm_cell_342/Sigmoid_2:y:0"lstm_cell_342/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_342_matmul_readvariableop_resource.lstm_cell_342_matmul_1_readvariableop_resource-lstm_cell_342_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2082266*
condR
while_cond_2082265*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         d├
NoOpNoOp%^lstm_cell_342/BiasAdd/ReadVariableOp$^lstm_cell_342/MatMul/ReadVariableOp&^lstm_cell_342/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_342/BiasAdd/ReadVariableOp$lstm_cell_342/BiasAdd/ReadVariableOp2J
#lstm_cell_342/MatMul/ReadVariableOp#lstm_cell_342/MatMul/ReadVariableOp2N
%lstm_cell_342/MatMul_1/ReadVariableOp%lstm_cell_342/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
»8
ј
E__inference_lstm_111_layer_call_and_return_conditional_losses_2081301

inputs(
lstm_cell_342_2081219:	љ(
lstm_cell_342_2081221:	dљ$
lstm_cell_342_2081223:	љ
identityѕб%lstm_cell_342/StatefulPartitionedCallбwhile;
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask■
%lstm_cell_342/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_342_2081219lstm_cell_342_2081221lstm_cell_342_2081223*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_342_layer_call_and_return_conditional_losses_2081218n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_342_2081219lstm_cell_342_2081221lstm_cell_342_2081223*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2081232*
condR
while_cond_2081231*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  dv
NoOpNoOp&^lstm_cell_342/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2N
%lstm_cell_342/StatefulPartitionedCall%lstm_cell_342/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
ћC
З

lstm_113_while_body_2084229.
*lstm_113_while_lstm_113_while_loop_counter4
0lstm_113_while_lstm_113_while_maximum_iterations
lstm_113_while_placeholder 
lstm_113_while_placeholder_1 
lstm_113_while_placeholder_2 
lstm_113_while_placeholder_3-
)lstm_113_while_lstm_113_strided_slice_1_0i
elstm_113_while_tensorarrayv2read_tensorlistgetitem_lstm_113_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_113_while_lstm_cell_344_matmul_readvariableop_resource_0:2(Q
?lstm_113_while_lstm_cell_344_matmul_1_readvariableop_resource_0:
(L
>lstm_113_while_lstm_cell_344_biasadd_readvariableop_resource_0:(
lstm_113_while_identity
lstm_113_while_identity_1
lstm_113_while_identity_2
lstm_113_while_identity_3
lstm_113_while_identity_4
lstm_113_while_identity_5+
'lstm_113_while_lstm_113_strided_slice_1g
clstm_113_while_tensorarrayv2read_tensorlistgetitem_lstm_113_tensorarrayunstack_tensorlistfromtensorM
;lstm_113_while_lstm_cell_344_matmul_readvariableop_resource:2(O
=lstm_113_while_lstm_cell_344_matmul_1_readvariableop_resource:
(J
<lstm_113_while_lstm_cell_344_biasadd_readvariableop_resource:(ѕб3lstm_113/while/lstm_cell_344/BiasAdd/ReadVariableOpб2lstm_113/while/lstm_cell_344/MatMul/ReadVariableOpб4lstm_113/while/lstm_cell_344/MatMul_1/ReadVariableOpЉ
@lstm_113/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
2lstm_113/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_113_while_tensorarrayv2read_tensorlistgetitem_lstm_113_tensorarrayunstack_tensorlistfromtensor_0lstm_113_while_placeholderIlstm_113/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0░
2lstm_113/while/lstm_cell_344/MatMul/ReadVariableOpReadVariableOp=lstm_113_while_lstm_cell_344_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0о
#lstm_113/while/lstm_cell_344/MatMulMatMul9lstm_113/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_113/while/lstm_cell_344/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┤
4lstm_113/while/lstm_cell_344/MatMul_1/ReadVariableOpReadVariableOp?lstm_113_while_lstm_cell_344_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0й
%lstm_113/while/lstm_cell_344/MatMul_1MatMullstm_113_while_placeholder_2<lstm_113/while/lstm_cell_344/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (╗
 lstm_113/while/lstm_cell_344/addAddV2-lstm_113/while/lstm_cell_344/MatMul:product:0/lstm_113/while/lstm_cell_344/MatMul_1:product:0*
T0*'
_output_shapes
:         («
3lstm_113/while/lstm_cell_344/BiasAdd/ReadVariableOpReadVariableOp>lstm_113_while_lstm_cell_344_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0─
$lstm_113/while/lstm_cell_344/BiasAddBiasAdd$lstm_113/while/lstm_cell_344/add:z:0;lstm_113/while/lstm_cell_344/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (n
,lstm_113/while/lstm_cell_344/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_113/while/lstm_cell_344/splitSplit5lstm_113/while/lstm_cell_344/split/split_dim:output:0-lstm_113/while/lstm_cell_344/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitј
$lstm_113/while/lstm_cell_344/SigmoidSigmoid+lstm_113/while/lstm_cell_344/split:output:0*
T0*'
_output_shapes
:         
љ
&lstm_113/while/lstm_cell_344/Sigmoid_1Sigmoid+lstm_113/while/lstm_cell_344/split:output:1*
T0*'
_output_shapes
:         
Б
 lstm_113/while/lstm_cell_344/mulMul*lstm_113/while/lstm_cell_344/Sigmoid_1:y:0lstm_113_while_placeholder_3*
T0*'
_output_shapes
:         
ѕ
!lstm_113/while/lstm_cell_344/ReluRelu+lstm_113/while/lstm_cell_344/split:output:2*
T0*'
_output_shapes
:         
Х
"lstm_113/while/lstm_cell_344/mul_1Mul(lstm_113/while/lstm_cell_344/Sigmoid:y:0/lstm_113/while/lstm_cell_344/Relu:activations:0*
T0*'
_output_shapes
:         
Ф
"lstm_113/while/lstm_cell_344/add_1AddV2$lstm_113/while/lstm_cell_344/mul:z:0&lstm_113/while/lstm_cell_344/mul_1:z:0*
T0*'
_output_shapes
:         
љ
&lstm_113/while/lstm_cell_344/Sigmoid_2Sigmoid+lstm_113/while/lstm_cell_344/split:output:3*
T0*'
_output_shapes
:         
Ё
#lstm_113/while/lstm_cell_344/Relu_1Relu&lstm_113/while/lstm_cell_344/add_1:z:0*
T0*'
_output_shapes
:         
║
"lstm_113/while/lstm_cell_344/mul_2Mul*lstm_113/while/lstm_cell_344/Sigmoid_2:y:01lstm_113/while/lstm_cell_344/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ж
3lstm_113/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_113_while_placeholder_1lstm_113_while_placeholder&lstm_113/while/lstm_cell_344/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_113/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_113/while/addAddV2lstm_113_while_placeholderlstm_113/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_113/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_113/while/add_1AddV2*lstm_113_while_lstm_113_while_loop_counterlstm_113/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_113/while/IdentityIdentitylstm_113/while/add_1:z:0^lstm_113/while/NoOp*
T0*
_output_shapes
: ј
lstm_113/while/Identity_1Identity0lstm_113_while_lstm_113_while_maximum_iterations^lstm_113/while/NoOp*
T0*
_output_shapes
: t
lstm_113/while/Identity_2Identitylstm_113/while/add:z:0^lstm_113/while/NoOp*
T0*
_output_shapes
: А
lstm_113/while/Identity_3IdentityClstm_113/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_113/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_113/while/Identity_4Identity&lstm_113/while/lstm_cell_344/mul_2:z:0^lstm_113/while/NoOp*
T0*'
_output_shapes
:         
Ћ
lstm_113/while/Identity_5Identity&lstm_113/while/lstm_cell_344/add_1:z:0^lstm_113/while/NoOp*
T0*'
_output_shapes
:         
э
lstm_113/while/NoOpNoOp4^lstm_113/while/lstm_cell_344/BiasAdd/ReadVariableOp3^lstm_113/while/lstm_cell_344/MatMul/ReadVariableOp5^lstm_113/while/lstm_cell_344/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_113_while_identity lstm_113/while/Identity:output:0"?
lstm_113_while_identity_1"lstm_113/while/Identity_1:output:0"?
lstm_113_while_identity_2"lstm_113/while/Identity_2:output:0"?
lstm_113_while_identity_3"lstm_113/while/Identity_3:output:0"?
lstm_113_while_identity_4"lstm_113/while/Identity_4:output:0"?
lstm_113_while_identity_5"lstm_113/while/Identity_5:output:0"T
'lstm_113_while_lstm_113_strided_slice_1)lstm_113_while_lstm_113_strided_slice_1_0"~
<lstm_113_while_lstm_cell_344_biasadd_readvariableop_resource>lstm_113_while_lstm_cell_344_biasadd_readvariableop_resource_0"ђ
=lstm_113_while_lstm_cell_344_matmul_1_readvariableop_resource?lstm_113_while_lstm_cell_344_matmul_1_readvariableop_resource_0"|
;lstm_113_while_lstm_cell_344_matmul_readvariableop_resource=lstm_113_while_lstm_cell_344_matmul_readvariableop_resource_0"╠
clstm_113_while_tensorarrayv2read_tensorlistgetitem_lstm_113_tensorarrayunstack_tensorlistfromtensorelstm_113_while_tensorarrayv2read_tensorlistgetitem_lstm_113_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2j
3lstm_113/while/lstm_cell_344/BiasAdd/ReadVariableOp3lstm_113/while/lstm_cell_344/BiasAdd/ReadVariableOp2h
2lstm_113/while/lstm_cell_344/MatMul/ReadVariableOp2lstm_113/while/lstm_cell_344/MatMul/ReadVariableOp2l
4lstm_113/while/lstm_cell_344/MatMul_1/ReadVariableOp4lstm_113/while/lstm_cell_344/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_2085466
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2085466___redundant_placeholder05
1while_while_cond_2085466___redundant_placeholder15
1while_while_cond_2085466___redundant_placeholder25
1while_while_cond_2085466___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
аK
Ц
E__inference_lstm_111_layer_call_and_return_conditional_losses_2084506
inputs_0?
,lstm_cell_342_matmul_readvariableop_resource:	љA
.lstm_cell_342_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_342_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_342/BiasAdd/ReadVariableOpб#lstm_cell_342/MatMul/ReadVariableOpб%lstm_cell_342/MatMul_1/ReadVariableOpбwhile=
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_342/MatMul/ReadVariableOpReadVariableOp,lstm_cell_342_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_342/MatMulMatMulstrided_slice_2:output:0+lstm_cell_342/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_342/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_342_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_342/MatMul_1MatMulzeros:output:0-lstm_cell_342/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_342/addAddV2lstm_cell_342/MatMul:product:0 lstm_cell_342/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_342/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_342_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_342/BiasAddBiasAddlstm_cell_342/add:z:0,lstm_cell_342/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_342/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_342/splitSplit&lstm_cell_342/split/split_dim:output:0lstm_cell_342/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_342/SigmoidSigmoidlstm_cell_342/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_342/Sigmoid_1Sigmoidlstm_cell_342/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_342/mulMullstm_cell_342/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_342/ReluRelulstm_cell_342/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_342/mul_1Mullstm_cell_342/Sigmoid:y:0 lstm_cell_342/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_342/add_1AddV2lstm_cell_342/mul:z:0lstm_cell_342/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_342/Sigmoid_2Sigmoidlstm_cell_342/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_342/Relu_1Relulstm_cell_342/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_342/mul_2Mullstm_cell_342/Sigmoid_2:y:0"lstm_cell_342/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_342_matmul_readvariableop_resource.lstm_cell_342_matmul_1_readvariableop_resource-lstm_cell_342_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2084422*
condR
while_cond_2084421*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  d├
NoOpNoOp%^lstm_cell_342/BiasAdd/ReadVariableOp$^lstm_cell_342/MatMul/ReadVariableOp&^lstm_cell_342/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_342/BiasAdd/ReadVariableOp$lstm_cell_342/BiasAdd/ReadVariableOp2J
#lstm_cell_342/MatMul/ReadVariableOp#lstm_cell_342/MatMul/ReadVariableOp2N
%lstm_cell_342/MatMul_1/ReadVariableOp%lstm_cell_342/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
▀
ѕ
J__inference_lstm_cell_343_layer_call_and_return_conditional_losses_2086350

inputs
states_0
states_11
matmul_readvariableop_resource:	d╚3
 matmul_1_readvariableop_resource:	2╚.
biasadd_readvariableop_resource:	╚
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╚s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         2Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:QM
'
_output_shapes
:         2
"
_user_specified_name
states/0:QM
'
_output_shapes
:         2
"
_user_specified_name
states/1
ПJ
а
E__inference_lstm_113_layer_call_and_return_conditional_losses_2082866

inputs>
,lstm_cell_344_matmul_readvariableop_resource:2(@
.lstm_cell_344_matmul_1_readvariableop_resource:
(;
-lstm_cell_344_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_344/BiasAdd/ReadVariableOpб#lstm_cell_344/MatMul/ReadVariableOpб%lstm_cell_344/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_344/MatMul/ReadVariableOpReadVariableOp,lstm_cell_344_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_344/MatMulMatMulstrided_slice_2:output:0+lstm_cell_344/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_344/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_344_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_344/MatMul_1MatMulzeros:output:0-lstm_cell_344/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_344/addAddV2lstm_cell_344/MatMul:product:0 lstm_cell_344/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_344/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_344_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_344/BiasAddBiasAddlstm_cell_344/add:z:0,lstm_cell_344/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_344/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_344/splitSplit&lstm_cell_344/split/split_dim:output:0lstm_cell_344/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_344/SigmoidSigmoidlstm_cell_344/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_344/Sigmoid_1Sigmoidlstm_cell_344/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_344/mulMullstm_cell_344/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_344/ReluRelulstm_cell_344/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_344/mul_1Mullstm_cell_344/Sigmoid:y:0 lstm_cell_344/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_344/add_1AddV2lstm_cell_344/mul:z:0lstm_cell_344/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_344/Sigmoid_2Sigmoidlstm_cell_344/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_344/Relu_1Relulstm_cell_344/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_344/mul_2Mullstm_cell_344/Sigmoid_2:y:0"lstm_cell_344/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_344_matmul_readvariableop_resource.lstm_cell_344_matmul_1_readvariableop_resource-lstm_cell_344_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2082782*
condR
while_cond_2082781*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         
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
:         
├
NoOpNoOp%^lstm_cell_344/BiasAdd/ReadVariableOp$^lstm_cell_344/MatMul/ReadVariableOp&^lstm_cell_344/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_344/BiasAdd/ReadVariableOp$lstm_cell_344/BiasAdd/ReadVariableOp2J
#lstm_cell_344/MatMul/ReadVariableOp#lstm_cell_344/MatMul/ReadVariableOp2N
%lstm_cell_344/MatMul_1/ReadVariableOp%lstm_cell_344/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
║
╚
while_cond_2082122
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2082122___redundant_placeholder05
1while_while_cond_2082122___redundant_placeholder15
1while_while_cond_2082122___redundant_placeholder25
1while_while_cond_2082122___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
я
 
J__inference_sequential_37_layer_call_and_return_conditional_losses_2083346
lstm_111_input#
lstm_111_2083319:	љ#
lstm_111_2083321:	dљ
lstm_111_2083323:	љ#
lstm_112_2083326:	d╚#
lstm_112_2083328:	2╚
lstm_112_2083330:	╚"
lstm_113_2083333:2("
lstm_113_2083335:
(
lstm_113_2083337:("
dense_37_2083340:

dense_37_2083342:
identityѕб dense_37/StatefulPartitionedCallб lstm_111/StatefulPartitionedCallб lstm_112/StatefulPartitionedCallб lstm_113/StatefulPartitionedCallЊ
 lstm_111/StatefulPartitionedCallStatefulPartitionedCalllstm_111_inputlstm_111_2083319lstm_111_2083321lstm_111_2083323*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_111_layer_call_and_return_conditional_losses_2082350«
 lstm_112/StatefulPartitionedCallStatefulPartitionedCall)lstm_111/StatefulPartitionedCall:output:0lstm_112_2083326lstm_112_2083328lstm_112_2083330*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_112_layer_call_and_return_conditional_losses_2082500ф
 lstm_113/StatefulPartitionedCallStatefulPartitionedCall)lstm_112/StatefulPartitionedCall:output:0lstm_113_2083333lstm_113_2083335lstm_113_2083337*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_113_layer_call_and_return_conditional_losses_2082650ќ
 dense_37/StatefulPartitionedCallStatefulPartitionedCall)lstm_113/StatefulPartitionedCall:output:0dense_37_2083340dense_37_2083342*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_37_layer_call_and_return_conditional_losses_2082668x
IdentityIdentity)dense_37/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         м
NoOpNoOp!^dense_37/StatefulPartitionedCall!^lstm_111/StatefulPartitionedCall!^lstm_112/StatefulPartitionedCall!^lstm_113/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2D
 lstm_111/StatefulPartitionedCall lstm_111/StatefulPartitionedCall2D
 lstm_112/StatefulPartitionedCall lstm_112/StatefulPartitionedCall2D
 lstm_113/StatefulPartitionedCall lstm_113/StatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_111_input
Ѕ#
в
while_body_2082123
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_344_2082147_0:2(/
while_lstm_cell_344_2082149_0:
(+
while_lstm_cell_344_2082151_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_344_2082147:2(-
while_lstm_cell_344_2082149:
()
while_lstm_cell_344_2082151:(ѕб+while/lstm_cell_344/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╝
+while/lstm_cell_344/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_344_2082147_0while_lstm_cell_344_2082149_0while_lstm_cell_344_2082151_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_344_layer_call_and_return_conditional_losses_2082064П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_344/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_344/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         
Љ
while/Identity_5Identity4while/lstm_cell_344/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         
z

while/NoOpNoOp,^while/lstm_cell_344/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_344_2082147while_lstm_cell_344_2082147_0"<
while_lstm_cell_344_2082149while_lstm_cell_344_2082149_0"<
while_lstm_cell_344_2082151while_lstm_cell_344_2082151_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2Z
+while/lstm_cell_344/StatefulPartitionedCall+while/lstm_cell_344/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
─8
н
while_body_2085654
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_344_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_344_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_344_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_344_matmul_readvariableop_resource:2(F
4while_lstm_cell_344_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_344_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_344/BiasAdd/ReadVariableOpб)while/lstm_cell_344/MatMul/ReadVariableOpб+while/lstm_cell_344/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_344/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_344_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_344/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_344/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_344/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_344_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_344/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_344/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_344/addAddV2$while/lstm_cell_344/MatMul:product:0&while/lstm_cell_344/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_344/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_344_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_344/BiasAddBiasAddwhile/lstm_cell_344/add:z:02while/lstm_cell_344/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_344/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_344/splitSplit,while/lstm_cell_344/split/split_dim:output:0$while/lstm_cell_344/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_344/SigmoidSigmoid"while/lstm_cell_344/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_344/Sigmoid_1Sigmoid"while/lstm_cell_344/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_344/mulMul!while/lstm_cell_344/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_344/ReluRelu"while/lstm_cell_344/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_344/mul_1Mulwhile/lstm_cell_344/Sigmoid:y:0&while/lstm_cell_344/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_344/add_1AddV2while/lstm_cell_344/mul:z:0while/lstm_cell_344/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_344/Sigmoid_2Sigmoid"while/lstm_cell_344/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_344/Relu_1Reluwhile/lstm_cell_344/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_344/mul_2Mul!while/lstm_cell_344/Sigmoid_2:y:0(while/lstm_cell_344/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_344/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_344/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_344/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_344/BiasAdd/ReadVariableOp*^while/lstm_cell_344/MatMul/ReadVariableOp,^while/lstm_cell_344/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_344_biasadd_readvariableop_resource5while_lstm_cell_344_biasadd_readvariableop_resource_0"n
4while_lstm_cell_344_matmul_1_readvariableop_resource6while_lstm_cell_344_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_344_matmul_readvariableop_resource4while_lstm_cell_344_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_344/BiasAdd/ReadVariableOp*while/lstm_cell_344/BiasAdd/ReadVariableOp2V
)while/lstm_cell_344/MatMul/ReadVariableOp)while/lstm_cell_344/MatMul/ReadVariableOp2Z
+while/lstm_cell_344/MatMul_1/ReadVariableOp+while/lstm_cell_344/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_2085796
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2085796___redundant_placeholder05
1while_while_cond_2085796___redundant_placeholder15
1while_while_cond_2085796___redundant_placeholder25
1while_while_cond_2085796___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_2083111
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2083111___redundant_placeholder05
1while_while_cond_2083111___redundant_placeholder15
1while_while_cond_2083111___redundant_placeholder25
1while_while_cond_2083111___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
и

Ч
lstm_113_while_cond_2083801.
*lstm_113_while_lstm_113_while_loop_counter4
0lstm_113_while_lstm_113_while_maximum_iterations
lstm_113_while_placeholder 
lstm_113_while_placeholder_1 
lstm_113_while_placeholder_2 
lstm_113_while_placeholder_30
,lstm_113_while_less_lstm_113_strided_slice_1G
Clstm_113_while_lstm_113_while_cond_2083801___redundant_placeholder0G
Clstm_113_while_lstm_113_while_cond_2083801___redundant_placeholder1G
Clstm_113_while_lstm_113_while_cond_2083801___redundant_placeholder2G
Clstm_113_while_lstm_113_while_cond_2083801___redundant_placeholder3
lstm_113_while_identity
є
lstm_113/while/LessLesslstm_113_while_placeholder,lstm_113_while_less_lstm_113_strided_slice_1*
T0*
_output_shapes
: ]
lstm_113/while/IdentityIdentitylstm_113/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_113_while_identity lstm_113/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_2082946
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2082946___redundant_placeholder05
1while_while_cond_2082946___redundant_placeholder15
1while_while_cond_2082946___redundant_placeholder25
1while_while_cond_2082946___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
В
ш
/__inference_lstm_cell_344_layer_call_fn_2086416

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_344_layer_call_and_return_conditional_losses_2082064o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         
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
?:         2:         
:         
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:QM
'
_output_shapes
:         

"
_user_specified_name
states/0:QM
'
_output_shapes
:         

"
_user_specified_name
states/1
Ј#
ы
while_body_2081582
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_343_2081606_0:	d╚0
while_lstm_cell_343_2081608_0:	2╚,
while_lstm_cell_343_2081610_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_343_2081606:	d╚.
while_lstm_cell_343_2081608:	2╚*
while_lstm_cell_343_2081610:	╚ѕб+while/lstm_cell_343/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0╝
+while/lstm_cell_343/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_343_2081606_0while_lstm_cell_343_2081608_0while_lstm_cell_343_2081610_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_343_layer_call_and_return_conditional_losses_2081568П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_343/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_343/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         2Љ
while/Identity_5Identity4while/lstm_cell_343/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         2z

while/NoOpNoOp,^while/lstm_cell_343/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_343_2081606while_lstm_cell_343_2081606_0"<
while_lstm_cell_343_2081608while_lstm_cell_343_2081608_0"<
while_lstm_cell_343_2081610while_lstm_cell_343_2081610_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2Z
+while/lstm_cell_343/StatefulPartitionedCall+while/lstm_cell_343/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
▄

Џ
/__inference_sequential_37_layer_call_fn_2083438

inputs
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	d╚
	unknown_3:	2╚
	unknown_4:	╚
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityѕбStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_sequential_37_layer_call_and_return_conditional_losses_2082675o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Л8
┌
while_body_2085324
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_343_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_343_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_343_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_343_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_343_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_343_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_343/BiasAdd/ReadVariableOpб)while/lstm_cell_343/MatMul/ReadVariableOpб+while/lstm_cell_343/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_343/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_343_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_343/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_343/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_343/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_343_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_343/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_343/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_343/addAddV2$while/lstm_cell_343/MatMul:product:0&while/lstm_cell_343/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_343/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_343_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_343/BiasAddBiasAddwhile/lstm_cell_343/add:z:02while/lstm_cell_343/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_343/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_343/splitSplit,while/lstm_cell_343/split/split_dim:output:0$while/lstm_cell_343/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_343/SigmoidSigmoid"while/lstm_cell_343/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_343/Sigmoid_1Sigmoid"while/lstm_cell_343/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_343/mulMul!while/lstm_cell_343/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_343/ReluRelu"while/lstm_cell_343/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_343/mul_1Mulwhile/lstm_cell_343/Sigmoid:y:0&while/lstm_cell_343/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_343/add_1AddV2while/lstm_cell_343/mul:z:0while/lstm_cell_343/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_343/Sigmoid_2Sigmoid"while/lstm_cell_343/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_343/Relu_1Reluwhile/lstm_cell_343/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_343/mul_2Mul!while/lstm_cell_343/Sigmoid_2:y:0(while/lstm_cell_343/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_343/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_343/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_343/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_343/BiasAdd/ReadVariableOp*^while/lstm_cell_343/MatMul/ReadVariableOp,^while/lstm_cell_343/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_343_biasadd_readvariableop_resource5while_lstm_cell_343_biasadd_readvariableop_resource_0"n
4while_lstm_cell_343_matmul_1_readvariableop_resource6while_lstm_cell_343_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_343_matmul_readvariableop_resource4while_lstm_cell_343_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_343/BiasAdd/ReadVariableOp*while/lstm_cell_343/BiasAdd/ReadVariableOp2V
)while/lstm_cell_343/MatMul/ReadVariableOp)while/lstm_cell_343/MatMul/ReadVariableOp2Z
+while/lstm_cell_343/MatMul_1/ReadVariableOp+while/lstm_cell_343/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
сS
й
)sequential_37_lstm_112_while_body_2080922J
Fsequential_37_lstm_112_while_sequential_37_lstm_112_while_loop_counterP
Lsequential_37_lstm_112_while_sequential_37_lstm_112_while_maximum_iterations,
(sequential_37_lstm_112_while_placeholder.
*sequential_37_lstm_112_while_placeholder_1.
*sequential_37_lstm_112_while_placeholder_2.
*sequential_37_lstm_112_while_placeholder_3I
Esequential_37_lstm_112_while_sequential_37_lstm_112_strided_slice_1_0є
Ђsequential_37_lstm_112_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_112_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_37_lstm_112_while_lstm_cell_343_matmul_readvariableop_resource_0:	d╚`
Msequential_37_lstm_112_while_lstm_cell_343_matmul_1_readvariableop_resource_0:	2╚[
Lsequential_37_lstm_112_while_lstm_cell_343_biasadd_readvariableop_resource_0:	╚)
%sequential_37_lstm_112_while_identity+
'sequential_37_lstm_112_while_identity_1+
'sequential_37_lstm_112_while_identity_2+
'sequential_37_lstm_112_while_identity_3+
'sequential_37_lstm_112_while_identity_4+
'sequential_37_lstm_112_while_identity_5G
Csequential_37_lstm_112_while_sequential_37_lstm_112_strided_slice_1Ѓ
sequential_37_lstm_112_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_112_tensorarrayunstack_tensorlistfromtensor\
Isequential_37_lstm_112_while_lstm_cell_343_matmul_readvariableop_resource:	d╚^
Ksequential_37_lstm_112_while_lstm_cell_343_matmul_1_readvariableop_resource:	2╚Y
Jsequential_37_lstm_112_while_lstm_cell_343_biasadd_readvariableop_resource:	╚ѕбAsequential_37/lstm_112/while/lstm_cell_343/BiasAdd/ReadVariableOpб@sequential_37/lstm_112/while/lstm_cell_343/MatMul/ReadVariableOpбBsequential_37/lstm_112/while/lstm_cell_343/MatMul_1/ReadVariableOpЪ
Nsequential_37/lstm_112/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   џ
@sequential_37/lstm_112/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЂsequential_37_lstm_112_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_112_tensorarrayunstack_tensorlistfromtensor_0(sequential_37_lstm_112_while_placeholderWsequential_37/lstm_112/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0═
@sequential_37/lstm_112/while/lstm_cell_343/MatMul/ReadVariableOpReadVariableOpKsequential_37_lstm_112_while_lstm_cell_343_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0Ђ
1sequential_37/lstm_112/while/lstm_cell_343/MatMulMatMulGsequential_37/lstm_112/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_37/lstm_112/while/lstm_cell_343/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Л
Bsequential_37/lstm_112/while/lstm_cell_343/MatMul_1/ReadVariableOpReadVariableOpMsequential_37_lstm_112_while_lstm_cell_343_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0У
3sequential_37/lstm_112/while/lstm_cell_343/MatMul_1MatMul*sequential_37_lstm_112_while_placeholder_2Jsequential_37/lstm_112/while/lstm_cell_343/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Т
.sequential_37/lstm_112/while/lstm_cell_343/addAddV2;sequential_37/lstm_112/while/lstm_cell_343/MatMul:product:0=sequential_37/lstm_112/while/lstm_cell_343/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚╦
Asequential_37/lstm_112/while/lstm_cell_343/BiasAdd/ReadVariableOpReadVariableOpLsequential_37_lstm_112_while_lstm_cell_343_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0№
2sequential_37/lstm_112/while/lstm_cell_343/BiasAddBiasAdd2sequential_37/lstm_112/while/lstm_cell_343/add:z:0Isequential_37/lstm_112/while/lstm_cell_343/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚|
:sequential_37/lstm_112/while/lstm_cell_343/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
0sequential_37/lstm_112/while/lstm_cell_343/splitSplitCsequential_37/lstm_112/while/lstm_cell_343/split/split_dim:output:0;sequential_37/lstm_112/while/lstm_cell_343/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitф
2sequential_37/lstm_112/while/lstm_cell_343/SigmoidSigmoid9sequential_37/lstm_112/while/lstm_cell_343/split:output:0*
T0*'
_output_shapes
:         2г
4sequential_37/lstm_112/while/lstm_cell_343/Sigmoid_1Sigmoid9sequential_37/lstm_112/while/lstm_cell_343/split:output:1*
T0*'
_output_shapes
:         2═
.sequential_37/lstm_112/while/lstm_cell_343/mulMul8sequential_37/lstm_112/while/lstm_cell_343/Sigmoid_1:y:0*sequential_37_lstm_112_while_placeholder_3*
T0*'
_output_shapes
:         2ц
/sequential_37/lstm_112/while/lstm_cell_343/ReluRelu9sequential_37/lstm_112/while/lstm_cell_343/split:output:2*
T0*'
_output_shapes
:         2Я
0sequential_37/lstm_112/while/lstm_cell_343/mul_1Mul6sequential_37/lstm_112/while/lstm_cell_343/Sigmoid:y:0=sequential_37/lstm_112/while/lstm_cell_343/Relu:activations:0*
T0*'
_output_shapes
:         2Н
0sequential_37/lstm_112/while/lstm_cell_343/add_1AddV22sequential_37/lstm_112/while/lstm_cell_343/mul:z:04sequential_37/lstm_112/while/lstm_cell_343/mul_1:z:0*
T0*'
_output_shapes
:         2г
4sequential_37/lstm_112/while/lstm_cell_343/Sigmoid_2Sigmoid9sequential_37/lstm_112/while/lstm_cell_343/split:output:3*
T0*'
_output_shapes
:         2А
1sequential_37/lstm_112/while/lstm_cell_343/Relu_1Relu4sequential_37/lstm_112/while/lstm_cell_343/add_1:z:0*
T0*'
_output_shapes
:         2С
0sequential_37/lstm_112/while/lstm_cell_343/mul_2Mul8sequential_37/lstm_112/while/lstm_cell_343/Sigmoid_2:y:0?sequential_37/lstm_112/while/lstm_cell_343/Relu_1:activations:0*
T0*'
_output_shapes
:         2б
Asequential_37/lstm_112/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_37_lstm_112_while_placeholder_1(sequential_37_lstm_112_while_placeholder4sequential_37/lstm_112/while/lstm_cell_343/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмd
"sequential_37/lstm_112/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :А
 sequential_37/lstm_112/while/addAddV2(sequential_37_lstm_112_while_placeholder+sequential_37/lstm_112/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_37/lstm_112/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :├
"sequential_37/lstm_112/while/add_1AddV2Fsequential_37_lstm_112_while_sequential_37_lstm_112_while_loop_counter-sequential_37/lstm_112/while/add_1/y:output:0*
T0*
_output_shapes
: ъ
%sequential_37/lstm_112/while/IdentityIdentity&sequential_37/lstm_112/while/add_1:z:0"^sequential_37/lstm_112/while/NoOp*
T0*
_output_shapes
: к
'sequential_37/lstm_112/while/Identity_1IdentityLsequential_37_lstm_112_while_sequential_37_lstm_112_while_maximum_iterations"^sequential_37/lstm_112/while/NoOp*
T0*
_output_shapes
: ъ
'sequential_37/lstm_112/while/Identity_2Identity$sequential_37/lstm_112/while/add:z:0"^sequential_37/lstm_112/while/NoOp*
T0*
_output_shapes
: ╦
'sequential_37/lstm_112/while/Identity_3IdentityQsequential_37/lstm_112/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_37/lstm_112/while/NoOp*
T0*
_output_shapes
: ┐
'sequential_37/lstm_112/while/Identity_4Identity4sequential_37/lstm_112/while/lstm_cell_343/mul_2:z:0"^sequential_37/lstm_112/while/NoOp*
T0*'
_output_shapes
:         2┐
'sequential_37/lstm_112/while/Identity_5Identity4sequential_37/lstm_112/while/lstm_cell_343/add_1:z:0"^sequential_37/lstm_112/while/NoOp*
T0*'
_output_shapes
:         2»
!sequential_37/lstm_112/while/NoOpNoOpB^sequential_37/lstm_112/while/lstm_cell_343/BiasAdd/ReadVariableOpA^sequential_37/lstm_112/while/lstm_cell_343/MatMul/ReadVariableOpC^sequential_37/lstm_112/while/lstm_cell_343/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_37_lstm_112_while_identity.sequential_37/lstm_112/while/Identity:output:0"[
'sequential_37_lstm_112_while_identity_10sequential_37/lstm_112/while/Identity_1:output:0"[
'sequential_37_lstm_112_while_identity_20sequential_37/lstm_112/while/Identity_2:output:0"[
'sequential_37_lstm_112_while_identity_30sequential_37/lstm_112/while/Identity_3:output:0"[
'sequential_37_lstm_112_while_identity_40sequential_37/lstm_112/while/Identity_4:output:0"[
'sequential_37_lstm_112_while_identity_50sequential_37/lstm_112/while/Identity_5:output:0"џ
Jsequential_37_lstm_112_while_lstm_cell_343_biasadd_readvariableop_resourceLsequential_37_lstm_112_while_lstm_cell_343_biasadd_readvariableop_resource_0"ю
Ksequential_37_lstm_112_while_lstm_cell_343_matmul_1_readvariableop_resourceMsequential_37_lstm_112_while_lstm_cell_343_matmul_1_readvariableop_resource_0"ў
Isequential_37_lstm_112_while_lstm_cell_343_matmul_readvariableop_resourceKsequential_37_lstm_112_while_lstm_cell_343_matmul_readvariableop_resource_0"ї
Csequential_37_lstm_112_while_sequential_37_lstm_112_strided_slice_1Esequential_37_lstm_112_while_sequential_37_lstm_112_strided_slice_1_0"Ё
sequential_37_lstm_112_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_112_tensorarrayunstack_tensorlistfromtensorЂsequential_37_lstm_112_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_112_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2є
Asequential_37/lstm_112/while/lstm_cell_343/BiasAdd/ReadVariableOpAsequential_37/lstm_112/while/lstm_cell_343/BiasAdd/ReadVariableOp2ё
@sequential_37/lstm_112/while/lstm_cell_343/MatMul/ReadVariableOp@sequential_37/lstm_112/while/lstm_cell_343/MatMul/ReadVariableOp2ѕ
Bsequential_37/lstm_112/while/lstm_cell_343/MatMul_1/ReadVariableOpBsequential_37/lstm_112/while/lstm_cell_343/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
Ѓ
и
*__inference_lstm_112_layer_call_fn_2084968

inputs
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identityѕбStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_112_layer_call_and_return_conditional_losses_2082500s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
Л8
┌
while_body_2082947
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_343_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_343_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_343_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_343_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_343_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_343_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_343/BiasAdd/ReadVariableOpб)while/lstm_cell_343/MatMul/ReadVariableOpб+while/lstm_cell_343/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_343/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_343_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_343/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_343/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_343/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_343_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_343/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_343/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_343/addAddV2$while/lstm_cell_343/MatMul:product:0&while/lstm_cell_343/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_343/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_343_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_343/BiasAddBiasAddwhile/lstm_cell_343/add:z:02while/lstm_cell_343/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_343/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_343/splitSplit,while/lstm_cell_343/split/split_dim:output:0$while/lstm_cell_343/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_343/SigmoidSigmoid"while/lstm_cell_343/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_343/Sigmoid_1Sigmoid"while/lstm_cell_343/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_343/mulMul!while/lstm_cell_343/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_343/ReluRelu"while/lstm_cell_343/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_343/mul_1Mulwhile/lstm_cell_343/Sigmoid:y:0&while/lstm_cell_343/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_343/add_1AddV2while/lstm_cell_343/mul:z:0while/lstm_cell_343/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_343/Sigmoid_2Sigmoid"while/lstm_cell_343/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_343/Relu_1Reluwhile/lstm_cell_343/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_343/mul_2Mul!while/lstm_cell_343/Sigmoid_2:y:0(while/lstm_cell_343/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_343/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_343/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_343/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_343/BiasAdd/ReadVariableOp*^while/lstm_cell_343/MatMul/ReadVariableOp,^while/lstm_cell_343/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_343_biasadd_readvariableop_resource5while_lstm_cell_343_biasadd_readvariableop_resource_0"n
4while_lstm_cell_343_matmul_1_readvariableop_resource6while_lstm_cell_343_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_343_matmul_readvariableop_resource4while_lstm_cell_343_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_343/BiasAdd/ReadVariableOp*while/lstm_cell_343/BiasAdd/ReadVariableOp2V
)while/lstm_cell_343/MatMul/ReadVariableOp)while/lstm_cell_343/MatMul/ReadVariableOp2Z
+while/lstm_cell_343/MatMul_1/ReadVariableOp+while/lstm_cell_343/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
▀
ѕ
J__inference_lstm_cell_343_layer_call_and_return_conditional_losses_2086382

inputs
states_0
states_11
matmul_readvariableop_resource:	d╚3
 matmul_1_readvariableop_resource:	2╚.
biasadd_readvariableop_resource:	╚
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╚s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         2Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:QM
'
_output_shapes
:         2
"
_user_specified_name
states/0:QM
'
_output_shapes
:         2
"
_user_specified_name
states/1
њK
б
E__inference_lstm_113_layer_call_and_return_conditional_losses_2085881
inputs_0>
,lstm_cell_344_matmul_readvariableop_resource:2(@
.lstm_cell_344_matmul_1_readvariableop_resource:
(;
-lstm_cell_344_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_344/BiasAdd/ReadVariableOpб#lstm_cell_344/MatMul/ReadVariableOpб%lstm_cell_344/MatMul_1/ReadVariableOpбwhile=
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_344/MatMul/ReadVariableOpReadVariableOp,lstm_cell_344_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_344/MatMulMatMulstrided_slice_2:output:0+lstm_cell_344/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_344/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_344_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_344/MatMul_1MatMulzeros:output:0-lstm_cell_344/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_344/addAddV2lstm_cell_344/MatMul:product:0 lstm_cell_344/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_344/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_344_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_344/BiasAddBiasAddlstm_cell_344/add:z:0,lstm_cell_344/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_344/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_344/splitSplit&lstm_cell_344/split/split_dim:output:0lstm_cell_344/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_344/SigmoidSigmoidlstm_cell_344/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_344/Sigmoid_1Sigmoidlstm_cell_344/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_344/mulMullstm_cell_344/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_344/ReluRelulstm_cell_344/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_344/mul_1Mullstm_cell_344/Sigmoid:y:0 lstm_cell_344/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_344/add_1AddV2lstm_cell_344/mul:z:0lstm_cell_344/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_344/Sigmoid_2Sigmoidlstm_cell_344/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_344/Relu_1Relulstm_cell_344/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_344/mul_2Mullstm_cell_344/Sigmoid_2:y:0"lstm_cell_344/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_344_matmul_readvariableop_resource.lstm_cell_344_matmul_1_readvariableop_resource-lstm_cell_344_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2085797*
condR
while_cond_2085796*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  
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
:         
├
NoOpNoOp%^lstm_cell_344/BiasAdd/ReadVariableOp$^lstm_cell_344/MatMul/ReadVariableOp&^lstm_cell_344/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2L
$lstm_cell_344/BiasAdd/ReadVariableOp$lstm_cell_344/BiasAdd/ReadVariableOp2J
#lstm_cell_344/MatMul/ReadVariableOp#lstm_cell_344/MatMul/ReadVariableOp2N
%lstm_cell_344/MatMul_1/ReadVariableOp%lstm_cell_344/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
З

Б
/__inference_sequential_37_layer_call_fn_2082700
lstm_111_input
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	d╚
	unknown_3:	2╚
	unknown_4:	╚
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityѕбStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCalllstm_111_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_sequential_37_layer_call_and_return_conditional_losses_2082675o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_111_input
жЂ
ќ
J__inference_sequential_37_layer_call_and_return_conditional_losses_2083892

inputsH
5lstm_111_lstm_cell_342_matmul_readvariableop_resource:	љJ
7lstm_111_lstm_cell_342_matmul_1_readvariableop_resource:	dљE
6lstm_111_lstm_cell_342_biasadd_readvariableop_resource:	љH
5lstm_112_lstm_cell_343_matmul_readvariableop_resource:	d╚J
7lstm_112_lstm_cell_343_matmul_1_readvariableop_resource:	2╚E
6lstm_112_lstm_cell_343_biasadd_readvariableop_resource:	╚G
5lstm_113_lstm_cell_344_matmul_readvariableop_resource:2(I
7lstm_113_lstm_cell_344_matmul_1_readvariableop_resource:
(D
6lstm_113_lstm_cell_344_biasadd_readvariableop_resource:(9
'dense_37_matmul_readvariableop_resource:
6
(dense_37_biasadd_readvariableop_resource:
identityѕбdense_37/BiasAdd/ReadVariableOpбdense_37/MatMul/ReadVariableOpб-lstm_111/lstm_cell_342/BiasAdd/ReadVariableOpб,lstm_111/lstm_cell_342/MatMul/ReadVariableOpб.lstm_111/lstm_cell_342/MatMul_1/ReadVariableOpбlstm_111/whileб-lstm_112/lstm_cell_343/BiasAdd/ReadVariableOpб,lstm_112/lstm_cell_343/MatMul/ReadVariableOpб.lstm_112/lstm_cell_343/MatMul_1/ReadVariableOpбlstm_112/whileб-lstm_113/lstm_cell_344/BiasAdd/ReadVariableOpб,lstm_113/lstm_cell_344/MatMul/ReadVariableOpб.lstm_113/lstm_cell_344/MatMul_1/ReadVariableOpбlstm_113/whileD
lstm_111/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_111/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_111/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_111/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_111/strided_sliceStridedSlicelstm_111/Shape:output:0%lstm_111/strided_slice/stack:output:0'lstm_111/strided_slice/stack_1:output:0'lstm_111/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_111/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dј
lstm_111/zeros/packedPacklstm_111/strided_slice:output:0 lstm_111/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_111/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_111/zerosFilllstm_111/zeros/packed:output:0lstm_111/zeros/Const:output:0*
T0*'
_output_shapes
:         d[
lstm_111/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dњ
lstm_111/zeros_1/packedPacklstm_111/strided_slice:output:0"lstm_111/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_111/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_111/zeros_1Fill lstm_111/zeros_1/packed:output:0lstm_111/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dl
lstm_111/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_111/transpose	Transposeinputs lstm_111/transpose/perm:output:0*
T0*+
_output_shapes
:         V
lstm_111/Shape_1Shapelstm_111/transpose:y:0*
T0*
_output_shapes
:h
lstm_111/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_111/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_111/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_111/strided_slice_1StridedSlicelstm_111/Shape_1:output:0'lstm_111/strided_slice_1/stack:output:0)lstm_111/strided_slice_1/stack_1:output:0)lstm_111/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_111/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_111/TensorArrayV2TensorListReserve-lstm_111/TensorArrayV2/element_shape:output:0!lstm_111/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_111/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ч
0lstm_111/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_111/transpose:y:0Glstm_111/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_111/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_111/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_111/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_111/strided_slice_2StridedSlicelstm_111/transpose:y:0'lstm_111/strided_slice_2/stack:output:0)lstm_111/strided_slice_2/stack_1:output:0)lstm_111/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskБ
,lstm_111/lstm_cell_342/MatMul/ReadVariableOpReadVariableOp5lstm_111_lstm_cell_342_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0│
lstm_111/lstm_cell_342/MatMulMatMul!lstm_111/strided_slice_2:output:04lstm_111/lstm_cell_342/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љД
.lstm_111/lstm_cell_342/MatMul_1/ReadVariableOpReadVariableOp7lstm_111_lstm_cell_342_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0Г
lstm_111/lstm_cell_342/MatMul_1MatMullstm_111/zeros:output:06lstm_111/lstm_cell_342/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љф
lstm_111/lstm_cell_342/addAddV2'lstm_111/lstm_cell_342/MatMul:product:0)lstm_111/lstm_cell_342/MatMul_1:product:0*
T0*(
_output_shapes
:         љА
-lstm_111/lstm_cell_342/BiasAdd/ReadVariableOpReadVariableOp6lstm_111_lstm_cell_342_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0│
lstm_111/lstm_cell_342/BiasAddBiasAddlstm_111/lstm_cell_342/add:z:05lstm_111/lstm_cell_342/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љh
&lstm_111/lstm_cell_342/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_111/lstm_cell_342/splitSplit/lstm_111/lstm_cell_342/split/split_dim:output:0'lstm_111/lstm_cell_342/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitѓ
lstm_111/lstm_cell_342/SigmoidSigmoid%lstm_111/lstm_cell_342/split:output:0*
T0*'
_output_shapes
:         dё
 lstm_111/lstm_cell_342/Sigmoid_1Sigmoid%lstm_111/lstm_cell_342/split:output:1*
T0*'
_output_shapes
:         dћ
lstm_111/lstm_cell_342/mulMul$lstm_111/lstm_cell_342/Sigmoid_1:y:0lstm_111/zeros_1:output:0*
T0*'
_output_shapes
:         d|
lstm_111/lstm_cell_342/ReluRelu%lstm_111/lstm_cell_342/split:output:2*
T0*'
_output_shapes
:         dц
lstm_111/lstm_cell_342/mul_1Mul"lstm_111/lstm_cell_342/Sigmoid:y:0)lstm_111/lstm_cell_342/Relu:activations:0*
T0*'
_output_shapes
:         dЎ
lstm_111/lstm_cell_342/add_1AddV2lstm_111/lstm_cell_342/mul:z:0 lstm_111/lstm_cell_342/mul_1:z:0*
T0*'
_output_shapes
:         dё
 lstm_111/lstm_cell_342/Sigmoid_2Sigmoid%lstm_111/lstm_cell_342/split:output:3*
T0*'
_output_shapes
:         dy
lstm_111/lstm_cell_342/Relu_1Relu lstm_111/lstm_cell_342/add_1:z:0*
T0*'
_output_shapes
:         dе
lstm_111/lstm_cell_342/mul_2Mul$lstm_111/lstm_cell_342/Sigmoid_2:y:0+lstm_111/lstm_cell_342/Relu_1:activations:0*
T0*'
_output_shapes
:         dw
&lstm_111/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
lstm_111/TensorArrayV2_1TensorListReserve/lstm_111/TensorArrayV2_1/element_shape:output:0!lstm_111/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_111/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_111/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_111/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_111/whileWhile$lstm_111/while/loop_counter:output:0*lstm_111/while/maximum_iterations:output:0lstm_111/time:output:0!lstm_111/TensorArrayV2_1:handle:0lstm_111/zeros:output:0lstm_111/zeros_1:output:0!lstm_111/strided_slice_1:output:0@lstm_111/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_111_lstm_cell_342_matmul_readvariableop_resource7lstm_111_lstm_cell_342_matmul_1_readvariableop_resource6lstm_111_lstm_cell_342_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_111_while_body_2083524*'
condR
lstm_111_while_cond_2083523*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations і
9lstm_111/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   П
+lstm_111/TensorArrayV2Stack/TensorListStackTensorListStacklstm_111/while:output:3Blstm_111/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0q
lstm_111/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_111/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_111/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_111/strided_slice_3StridedSlice4lstm_111/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_111/strided_slice_3/stack:output:0)lstm_111/strided_slice_3/stack_1:output:0)lstm_111/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskn
lstm_111/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_111/transpose_1	Transpose4lstm_111/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_111/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dd
lstm_111/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_112/ShapeShapelstm_111/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_112/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_112/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_112/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_112/strided_sliceStridedSlicelstm_112/Shape:output:0%lstm_112/strided_slice/stack:output:0'lstm_112/strided_slice/stack_1:output:0'lstm_112/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_112/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ј
lstm_112/zeros/packedPacklstm_112/strided_slice:output:0 lstm_112/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_112/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_112/zerosFilllstm_112/zeros/packed:output:0lstm_112/zeros/Const:output:0*
T0*'
_output_shapes
:         2[
lstm_112/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2њ
lstm_112/zeros_1/packedPacklstm_112/strided_slice:output:0"lstm_112/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_112/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_112/zeros_1Fill lstm_112/zeros_1/packed:output:0lstm_112/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2l
lstm_112/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_112/transpose	Transposelstm_111/transpose_1:y:0 lstm_112/transpose/perm:output:0*
T0*+
_output_shapes
:         dV
lstm_112/Shape_1Shapelstm_112/transpose:y:0*
T0*
_output_shapes
:h
lstm_112/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_112/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_112/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_112/strided_slice_1StridedSlicelstm_112/Shape_1:output:0'lstm_112/strided_slice_1/stack:output:0)lstm_112/strided_slice_1/stack_1:output:0)lstm_112/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_112/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_112/TensorArrayV2TensorListReserve-lstm_112/TensorArrayV2/element_shape:output:0!lstm_112/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_112/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ч
0lstm_112/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_112/transpose:y:0Glstm_112/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_112/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_112/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_112/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_112/strided_slice_2StridedSlicelstm_112/transpose:y:0'lstm_112/strided_slice_2/stack:output:0)lstm_112/strided_slice_2/stack_1:output:0)lstm_112/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskБ
,lstm_112/lstm_cell_343/MatMul/ReadVariableOpReadVariableOp5lstm_112_lstm_cell_343_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0│
lstm_112/lstm_cell_343/MatMulMatMul!lstm_112/strided_slice_2:output:04lstm_112/lstm_cell_343/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Д
.lstm_112/lstm_cell_343/MatMul_1/ReadVariableOpReadVariableOp7lstm_112_lstm_cell_343_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0Г
lstm_112/lstm_cell_343/MatMul_1MatMullstm_112/zeros:output:06lstm_112/lstm_cell_343/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ф
lstm_112/lstm_cell_343/addAddV2'lstm_112/lstm_cell_343/MatMul:product:0)lstm_112/lstm_cell_343/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚А
-lstm_112/lstm_cell_343/BiasAdd/ReadVariableOpReadVariableOp6lstm_112_lstm_cell_343_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0│
lstm_112/lstm_cell_343/BiasAddBiasAddlstm_112/lstm_cell_343/add:z:05lstm_112/lstm_cell_343/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚h
&lstm_112/lstm_cell_343/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_112/lstm_cell_343/splitSplit/lstm_112/lstm_cell_343/split/split_dim:output:0'lstm_112/lstm_cell_343/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitѓ
lstm_112/lstm_cell_343/SigmoidSigmoid%lstm_112/lstm_cell_343/split:output:0*
T0*'
_output_shapes
:         2ё
 lstm_112/lstm_cell_343/Sigmoid_1Sigmoid%lstm_112/lstm_cell_343/split:output:1*
T0*'
_output_shapes
:         2ћ
lstm_112/lstm_cell_343/mulMul$lstm_112/lstm_cell_343/Sigmoid_1:y:0lstm_112/zeros_1:output:0*
T0*'
_output_shapes
:         2|
lstm_112/lstm_cell_343/ReluRelu%lstm_112/lstm_cell_343/split:output:2*
T0*'
_output_shapes
:         2ц
lstm_112/lstm_cell_343/mul_1Mul"lstm_112/lstm_cell_343/Sigmoid:y:0)lstm_112/lstm_cell_343/Relu:activations:0*
T0*'
_output_shapes
:         2Ў
lstm_112/lstm_cell_343/add_1AddV2lstm_112/lstm_cell_343/mul:z:0 lstm_112/lstm_cell_343/mul_1:z:0*
T0*'
_output_shapes
:         2ё
 lstm_112/lstm_cell_343/Sigmoid_2Sigmoid%lstm_112/lstm_cell_343/split:output:3*
T0*'
_output_shapes
:         2y
lstm_112/lstm_cell_343/Relu_1Relu lstm_112/lstm_cell_343/add_1:z:0*
T0*'
_output_shapes
:         2е
lstm_112/lstm_cell_343/mul_2Mul$lstm_112/lstm_cell_343/Sigmoid_2:y:0+lstm_112/lstm_cell_343/Relu_1:activations:0*
T0*'
_output_shapes
:         2w
&lstm_112/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
lstm_112/TensorArrayV2_1TensorListReserve/lstm_112/TensorArrayV2_1/element_shape:output:0!lstm_112/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_112/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_112/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_112/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_112/whileWhile$lstm_112/while/loop_counter:output:0*lstm_112/while/maximum_iterations:output:0lstm_112/time:output:0!lstm_112/TensorArrayV2_1:handle:0lstm_112/zeros:output:0lstm_112/zeros_1:output:0!lstm_112/strided_slice_1:output:0@lstm_112/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_112_lstm_cell_343_matmul_readvariableop_resource7lstm_112_lstm_cell_343_matmul_1_readvariableop_resource6lstm_112_lstm_cell_343_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_112_while_body_2083663*'
condR
lstm_112_while_cond_2083662*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations і
9lstm_112/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   П
+lstm_112/TensorArrayV2Stack/TensorListStackTensorListStacklstm_112/while:output:3Blstm_112/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0q
lstm_112/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_112/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_112/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_112/strided_slice_3StridedSlice4lstm_112/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_112/strided_slice_3/stack:output:0)lstm_112/strided_slice_3/stack_1:output:0)lstm_112/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskn
lstm_112/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_112/transpose_1	Transpose4lstm_112/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_112/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2d
lstm_112/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_113/ShapeShapelstm_112/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_113/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_113/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_113/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_113/strided_sliceStridedSlicelstm_113/Shape:output:0%lstm_113/strided_slice/stack:output:0'lstm_113/strided_slice/stack_1:output:0'lstm_113/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_113/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ј
lstm_113/zeros/packedPacklstm_113/strided_slice:output:0 lstm_113/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_113/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_113/zerosFilllstm_113/zeros/packed:output:0lstm_113/zeros/Const:output:0*
T0*'
_output_shapes
:         
[
lstm_113/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
њ
lstm_113/zeros_1/packedPacklstm_113/strided_slice:output:0"lstm_113/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_113/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_113/zeros_1Fill lstm_113/zeros_1/packed:output:0lstm_113/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
l
lstm_113/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_113/transpose	Transposelstm_112/transpose_1:y:0 lstm_113/transpose/perm:output:0*
T0*+
_output_shapes
:         2V
lstm_113/Shape_1Shapelstm_113/transpose:y:0*
T0*
_output_shapes
:h
lstm_113/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_113/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_113/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_113/strided_slice_1StridedSlicelstm_113/Shape_1:output:0'lstm_113/strided_slice_1/stack:output:0)lstm_113/strided_slice_1/stack_1:output:0)lstm_113/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_113/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_113/TensorArrayV2TensorListReserve-lstm_113/TensorArrayV2/element_shape:output:0!lstm_113/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_113/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ч
0lstm_113/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_113/transpose:y:0Glstm_113/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_113/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_113/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_113/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_113/strided_slice_2StridedSlicelstm_113/transpose:y:0'lstm_113/strided_slice_2/stack:output:0)lstm_113/strided_slice_2/stack_1:output:0)lstm_113/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskб
,lstm_113/lstm_cell_344/MatMul/ReadVariableOpReadVariableOp5lstm_113_lstm_cell_344_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▓
lstm_113/lstm_cell_344/MatMulMatMul!lstm_113/strided_slice_2:output:04lstm_113/lstm_cell_344/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (д
.lstm_113/lstm_cell_344/MatMul_1/ReadVariableOpReadVariableOp7lstm_113_lstm_cell_344_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0г
lstm_113/lstm_cell_344/MatMul_1MatMullstm_113/zeros:output:06lstm_113/lstm_cell_344/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Е
lstm_113/lstm_cell_344/addAddV2'lstm_113/lstm_cell_344/MatMul:product:0)lstm_113/lstm_cell_344/MatMul_1:product:0*
T0*'
_output_shapes
:         (а
-lstm_113/lstm_cell_344/BiasAdd/ReadVariableOpReadVariableOp6lstm_113_lstm_cell_344_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▓
lstm_113/lstm_cell_344/BiasAddBiasAddlstm_113/lstm_cell_344/add:z:05lstm_113/lstm_cell_344/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (h
&lstm_113/lstm_cell_344/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_113/lstm_cell_344/splitSplit/lstm_113/lstm_cell_344/split/split_dim:output:0'lstm_113/lstm_cell_344/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitѓ
lstm_113/lstm_cell_344/SigmoidSigmoid%lstm_113/lstm_cell_344/split:output:0*
T0*'
_output_shapes
:         
ё
 lstm_113/lstm_cell_344/Sigmoid_1Sigmoid%lstm_113/lstm_cell_344/split:output:1*
T0*'
_output_shapes
:         
ћ
lstm_113/lstm_cell_344/mulMul$lstm_113/lstm_cell_344/Sigmoid_1:y:0lstm_113/zeros_1:output:0*
T0*'
_output_shapes
:         
|
lstm_113/lstm_cell_344/ReluRelu%lstm_113/lstm_cell_344/split:output:2*
T0*'
_output_shapes
:         
ц
lstm_113/lstm_cell_344/mul_1Mul"lstm_113/lstm_cell_344/Sigmoid:y:0)lstm_113/lstm_cell_344/Relu:activations:0*
T0*'
_output_shapes
:         
Ў
lstm_113/lstm_cell_344/add_1AddV2lstm_113/lstm_cell_344/mul:z:0 lstm_113/lstm_cell_344/mul_1:z:0*
T0*'
_output_shapes
:         
ё
 lstm_113/lstm_cell_344/Sigmoid_2Sigmoid%lstm_113/lstm_cell_344/split:output:3*
T0*'
_output_shapes
:         
y
lstm_113/lstm_cell_344/Relu_1Relu lstm_113/lstm_cell_344/add_1:z:0*
T0*'
_output_shapes
:         
е
lstm_113/lstm_cell_344/mul_2Mul$lstm_113/lstm_cell_344/Sigmoid_2:y:0+lstm_113/lstm_cell_344/Relu_1:activations:0*
T0*'
_output_shapes
:         
w
&lstm_113/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   М
lstm_113/TensorArrayV2_1TensorListReserve/lstm_113/TensorArrayV2_1/element_shape:output:0!lstm_113/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_113/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_113/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_113/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_113/whileWhile$lstm_113/while/loop_counter:output:0*lstm_113/while/maximum_iterations:output:0lstm_113/time:output:0!lstm_113/TensorArrayV2_1:handle:0lstm_113/zeros:output:0lstm_113/zeros_1:output:0!lstm_113/strided_slice_1:output:0@lstm_113/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_113_lstm_cell_344_matmul_readvariableop_resource7lstm_113_lstm_cell_344_matmul_1_readvariableop_resource6lstm_113_lstm_cell_344_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_113_while_body_2083802*'
condR
lstm_113_while_cond_2083801*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations і
9lstm_113/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   П
+lstm_113/TensorArrayV2Stack/TensorListStackTensorListStacklstm_113/while:output:3Blstm_113/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0q
lstm_113/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_113/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_113/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_113/strided_slice_3StridedSlice4lstm_113/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_113/strided_slice_3/stack:output:0)lstm_113/strided_slice_3/stack_1:output:0)lstm_113/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskn
lstm_113/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_113/transpose_1	Transpose4lstm_113/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_113/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
d
lstm_113/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    є
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0ќ
dense_37/MatMulMatMul!lstm_113/strided_slice_3:output:0&dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_37/BiasAddBiasAdddense_37/MatMul:product:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_37/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         В
NoOpNoOp ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp.^lstm_111/lstm_cell_342/BiasAdd/ReadVariableOp-^lstm_111/lstm_cell_342/MatMul/ReadVariableOp/^lstm_111/lstm_cell_342/MatMul_1/ReadVariableOp^lstm_111/while.^lstm_112/lstm_cell_343/BiasAdd/ReadVariableOp-^lstm_112/lstm_cell_343/MatMul/ReadVariableOp/^lstm_112/lstm_cell_343/MatMul_1/ReadVariableOp^lstm_112/while.^lstm_113/lstm_cell_344/BiasAdd/ReadVariableOp-^lstm_113/lstm_cell_344/MatMul/ReadVariableOp/^lstm_113/lstm_cell_344/MatMul_1/ReadVariableOp^lstm_113/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp2^
-lstm_111/lstm_cell_342/BiasAdd/ReadVariableOp-lstm_111/lstm_cell_342/BiasAdd/ReadVariableOp2\
,lstm_111/lstm_cell_342/MatMul/ReadVariableOp,lstm_111/lstm_cell_342/MatMul/ReadVariableOp2`
.lstm_111/lstm_cell_342/MatMul_1/ReadVariableOp.lstm_111/lstm_cell_342/MatMul_1/ReadVariableOp2 
lstm_111/whilelstm_111/while2^
-lstm_112/lstm_cell_343/BiasAdd/ReadVariableOp-lstm_112/lstm_cell_343/BiasAdd/ReadVariableOp2\
,lstm_112/lstm_cell_343/MatMul/ReadVariableOp,lstm_112/lstm_cell_343/MatMul/ReadVariableOp2`
.lstm_112/lstm_cell_343/MatMul_1/ReadVariableOp.lstm_112/lstm_cell_343/MatMul_1/ReadVariableOp2 
lstm_112/whilelstm_112/while2^
-lstm_113/lstm_cell_344/BiasAdd/ReadVariableOp-lstm_113/lstm_cell_344/BiasAdd/ReadVariableOp2\
,lstm_113/lstm_cell_344/MatMul/ReadVariableOp,lstm_113/lstm_cell_344/MatMul/ReadVariableOp2`
.lstm_113/lstm_cell_344/MatMul_1/ReadVariableOp.lstm_113/lstm_cell_344/MatMul_1/ReadVariableOp2 
lstm_113/whilelstm_113/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
║
╚
while_cond_2085323
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2085323___redundant_placeholder05
1while_while_cond_2085323___redundant_placeholder15
1while_while_cond_2085323___redundant_placeholder25
1while_while_cond_2085323___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_2084850
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2084850___redundant_placeholder05
1while_while_cond_2084850___redundant_placeholder15
1while_while_cond_2084850___redundant_placeholder25
1while_while_cond_2084850___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
аK
Ц
E__inference_lstm_112_layer_call_and_return_conditional_losses_2085122
inputs_0?
,lstm_cell_343_matmul_readvariableop_resource:	d╚A
.lstm_cell_343_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_343_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_343/BiasAdd/ReadVariableOpб#lstm_cell_343/MatMul/ReadVariableOpб%lstm_cell_343/MatMul_1/ReadVariableOpбwhile=
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_343/MatMul/ReadVariableOpReadVariableOp,lstm_cell_343_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_343/MatMulMatMulstrided_slice_2:output:0+lstm_cell_343/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_343/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_343_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_343/MatMul_1MatMulzeros:output:0-lstm_cell_343/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_343/addAddV2lstm_cell_343/MatMul:product:0 lstm_cell_343/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_343/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_343_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_343/BiasAddBiasAddlstm_cell_343/add:z:0,lstm_cell_343/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_343/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_343/splitSplit&lstm_cell_343/split/split_dim:output:0lstm_cell_343/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_343/SigmoidSigmoidlstm_cell_343/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_343/Sigmoid_1Sigmoidlstm_cell_343/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_343/mulMullstm_cell_343/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_343/ReluRelulstm_cell_343/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_343/mul_1Mullstm_cell_343/Sigmoid:y:0 lstm_cell_343/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_343/add_1AddV2lstm_cell_343/mul:z:0lstm_cell_343/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_343/Sigmoid_2Sigmoidlstm_cell_343/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_343/Relu_1Relulstm_cell_343/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_343/mul_2Mullstm_cell_343/Sigmoid_2:y:0"lstm_cell_343/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_343_matmul_readvariableop_resource.lstm_cell_343_matmul_1_readvariableop_resource-lstm_cell_343_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2085038*
condR
while_cond_2085037*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  2├
NoOpNoOp%^lstm_cell_343/BiasAdd/ReadVariableOp$^lstm_cell_343/MatMul/ReadVariableOp&^lstm_cell_343/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_343/BiasAdd/ReadVariableOp$lstm_cell_343/BiasAdd/ReadVariableOp2J
#lstm_cell_343/MatMul/ReadVariableOp#lstm_cell_343/MatMul/ReadVariableOp2N
%lstm_cell_343/MatMul_1/ReadVariableOp%lstm_cell_343/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
и

Ч
lstm_111_while_cond_2083950.
*lstm_111_while_lstm_111_while_loop_counter4
0lstm_111_while_lstm_111_while_maximum_iterations
lstm_111_while_placeholder 
lstm_111_while_placeholder_1 
lstm_111_while_placeholder_2 
lstm_111_while_placeholder_30
,lstm_111_while_less_lstm_111_strided_slice_1G
Clstm_111_while_lstm_111_while_cond_2083950___redundant_placeholder0G
Clstm_111_while_lstm_111_while_cond_2083950___redundant_placeholder1G
Clstm_111_while_lstm_111_while_cond_2083950___redundant_placeholder2G
Clstm_111_while_lstm_111_while_cond_2083950___redundant_placeholder3
lstm_111_while_identity
є
lstm_111/while/LessLesslstm_111_while_placeholder,lstm_111_while_less_lstm_111_strided_slice_1*
T0*
_output_shapes
: ]
lstm_111/while/IdentityIdentitylstm_111/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_111_while_identity lstm_111/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_2081422
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2081422___redundant_placeholder05
1while_while_cond_2081422___redundant_placeholder15
1while_while_cond_2081422___redundant_placeholder25
1while_while_cond_2081422___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
и

Ч
lstm_112_while_cond_2084089.
*lstm_112_while_lstm_112_while_loop_counter4
0lstm_112_while_lstm_112_while_maximum_iterations
lstm_112_while_placeholder 
lstm_112_while_placeholder_1 
lstm_112_while_placeholder_2 
lstm_112_while_placeholder_30
,lstm_112_while_less_lstm_112_strided_slice_1G
Clstm_112_while_lstm_112_while_cond_2084089___redundant_placeholder0G
Clstm_112_while_lstm_112_while_cond_2084089___redundant_placeholder1G
Clstm_112_while_lstm_112_while_cond_2084089___redundant_placeholder2G
Clstm_112_while_lstm_112_while_cond_2084089___redundant_placeholder3
lstm_112_while_identity
є
lstm_112/while/LessLesslstm_112_while_placeholder,lstm_112_while_less_lstm_112_strided_slice_1*
T0*
_output_shapes
: ]
lstm_112/while/IdentityIdentitylstm_112/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_112_while_identity lstm_112/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
Л8
┌
while_body_2084708
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_342_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_342_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_342_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_342_matmul_readvariableop_resource:	љG
4while_lstm_cell_342_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_342_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_342/BiasAdd/ReadVariableOpб)while/lstm_cell_342/MatMul/ReadVariableOpб+while/lstm_cell_342/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_342/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_342_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_342/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_342/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_342/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_342_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_342/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_342/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_342/addAddV2$while/lstm_cell_342/MatMul:product:0&while/lstm_cell_342/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_342/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_342_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_342/BiasAddBiasAddwhile/lstm_cell_342/add:z:02while/lstm_cell_342/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_342/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_342/splitSplit,while/lstm_cell_342/split/split_dim:output:0$while/lstm_cell_342/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_342/SigmoidSigmoid"while/lstm_cell_342/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_342/Sigmoid_1Sigmoid"while/lstm_cell_342/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_342/mulMul!while/lstm_cell_342/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_342/ReluRelu"while/lstm_cell_342/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_342/mul_1Mulwhile/lstm_cell_342/Sigmoid:y:0&while/lstm_cell_342/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_342/add_1AddV2while/lstm_cell_342/mul:z:0while/lstm_cell_342/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_342/Sigmoid_2Sigmoid"while/lstm_cell_342/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_342/Relu_1Reluwhile/lstm_cell_342/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_342/mul_2Mul!while/lstm_cell_342/Sigmoid_2:y:0(while/lstm_cell_342/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_342/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_342/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_342/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_342/BiasAdd/ReadVariableOp*^while/lstm_cell_342/MatMul/ReadVariableOp,^while/lstm_cell_342/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_342_biasadd_readvariableop_resource5while_lstm_cell_342_biasadd_readvariableop_resource_0"n
4while_lstm_cell_342_matmul_1_readvariableop_resource6while_lstm_cell_342_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_342_matmul_readvariableop_resource4while_lstm_cell_342_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_342/BiasAdd/ReadVariableOp*while/lstm_cell_342/BiasAdd/ReadVariableOp2V
)while/lstm_cell_342/MatMul/ReadVariableOp)while/lstm_cell_342/MatMul/ReadVariableOp2Z
+while/lstm_cell_342/MatMul_1/ReadVariableOp+while/lstm_cell_342/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
Н
Ё
J__inference_lstm_cell_344_layer_call_and_return_conditional_losses_2086480

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         (r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         
Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         2:         
:         
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:QM
'
_output_shapes
:         

"
_user_specified_name
states/0:QM
'
_output_shapes
:         

"
_user_specified_name
states/1
┐
ћ
)sequential_37_lstm_112_while_cond_2080921J
Fsequential_37_lstm_112_while_sequential_37_lstm_112_while_loop_counterP
Lsequential_37_lstm_112_while_sequential_37_lstm_112_while_maximum_iterations,
(sequential_37_lstm_112_while_placeholder.
*sequential_37_lstm_112_while_placeholder_1.
*sequential_37_lstm_112_while_placeholder_2.
*sequential_37_lstm_112_while_placeholder_3L
Hsequential_37_lstm_112_while_less_sequential_37_lstm_112_strided_slice_1c
_sequential_37_lstm_112_while_sequential_37_lstm_112_while_cond_2080921___redundant_placeholder0c
_sequential_37_lstm_112_while_sequential_37_lstm_112_while_cond_2080921___redundant_placeholder1c
_sequential_37_lstm_112_while_sequential_37_lstm_112_while_cond_2080921___redundant_placeholder2c
_sequential_37_lstm_112_while_sequential_37_lstm_112_while_cond_2080921___redundant_placeholder3)
%sequential_37_lstm_112_while_identity
Й
!sequential_37/lstm_112/while/LessLess(sequential_37_lstm_112_while_placeholderHsequential_37_lstm_112_while_less_sequential_37_lstm_112_strided_slice_1*
T0*
_output_shapes
: y
%sequential_37/lstm_112/while/IdentityIdentity%sequential_37/lstm_112/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_37_lstm_112_while_identity.sequential_37/lstm_112/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
ћC
З

lstm_113_while_body_2083802.
*lstm_113_while_lstm_113_while_loop_counter4
0lstm_113_while_lstm_113_while_maximum_iterations
lstm_113_while_placeholder 
lstm_113_while_placeholder_1 
lstm_113_while_placeholder_2 
lstm_113_while_placeholder_3-
)lstm_113_while_lstm_113_strided_slice_1_0i
elstm_113_while_tensorarrayv2read_tensorlistgetitem_lstm_113_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_113_while_lstm_cell_344_matmul_readvariableop_resource_0:2(Q
?lstm_113_while_lstm_cell_344_matmul_1_readvariableop_resource_0:
(L
>lstm_113_while_lstm_cell_344_biasadd_readvariableop_resource_0:(
lstm_113_while_identity
lstm_113_while_identity_1
lstm_113_while_identity_2
lstm_113_while_identity_3
lstm_113_while_identity_4
lstm_113_while_identity_5+
'lstm_113_while_lstm_113_strided_slice_1g
clstm_113_while_tensorarrayv2read_tensorlistgetitem_lstm_113_tensorarrayunstack_tensorlistfromtensorM
;lstm_113_while_lstm_cell_344_matmul_readvariableop_resource:2(O
=lstm_113_while_lstm_cell_344_matmul_1_readvariableop_resource:
(J
<lstm_113_while_lstm_cell_344_biasadd_readvariableop_resource:(ѕб3lstm_113/while/lstm_cell_344/BiasAdd/ReadVariableOpб2lstm_113/while/lstm_cell_344/MatMul/ReadVariableOpб4lstm_113/while/lstm_cell_344/MatMul_1/ReadVariableOpЉ
@lstm_113/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
2lstm_113/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_113_while_tensorarrayv2read_tensorlistgetitem_lstm_113_tensorarrayunstack_tensorlistfromtensor_0lstm_113_while_placeholderIlstm_113/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0░
2lstm_113/while/lstm_cell_344/MatMul/ReadVariableOpReadVariableOp=lstm_113_while_lstm_cell_344_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0о
#lstm_113/while/lstm_cell_344/MatMulMatMul9lstm_113/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_113/while/lstm_cell_344/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┤
4lstm_113/while/lstm_cell_344/MatMul_1/ReadVariableOpReadVariableOp?lstm_113_while_lstm_cell_344_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0й
%lstm_113/while/lstm_cell_344/MatMul_1MatMullstm_113_while_placeholder_2<lstm_113/while/lstm_cell_344/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (╗
 lstm_113/while/lstm_cell_344/addAddV2-lstm_113/while/lstm_cell_344/MatMul:product:0/lstm_113/while/lstm_cell_344/MatMul_1:product:0*
T0*'
_output_shapes
:         («
3lstm_113/while/lstm_cell_344/BiasAdd/ReadVariableOpReadVariableOp>lstm_113_while_lstm_cell_344_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0─
$lstm_113/while/lstm_cell_344/BiasAddBiasAdd$lstm_113/while/lstm_cell_344/add:z:0;lstm_113/while/lstm_cell_344/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (n
,lstm_113/while/lstm_cell_344/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_113/while/lstm_cell_344/splitSplit5lstm_113/while/lstm_cell_344/split/split_dim:output:0-lstm_113/while/lstm_cell_344/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitј
$lstm_113/while/lstm_cell_344/SigmoidSigmoid+lstm_113/while/lstm_cell_344/split:output:0*
T0*'
_output_shapes
:         
љ
&lstm_113/while/lstm_cell_344/Sigmoid_1Sigmoid+lstm_113/while/lstm_cell_344/split:output:1*
T0*'
_output_shapes
:         
Б
 lstm_113/while/lstm_cell_344/mulMul*lstm_113/while/lstm_cell_344/Sigmoid_1:y:0lstm_113_while_placeholder_3*
T0*'
_output_shapes
:         
ѕ
!lstm_113/while/lstm_cell_344/ReluRelu+lstm_113/while/lstm_cell_344/split:output:2*
T0*'
_output_shapes
:         
Х
"lstm_113/while/lstm_cell_344/mul_1Mul(lstm_113/while/lstm_cell_344/Sigmoid:y:0/lstm_113/while/lstm_cell_344/Relu:activations:0*
T0*'
_output_shapes
:         
Ф
"lstm_113/while/lstm_cell_344/add_1AddV2$lstm_113/while/lstm_cell_344/mul:z:0&lstm_113/while/lstm_cell_344/mul_1:z:0*
T0*'
_output_shapes
:         
љ
&lstm_113/while/lstm_cell_344/Sigmoid_2Sigmoid+lstm_113/while/lstm_cell_344/split:output:3*
T0*'
_output_shapes
:         
Ё
#lstm_113/while/lstm_cell_344/Relu_1Relu&lstm_113/while/lstm_cell_344/add_1:z:0*
T0*'
_output_shapes
:         
║
"lstm_113/while/lstm_cell_344/mul_2Mul*lstm_113/while/lstm_cell_344/Sigmoid_2:y:01lstm_113/while/lstm_cell_344/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ж
3lstm_113/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_113_while_placeholder_1lstm_113_while_placeholder&lstm_113/while/lstm_cell_344/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_113/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_113/while/addAddV2lstm_113_while_placeholderlstm_113/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_113/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_113/while/add_1AddV2*lstm_113_while_lstm_113_while_loop_counterlstm_113/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_113/while/IdentityIdentitylstm_113/while/add_1:z:0^lstm_113/while/NoOp*
T0*
_output_shapes
: ј
lstm_113/while/Identity_1Identity0lstm_113_while_lstm_113_while_maximum_iterations^lstm_113/while/NoOp*
T0*
_output_shapes
: t
lstm_113/while/Identity_2Identitylstm_113/while/add:z:0^lstm_113/while/NoOp*
T0*
_output_shapes
: А
lstm_113/while/Identity_3IdentityClstm_113/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_113/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_113/while/Identity_4Identity&lstm_113/while/lstm_cell_344/mul_2:z:0^lstm_113/while/NoOp*
T0*'
_output_shapes
:         
Ћ
lstm_113/while/Identity_5Identity&lstm_113/while/lstm_cell_344/add_1:z:0^lstm_113/while/NoOp*
T0*'
_output_shapes
:         
э
lstm_113/while/NoOpNoOp4^lstm_113/while/lstm_cell_344/BiasAdd/ReadVariableOp3^lstm_113/while/lstm_cell_344/MatMul/ReadVariableOp5^lstm_113/while/lstm_cell_344/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_113_while_identity lstm_113/while/Identity:output:0"?
lstm_113_while_identity_1"lstm_113/while/Identity_1:output:0"?
lstm_113_while_identity_2"lstm_113/while/Identity_2:output:0"?
lstm_113_while_identity_3"lstm_113/while/Identity_3:output:0"?
lstm_113_while_identity_4"lstm_113/while/Identity_4:output:0"?
lstm_113_while_identity_5"lstm_113/while/Identity_5:output:0"T
'lstm_113_while_lstm_113_strided_slice_1)lstm_113_while_lstm_113_strided_slice_1_0"~
<lstm_113_while_lstm_cell_344_biasadd_readvariableop_resource>lstm_113_while_lstm_cell_344_biasadd_readvariableop_resource_0"ђ
=lstm_113_while_lstm_cell_344_matmul_1_readvariableop_resource?lstm_113_while_lstm_cell_344_matmul_1_readvariableop_resource_0"|
;lstm_113_while_lstm_cell_344_matmul_readvariableop_resource=lstm_113_while_lstm_cell_344_matmul_readvariableop_resource_0"╠
clstm_113_while_tensorarrayv2read_tensorlistgetitem_lstm_113_tensorarrayunstack_tensorlistfromtensorelstm_113_while_tensorarrayv2read_tensorlistgetitem_lstm_113_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2j
3lstm_113/while/lstm_cell_344/BiasAdd/ReadVariableOp3lstm_113/while/lstm_cell_344/BiasAdd/ReadVariableOp2h
2lstm_113/while/lstm_cell_344/MatMul/ReadVariableOp2lstm_113/while/lstm_cell_344/MatMul/ReadVariableOp2l
4lstm_113/while/lstm_cell_344/MatMul_1/ReadVariableOp4lstm_113/while/lstm_cell_344/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_2084564
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2084564___redundant_placeholder05
1while_while_cond_2084564___redundant_placeholder15
1while_while_cond_2084564___redundant_placeholder25
1while_while_cond_2084564___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_2081772
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2081772___redundant_placeholder05
1while_while_cond_2081772___redundant_placeholder15
1while_while_cond_2081772___redundant_placeholder25
1while_while_cond_2081772___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
АC
Щ

lstm_112_while_body_2084090.
*lstm_112_while_lstm_112_while_loop_counter4
0lstm_112_while_lstm_112_while_maximum_iterations
lstm_112_while_placeholder 
lstm_112_while_placeholder_1 
lstm_112_while_placeholder_2 
lstm_112_while_placeholder_3-
)lstm_112_while_lstm_112_strided_slice_1_0i
elstm_112_while_tensorarrayv2read_tensorlistgetitem_lstm_112_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_112_while_lstm_cell_343_matmul_readvariableop_resource_0:	d╚R
?lstm_112_while_lstm_cell_343_matmul_1_readvariableop_resource_0:	2╚M
>lstm_112_while_lstm_cell_343_biasadd_readvariableop_resource_0:	╚
lstm_112_while_identity
lstm_112_while_identity_1
lstm_112_while_identity_2
lstm_112_while_identity_3
lstm_112_while_identity_4
lstm_112_while_identity_5+
'lstm_112_while_lstm_112_strided_slice_1g
clstm_112_while_tensorarrayv2read_tensorlistgetitem_lstm_112_tensorarrayunstack_tensorlistfromtensorN
;lstm_112_while_lstm_cell_343_matmul_readvariableop_resource:	d╚P
=lstm_112_while_lstm_cell_343_matmul_1_readvariableop_resource:	2╚K
<lstm_112_while_lstm_cell_343_biasadd_readvariableop_resource:	╚ѕб3lstm_112/while/lstm_cell_343/BiasAdd/ReadVariableOpб2lstm_112/while/lstm_cell_343/MatMul/ReadVariableOpб4lstm_112/while/lstm_cell_343/MatMul_1/ReadVariableOpЉ
@lstm_112/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
2lstm_112/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_112_while_tensorarrayv2read_tensorlistgetitem_lstm_112_tensorarrayunstack_tensorlistfromtensor_0lstm_112_while_placeholderIlstm_112/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0▒
2lstm_112/while/lstm_cell_343/MatMul/ReadVariableOpReadVariableOp=lstm_112_while_lstm_cell_343_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0О
#lstm_112/while/lstm_cell_343/MatMulMatMul9lstm_112/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_112/while/lstm_cell_343/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚х
4lstm_112/while/lstm_cell_343/MatMul_1/ReadVariableOpReadVariableOp?lstm_112_while_lstm_cell_343_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Й
%lstm_112/while/lstm_cell_343/MatMul_1MatMullstm_112_while_placeholder_2<lstm_112/while/lstm_cell_343/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚╝
 lstm_112/while/lstm_cell_343/addAddV2-lstm_112/while/lstm_cell_343/MatMul:product:0/lstm_112/while/lstm_cell_343/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚»
3lstm_112/while/lstm_cell_343/BiasAdd/ReadVariableOpReadVariableOp>lstm_112_while_lstm_cell_343_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0┼
$lstm_112/while/lstm_cell_343/BiasAddBiasAdd$lstm_112/while/lstm_cell_343/add:z:0;lstm_112/while/lstm_cell_343/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚n
,lstm_112/while/lstm_cell_343/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_112/while/lstm_cell_343/splitSplit5lstm_112/while/lstm_cell_343/split/split_dim:output:0-lstm_112/while/lstm_cell_343/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitј
$lstm_112/while/lstm_cell_343/SigmoidSigmoid+lstm_112/while/lstm_cell_343/split:output:0*
T0*'
_output_shapes
:         2љ
&lstm_112/while/lstm_cell_343/Sigmoid_1Sigmoid+lstm_112/while/lstm_cell_343/split:output:1*
T0*'
_output_shapes
:         2Б
 lstm_112/while/lstm_cell_343/mulMul*lstm_112/while/lstm_cell_343/Sigmoid_1:y:0lstm_112_while_placeholder_3*
T0*'
_output_shapes
:         2ѕ
!lstm_112/while/lstm_cell_343/ReluRelu+lstm_112/while/lstm_cell_343/split:output:2*
T0*'
_output_shapes
:         2Х
"lstm_112/while/lstm_cell_343/mul_1Mul(lstm_112/while/lstm_cell_343/Sigmoid:y:0/lstm_112/while/lstm_cell_343/Relu:activations:0*
T0*'
_output_shapes
:         2Ф
"lstm_112/while/lstm_cell_343/add_1AddV2$lstm_112/while/lstm_cell_343/mul:z:0&lstm_112/while/lstm_cell_343/mul_1:z:0*
T0*'
_output_shapes
:         2љ
&lstm_112/while/lstm_cell_343/Sigmoid_2Sigmoid+lstm_112/while/lstm_cell_343/split:output:3*
T0*'
_output_shapes
:         2Ё
#lstm_112/while/lstm_cell_343/Relu_1Relu&lstm_112/while/lstm_cell_343/add_1:z:0*
T0*'
_output_shapes
:         2║
"lstm_112/while/lstm_cell_343/mul_2Mul*lstm_112/while/lstm_cell_343/Sigmoid_2:y:01lstm_112/while/lstm_cell_343/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ж
3lstm_112/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_112_while_placeholder_1lstm_112_while_placeholder&lstm_112/while/lstm_cell_343/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_112/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_112/while/addAddV2lstm_112_while_placeholderlstm_112/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_112/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_112/while/add_1AddV2*lstm_112_while_lstm_112_while_loop_counterlstm_112/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_112/while/IdentityIdentitylstm_112/while/add_1:z:0^lstm_112/while/NoOp*
T0*
_output_shapes
: ј
lstm_112/while/Identity_1Identity0lstm_112_while_lstm_112_while_maximum_iterations^lstm_112/while/NoOp*
T0*
_output_shapes
: t
lstm_112/while/Identity_2Identitylstm_112/while/add:z:0^lstm_112/while/NoOp*
T0*
_output_shapes
: А
lstm_112/while/Identity_3IdentityClstm_112/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_112/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_112/while/Identity_4Identity&lstm_112/while/lstm_cell_343/mul_2:z:0^lstm_112/while/NoOp*
T0*'
_output_shapes
:         2Ћ
lstm_112/while/Identity_5Identity&lstm_112/while/lstm_cell_343/add_1:z:0^lstm_112/while/NoOp*
T0*'
_output_shapes
:         2э
lstm_112/while/NoOpNoOp4^lstm_112/while/lstm_cell_343/BiasAdd/ReadVariableOp3^lstm_112/while/lstm_cell_343/MatMul/ReadVariableOp5^lstm_112/while/lstm_cell_343/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_112_while_identity lstm_112/while/Identity:output:0"?
lstm_112_while_identity_1"lstm_112/while/Identity_1:output:0"?
lstm_112_while_identity_2"lstm_112/while/Identity_2:output:0"?
lstm_112_while_identity_3"lstm_112/while/Identity_3:output:0"?
lstm_112_while_identity_4"lstm_112/while/Identity_4:output:0"?
lstm_112_while_identity_5"lstm_112/while/Identity_5:output:0"T
'lstm_112_while_lstm_112_strided_slice_1)lstm_112_while_lstm_112_strided_slice_1_0"~
<lstm_112_while_lstm_cell_343_biasadd_readvariableop_resource>lstm_112_while_lstm_cell_343_biasadd_readvariableop_resource_0"ђ
=lstm_112_while_lstm_cell_343_matmul_1_readvariableop_resource?lstm_112_while_lstm_cell_343_matmul_1_readvariableop_resource_0"|
;lstm_112_while_lstm_cell_343_matmul_readvariableop_resource=lstm_112_while_lstm_cell_343_matmul_readvariableop_resource_0"╠
clstm_112_while_tensorarrayv2read_tensorlistgetitem_lstm_112_tensorarrayunstack_tensorlistfromtensorelstm_112_while_tensorarrayv2read_tensorlistgetitem_lstm_112_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2j
3lstm_112/while/lstm_cell_343/BiasAdd/ReadVariableOp3lstm_112/while/lstm_cell_343/BiasAdd/ReadVariableOp2h
2lstm_112/while/lstm_cell_343/MatMul/ReadVariableOp2lstm_112/while/lstm_cell_343/MatMul/ReadVariableOp2l
4lstm_112/while/lstm_cell_343/MatMul_1/ReadVariableOp4lstm_112/while/lstm_cell_343/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
О
є
J__inference_lstm_cell_342_layer_call_and_return_conditional_losses_2081218

inputs

states
states_11
matmul_readvariableop_resource:	љ3
 matmul_1_readvariableop_resource:	dљ.
biasadd_readvariableop_resource:	љ
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         љs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_namestates:OK
'
_output_shapes
:         d
 
_user_specified_namestates
аK
Ц
E__inference_lstm_111_layer_call_and_return_conditional_losses_2084649
inputs_0?
,lstm_cell_342_matmul_readvariableop_resource:	љA
.lstm_cell_342_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_342_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_342/BiasAdd/ReadVariableOpб#lstm_cell_342/MatMul/ReadVariableOpб%lstm_cell_342/MatMul_1/ReadVariableOpбwhile=
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_342/MatMul/ReadVariableOpReadVariableOp,lstm_cell_342_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_342/MatMulMatMulstrided_slice_2:output:0+lstm_cell_342/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_342/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_342_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_342/MatMul_1MatMulzeros:output:0-lstm_cell_342/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_342/addAddV2lstm_cell_342/MatMul:product:0 lstm_cell_342/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_342/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_342_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_342/BiasAddBiasAddlstm_cell_342/add:z:0,lstm_cell_342/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_342/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_342/splitSplit&lstm_cell_342/split/split_dim:output:0lstm_cell_342/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_342/SigmoidSigmoidlstm_cell_342/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_342/Sigmoid_1Sigmoidlstm_cell_342/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_342/mulMullstm_cell_342/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_342/ReluRelulstm_cell_342/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_342/mul_1Mullstm_cell_342/Sigmoid:y:0 lstm_cell_342/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_342/add_1AddV2lstm_cell_342/mul:z:0lstm_cell_342/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_342/Sigmoid_2Sigmoidlstm_cell_342/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_342/Relu_1Relulstm_cell_342/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_342/mul_2Mullstm_cell_342/Sigmoid_2:y:0"lstm_cell_342/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_342_matmul_readvariableop_resource.lstm_cell_342_matmul_1_readvariableop_resource-lstm_cell_342_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2084565*
condR
while_cond_2084564*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  d├
NoOpNoOp%^lstm_cell_342/BiasAdd/ReadVariableOp$^lstm_cell_342/MatMul/ReadVariableOp&^lstm_cell_342/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_342/BiasAdd/ReadVariableOp$lstm_cell_342/BiasAdd/ReadVariableOp2J
#lstm_cell_342/MatMul/ReadVariableOp#lstm_cell_342/MatMul/ReadVariableOp2N
%lstm_cell_342/MatMul_1/ReadVariableOp%lstm_cell_342/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
║
╚
while_cond_2082415
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2082415___redundant_placeholder05
1while_while_cond_2082415___redundant_placeholder15
1while_while_cond_2082415___redundant_placeholder25
1while_while_cond_2082415___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_2081231
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2081231___redundant_placeholder05
1while_while_cond_2081231___redundant_placeholder15
1while_while_cond_2081231___redundant_placeholder25
1while_while_cond_2081231___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
Л8
┌
while_body_2085038
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_343_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_343_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_343_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_343_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_343_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_343_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_343/BiasAdd/ReadVariableOpб)while/lstm_cell_343/MatMul/ReadVariableOpб+while/lstm_cell_343/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_343/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_343_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_343/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_343/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_343/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_343_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_343/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_343/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_343/addAddV2$while/lstm_cell_343/MatMul:product:0&while/lstm_cell_343/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_343/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_343_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_343/BiasAddBiasAddwhile/lstm_cell_343/add:z:02while/lstm_cell_343/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_343/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_343/splitSplit,while/lstm_cell_343/split/split_dim:output:0$while/lstm_cell_343/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_343/SigmoidSigmoid"while/lstm_cell_343/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_343/Sigmoid_1Sigmoid"while/lstm_cell_343/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_343/mulMul!while/lstm_cell_343/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_343/ReluRelu"while/lstm_cell_343/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_343/mul_1Mulwhile/lstm_cell_343/Sigmoid:y:0&while/lstm_cell_343/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_343/add_1AddV2while/lstm_cell_343/mul:z:0while/lstm_cell_343/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_343/Sigmoid_2Sigmoid"while/lstm_cell_343/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_343/Relu_1Reluwhile/lstm_cell_343/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_343/mul_2Mul!while/lstm_cell_343/Sigmoid_2:y:0(while/lstm_cell_343/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_343/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_343/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_343/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_343/BiasAdd/ReadVariableOp*^while/lstm_cell_343/MatMul/ReadVariableOp,^while/lstm_cell_343/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_343_biasadd_readvariableop_resource5while_lstm_cell_343_biasadd_readvariableop_resource_0"n
4while_lstm_cell_343_matmul_1_readvariableop_resource6while_lstm_cell_343_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_343_matmul_readvariableop_resource4while_lstm_cell_343_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_343/BiasAdd/ReadVariableOp*while/lstm_cell_343/BiasAdd/ReadVariableOp2V
)while/lstm_cell_343/MatMul/ReadVariableOp)while/lstm_cell_343/MatMul/ReadVariableOp2Z
+while/lstm_cell_343/MatMul_1/ReadVariableOp+while/lstm_cell_343/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
Л8
┌
while_body_2084565
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_342_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_342_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_342_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_342_matmul_readvariableop_resource:	љG
4while_lstm_cell_342_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_342_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_342/BiasAdd/ReadVariableOpб)while/lstm_cell_342/MatMul/ReadVariableOpб+while/lstm_cell_342/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_342/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_342_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_342/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_342/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_342/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_342_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_342/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_342/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_342/addAddV2$while/lstm_cell_342/MatMul:product:0&while/lstm_cell_342/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_342/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_342_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_342/BiasAddBiasAddwhile/lstm_cell_342/add:z:02while/lstm_cell_342/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_342/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_342/splitSplit,while/lstm_cell_342/split/split_dim:output:0$while/lstm_cell_342/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_342/SigmoidSigmoid"while/lstm_cell_342/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_342/Sigmoid_1Sigmoid"while/lstm_cell_342/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_342/mulMul!while/lstm_cell_342/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_342/ReluRelu"while/lstm_cell_342/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_342/mul_1Mulwhile/lstm_cell_342/Sigmoid:y:0&while/lstm_cell_342/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_342/add_1AddV2while/lstm_cell_342/mul:z:0while/lstm_cell_342/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_342/Sigmoid_2Sigmoid"while/lstm_cell_342/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_342/Relu_1Reluwhile/lstm_cell_342/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_342/mul_2Mul!while/lstm_cell_342/Sigmoid_2:y:0(while/lstm_cell_342/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_342/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_342/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_342/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_342/BiasAdd/ReadVariableOp*^while/lstm_cell_342/MatMul/ReadVariableOp,^while/lstm_cell_342/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_342_biasadd_readvariableop_resource5while_lstm_cell_342_biasadd_readvariableop_resource_0"n
4while_lstm_cell_342_matmul_1_readvariableop_resource6while_lstm_cell_342_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_342_matmul_readvariableop_resource4while_lstm_cell_342_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_342/BiasAdd/ReadVariableOp*while/lstm_cell_342/BiasAdd/ReadVariableOp2V
)while/lstm_cell_342/MatMul/ReadVariableOp)while/lstm_cell_342/MatMul/ReadVariableOp2Z
+while/lstm_cell_342/MatMul_1/ReadVariableOp+while/lstm_cell_342/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_2081931
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2081931___redundant_placeholder05
1while_while_cond_2081931___redundant_placeholder15
1while_while_cond_2081931___redundant_placeholder25
1while_while_cond_2081931___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
Н
Ё
J__inference_lstm_cell_344_layer_call_and_return_conditional_losses_2086448

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         (r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         
Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         2:         
:         
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:QM
'
_output_shapes
:         

"
_user_specified_name
states/0:QM
'
_output_shapes
:         

"
_user_specified_name
states/1
О
є
J__inference_lstm_cell_342_layer_call_and_return_conditional_losses_2081364

inputs

states
states_11
matmul_readvariableop_resource:	љ3
 matmul_1_readvariableop_resource:	dљ.
biasadd_readvariableop_resource:	љ
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         љs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_namestates:OK
'
_output_shapes
:         d
 
_user_specified_namestates
║
╚
while_cond_2085939
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2085939___redundant_placeholder05
1while_while_cond_2085939___redundant_placeholder15
1while_while_cond_2085939___redundant_placeholder25
1while_while_cond_2085939___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_2082265
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2082265___redundant_placeholder05
1while_while_cond_2082265___redundant_placeholder15
1while_while_cond_2082265___redundant_placeholder25
1while_while_cond_2082265___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
═
Ѓ
J__inference_lstm_cell_344_layer_call_and_return_conditional_losses_2082064

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         (r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         
Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         2:         
:         
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:OK
'
_output_shapes
:         

 
_user_specified_namestates:OK
'
_output_shapes
:         

 
_user_specified_namestates
њK
б
E__inference_lstm_113_layer_call_and_return_conditional_losses_2085738
inputs_0>
,lstm_cell_344_matmul_readvariableop_resource:2(@
.lstm_cell_344_matmul_1_readvariableop_resource:
(;
-lstm_cell_344_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_344/BiasAdd/ReadVariableOpб#lstm_cell_344/MatMul/ReadVariableOpб%lstm_cell_344/MatMul_1/ReadVariableOpбwhile=
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_344/MatMul/ReadVariableOpReadVariableOp,lstm_cell_344_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_344/MatMulMatMulstrided_slice_2:output:0+lstm_cell_344/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_344/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_344_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_344/MatMul_1MatMulzeros:output:0-lstm_cell_344/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_344/addAddV2lstm_cell_344/MatMul:product:0 lstm_cell_344/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_344/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_344_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_344/BiasAddBiasAddlstm_cell_344/add:z:0,lstm_cell_344/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_344/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_344/splitSplit&lstm_cell_344/split/split_dim:output:0lstm_cell_344/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_344/SigmoidSigmoidlstm_cell_344/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_344/Sigmoid_1Sigmoidlstm_cell_344/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_344/mulMullstm_cell_344/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_344/ReluRelulstm_cell_344/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_344/mul_1Mullstm_cell_344/Sigmoid:y:0 lstm_cell_344/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_344/add_1AddV2lstm_cell_344/mul:z:0lstm_cell_344/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_344/Sigmoid_2Sigmoidlstm_cell_344/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_344/Relu_1Relulstm_cell_344/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_344/mul_2Mullstm_cell_344/Sigmoid_2:y:0"lstm_cell_344/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_344_matmul_readvariableop_resource.lstm_cell_344_matmul_1_readvariableop_resource-lstm_cell_344_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2085654*
condR
while_cond_2085653*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  
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
:         
├
NoOpNoOp%^lstm_cell_344/BiasAdd/ReadVariableOp$^lstm_cell_344/MatMul/ReadVariableOp&^lstm_cell_344/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2L
$lstm_cell_344/BiasAdd/ReadVariableOp$lstm_cell_344/BiasAdd/ReadVariableOp2J
#lstm_cell_344/MatMul/ReadVariableOp#lstm_cell_344/MatMul/ReadVariableOp2N
%lstm_cell_344/MatMul_1/ReadVariableOp%lstm_cell_344/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
─8
н
while_body_2085797
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_344_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_344_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_344_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_344_matmul_readvariableop_resource:2(F
4while_lstm_cell_344_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_344_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_344/BiasAdd/ReadVariableOpб)while/lstm_cell_344/MatMul/ReadVariableOpб+while/lstm_cell_344/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_344/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_344_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_344/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_344/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_344/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_344_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_344/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_344/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_344/addAddV2$while/lstm_cell_344/MatMul:product:0&while/lstm_cell_344/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_344/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_344_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_344/BiasAddBiasAddwhile/lstm_cell_344/add:z:02while/lstm_cell_344/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_344/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_344/splitSplit,while/lstm_cell_344/split/split_dim:output:0$while/lstm_cell_344/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_344/SigmoidSigmoid"while/lstm_cell_344/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_344/Sigmoid_1Sigmoid"while/lstm_cell_344/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_344/mulMul!while/lstm_cell_344/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_344/ReluRelu"while/lstm_cell_344/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_344/mul_1Mulwhile/lstm_cell_344/Sigmoid:y:0&while/lstm_cell_344/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_344/add_1AddV2while/lstm_cell_344/mul:z:0while/lstm_cell_344/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_344/Sigmoid_2Sigmoid"while/lstm_cell_344/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_344/Relu_1Reluwhile/lstm_cell_344/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_344/mul_2Mul!while/lstm_cell_344/Sigmoid_2:y:0(while/lstm_cell_344/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_344/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_344/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_344/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_344/BiasAdd/ReadVariableOp*^while/lstm_cell_344/MatMul/ReadVariableOp,^while/lstm_cell_344/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_344_biasadd_readvariableop_resource5while_lstm_cell_344_biasadd_readvariableop_resource_0"n
4while_lstm_cell_344_matmul_1_readvariableop_resource6while_lstm_cell_344_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_344_matmul_readvariableop_resource4while_lstm_cell_344_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_344/BiasAdd/ReadVariableOp*while/lstm_cell_344/BiasAdd/ReadVariableOp2V
)while/lstm_cell_344/MatMul/ReadVariableOp)while/lstm_cell_344/MatMul/ReadVariableOp2Z
+while/lstm_cell_344/MatMul_1/ReadVariableOp+while/lstm_cell_344/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
┬

Ў
%__inference_signature_wrapper_2083411
lstm_111_input
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	d╚
	unknown_3:	2╚
	unknown_4:	╚
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityѕбStatefulPartitionedCall┤
StatefulPartitionedCallStatefulPartitionedCalllstm_111_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *+
f&R$
"__inference__wrapped_model_2081151o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_111_input
║
╚
while_cond_2084421
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2084421___redundant_placeholder05
1while_while_cond_2084421___redundant_placeholder15
1while_while_cond_2084421___redundant_placeholder25
1while_while_cond_2084421___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_2082565
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2082565___redundant_placeholder05
1while_while_cond_2082565___redundant_placeholder15
1while_while_cond_2082565___redundant_placeholder25
1while_while_cond_2082565___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
к
э
J__inference_sequential_37_layer_call_and_return_conditional_losses_2083264

inputs#
lstm_111_2083237:	љ#
lstm_111_2083239:	dљ
lstm_111_2083241:	љ#
lstm_112_2083244:	d╚#
lstm_112_2083246:	2╚
lstm_112_2083248:	╚"
lstm_113_2083251:2("
lstm_113_2083253:
(
lstm_113_2083255:("
dense_37_2083258:

dense_37_2083260:
identityѕб dense_37/StatefulPartitionedCallб lstm_111/StatefulPartitionedCallб lstm_112/StatefulPartitionedCallб lstm_113/StatefulPartitionedCallІ
 lstm_111/StatefulPartitionedCallStatefulPartitionedCallinputslstm_111_2083237lstm_111_2083239lstm_111_2083241*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_111_layer_call_and_return_conditional_losses_2083196«
 lstm_112/StatefulPartitionedCallStatefulPartitionedCall)lstm_111/StatefulPartitionedCall:output:0lstm_112_2083244lstm_112_2083246lstm_112_2083248*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_112_layer_call_and_return_conditional_losses_2083031ф
 lstm_113/StatefulPartitionedCallStatefulPartitionedCall)lstm_112/StatefulPartitionedCall:output:0lstm_113_2083251lstm_113_2083253lstm_113_2083255*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_113_layer_call_and_return_conditional_losses_2082866ќ
 dense_37/StatefulPartitionedCallStatefulPartitionedCall)lstm_113/StatefulPartitionedCall:output:0dense_37_2083258dense_37_2083260*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_37_layer_call_and_return_conditional_losses_2082668x
IdentityIdentity)dense_37/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         м
NoOpNoOp!^dense_37/StatefulPartitionedCall!^lstm_111/StatefulPartitionedCall!^lstm_112/StatefulPartitionedCall!^lstm_113/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2D
 lstm_111/StatefulPartitionedCall lstm_111/StatefulPartitionedCall2D
 lstm_112/StatefulPartitionedCall lstm_112/StatefulPartitionedCall2D
 lstm_113/StatefulPartitionedCall lstm_113/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
║
╚
while_cond_2086082
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2086082___redundant_placeholder05
1while_while_cond_2086082___redundant_placeholder15
1while_while_cond_2086082___redundant_placeholder25
1while_while_cond_2086082___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
─8
н
while_body_2082782
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_344_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_344_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_344_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_344_matmul_readvariableop_resource:2(F
4while_lstm_cell_344_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_344_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_344/BiasAdd/ReadVariableOpб)while/lstm_cell_344/MatMul/ReadVariableOpб+while/lstm_cell_344/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_344/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_344_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_344/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_344/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_344/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_344_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_344/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_344/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_344/addAddV2$while/lstm_cell_344/MatMul:product:0&while/lstm_cell_344/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_344/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_344_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_344/BiasAddBiasAddwhile/lstm_cell_344/add:z:02while/lstm_cell_344/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_344/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_344/splitSplit,while/lstm_cell_344/split/split_dim:output:0$while/lstm_cell_344/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_344/SigmoidSigmoid"while/lstm_cell_344/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_344/Sigmoid_1Sigmoid"while/lstm_cell_344/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_344/mulMul!while/lstm_cell_344/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_344/ReluRelu"while/lstm_cell_344/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_344/mul_1Mulwhile/lstm_cell_344/Sigmoid:y:0&while/lstm_cell_344/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_344/add_1AddV2while/lstm_cell_344/mul:z:0while/lstm_cell_344/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_344/Sigmoid_2Sigmoid"while/lstm_cell_344/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_344/Relu_1Reluwhile/lstm_cell_344/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_344/mul_2Mul!while/lstm_cell_344/Sigmoid_2:y:0(while/lstm_cell_344/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_344/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_344/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_344/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_344/BiasAdd/ReadVariableOp*^while/lstm_cell_344/MatMul/ReadVariableOp,^while/lstm_cell_344/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_344_biasadd_readvariableop_resource5while_lstm_cell_344_biasadd_readvariableop_resource_0"n
4while_lstm_cell_344_matmul_1_readvariableop_resource6while_lstm_cell_344_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_344_matmul_readvariableop_resource4while_lstm_cell_344_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_344/BiasAdd/ReadVariableOp*while/lstm_cell_344/BiasAdd/ReadVariableOp2V
)while/lstm_cell_344/MatMul/ReadVariableOp)while/lstm_cell_344/MatMul/ReadVariableOp2Z
+while/lstm_cell_344/MatMul_1/ReadVariableOp+while/lstm_cell_344/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
─
Ќ
*__inference_dense_37_layer_call_fn_2086176

inputs
unknown:

	unknown_0:
identityѕбStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_37_layer_call_and_return_conditional_losses_2082668o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
─8
н
while_body_2085940
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_344_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_344_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_344_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_344_matmul_readvariableop_resource:2(F
4while_lstm_cell_344_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_344_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_344/BiasAdd/ReadVariableOpб)while/lstm_cell_344/MatMul/ReadVariableOpб+while/lstm_cell_344/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_344/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_344_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_344/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_344/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_344/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_344_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_344/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_344/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_344/addAddV2$while/lstm_cell_344/MatMul:product:0&while/lstm_cell_344/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_344/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_344_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_344/BiasAddBiasAddwhile/lstm_cell_344/add:z:02while/lstm_cell_344/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_344/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_344/splitSplit,while/lstm_cell_344/split/split_dim:output:0$while/lstm_cell_344/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_344/SigmoidSigmoid"while/lstm_cell_344/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_344/Sigmoid_1Sigmoid"while/lstm_cell_344/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_344/mulMul!while/lstm_cell_344/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_344/ReluRelu"while/lstm_cell_344/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_344/mul_1Mulwhile/lstm_cell_344/Sigmoid:y:0&while/lstm_cell_344/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_344/add_1AddV2while/lstm_cell_344/mul:z:0while/lstm_cell_344/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_344/Sigmoid_2Sigmoid"while/lstm_cell_344/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_344/Relu_1Reluwhile/lstm_cell_344/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_344/mul_2Mul!while/lstm_cell_344/Sigmoid_2:y:0(while/lstm_cell_344/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_344/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_344/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_344/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_344/BiasAdd/ReadVariableOp*^while/lstm_cell_344/MatMul/ReadVariableOp,^while/lstm_cell_344/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_344_biasadd_readvariableop_resource5while_lstm_cell_344_biasadd_readvariableop_resource_0"n
4while_lstm_cell_344_matmul_1_readvariableop_resource6while_lstm_cell_344_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_344_matmul_readvariableop_resource4while_lstm_cell_344_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_344/BiasAdd/ReadVariableOp*while/lstm_cell_344/BiasAdd/ReadVariableOp2V
)while/lstm_cell_344/MatMul/ReadVariableOp)while/lstm_cell_344/MatMul/ReadVariableOp2Z
+while/lstm_cell_344/MatMul_1/ReadVariableOp+while/lstm_cell_344/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
аK
Ц
E__inference_lstm_112_layer_call_and_return_conditional_losses_2085265
inputs_0?
,lstm_cell_343_matmul_readvariableop_resource:	d╚A
.lstm_cell_343_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_343_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_343/BiasAdd/ReadVariableOpб#lstm_cell_343/MatMul/ReadVariableOpб%lstm_cell_343/MatMul_1/ReadVariableOpбwhile=
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_343/MatMul/ReadVariableOpReadVariableOp,lstm_cell_343_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_343/MatMulMatMulstrided_slice_2:output:0+lstm_cell_343/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_343/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_343_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_343/MatMul_1MatMulzeros:output:0-lstm_cell_343/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_343/addAddV2lstm_cell_343/MatMul:product:0 lstm_cell_343/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_343/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_343_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_343/BiasAddBiasAddlstm_cell_343/add:z:0,lstm_cell_343/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_343/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_343/splitSplit&lstm_cell_343/split/split_dim:output:0lstm_cell_343/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_343/SigmoidSigmoidlstm_cell_343/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_343/Sigmoid_1Sigmoidlstm_cell_343/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_343/mulMullstm_cell_343/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_343/ReluRelulstm_cell_343/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_343/mul_1Mullstm_cell_343/Sigmoid:y:0 lstm_cell_343/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_343/add_1AddV2lstm_cell_343/mul:z:0lstm_cell_343/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_343/Sigmoid_2Sigmoidlstm_cell_343/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_343/Relu_1Relulstm_cell_343/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_343/mul_2Mullstm_cell_343/Sigmoid_2:y:0"lstm_cell_343/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_343_matmul_readvariableop_resource.lstm_cell_343_matmul_1_readvariableop_resource-lstm_cell_343_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2085181*
condR
while_cond_2085180*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  2├
NoOpNoOp%^lstm_cell_343/BiasAdd/ReadVariableOp$^lstm_cell_343/MatMul/ReadVariableOp&^lstm_cell_343/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_343/BiasAdd/ReadVariableOp$lstm_cell_343/BiasAdd/ReadVariableOp2J
#lstm_cell_343/MatMul/ReadVariableOp#lstm_cell_343/MatMul/ReadVariableOp2N
%lstm_cell_343/MatMul_1/ReadVariableOp%lstm_cell_343/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
Л8
┌
while_body_2082266
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_342_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_342_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_342_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_342_matmul_readvariableop_resource:	љG
4while_lstm_cell_342_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_342_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_342/BiasAdd/ReadVariableOpб)while/lstm_cell_342/MatMul/ReadVariableOpб+while/lstm_cell_342/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_342/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_342_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_342/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_342/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_342/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_342_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_342/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_342/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_342/addAddV2$while/lstm_cell_342/MatMul:product:0&while/lstm_cell_342/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_342/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_342_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_342/BiasAddBiasAddwhile/lstm_cell_342/add:z:02while/lstm_cell_342/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_342/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_342/splitSplit,while/lstm_cell_342/split/split_dim:output:0$while/lstm_cell_342/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_342/SigmoidSigmoid"while/lstm_cell_342/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_342/Sigmoid_1Sigmoid"while/lstm_cell_342/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_342/mulMul!while/lstm_cell_342/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_342/ReluRelu"while/lstm_cell_342/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_342/mul_1Mulwhile/lstm_cell_342/Sigmoid:y:0&while/lstm_cell_342/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_342/add_1AddV2while/lstm_cell_342/mul:z:0while/lstm_cell_342/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_342/Sigmoid_2Sigmoid"while/lstm_cell_342/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_342/Relu_1Reluwhile/lstm_cell_342/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_342/mul_2Mul!while/lstm_cell_342/Sigmoid_2:y:0(while/lstm_cell_342/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_342/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_342/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_342/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_342/BiasAdd/ReadVariableOp*^while/lstm_cell_342/MatMul/ReadVariableOp,^while/lstm_cell_342/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_342_biasadd_readvariableop_resource5while_lstm_cell_342_biasadd_readvariableop_resource_0"n
4while_lstm_cell_342_matmul_1_readvariableop_resource6while_lstm_cell_342_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_342_matmul_readvariableop_resource4while_lstm_cell_342_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_342/BiasAdd/ReadVariableOp*while/lstm_cell_342/BiasAdd/ReadVariableOp2V
)while/lstm_cell_342/MatMul/ReadVariableOp)while/lstm_cell_342/MatMul/ReadVariableOp2Z
+while/lstm_cell_342/MatMul_1/ReadVariableOp+while/lstm_cell_342/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_2085037
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2085037___redundant_placeholder05
1while_while_cond_2085037___redundant_placeholder15
1while_while_cond_2085037___redundant_placeholder25
1while_while_cond_2085037___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
РJ
Б
E__inference_lstm_112_layer_call_and_return_conditional_losses_2083031

inputs?
,lstm_cell_343_matmul_readvariableop_resource:	d╚A
.lstm_cell_343_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_343_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_343/BiasAdd/ReadVariableOpб#lstm_cell_343/MatMul/ReadVariableOpб%lstm_cell_343/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_343/MatMul/ReadVariableOpReadVariableOp,lstm_cell_343_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_343/MatMulMatMulstrided_slice_2:output:0+lstm_cell_343/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_343/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_343_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_343/MatMul_1MatMulzeros:output:0-lstm_cell_343/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_343/addAddV2lstm_cell_343/MatMul:product:0 lstm_cell_343/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_343/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_343_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_343/BiasAddBiasAddlstm_cell_343/add:z:0,lstm_cell_343/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_343/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_343/splitSplit&lstm_cell_343/split/split_dim:output:0lstm_cell_343/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_343/SigmoidSigmoidlstm_cell_343/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_343/Sigmoid_1Sigmoidlstm_cell_343/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_343/mulMullstm_cell_343/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_343/ReluRelulstm_cell_343/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_343/mul_1Mullstm_cell_343/Sigmoid:y:0 lstm_cell_343/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_343/add_1AddV2lstm_cell_343/mul:z:0lstm_cell_343/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_343/Sigmoid_2Sigmoidlstm_cell_343/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_343/Relu_1Relulstm_cell_343/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_343/mul_2Mullstm_cell_343/Sigmoid_2:y:0"lstm_cell_343/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_343_matmul_readvariableop_resource.lstm_cell_343_matmul_1_readvariableop_resource-lstm_cell_343_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2082947*
condR
while_cond_2082946*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         2├
NoOpNoOp%^lstm_cell_343/BiasAdd/ReadVariableOp$^lstm_cell_343/MatMul/ReadVariableOp&^lstm_cell_343/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_343/BiasAdd/ReadVariableOp$lstm_cell_343/BiasAdd/ReadVariableOp2J
#lstm_cell_343/MatMul/ReadVariableOp#lstm_cell_343/MatMul/ReadVariableOp2N
%lstm_cell_343/MatMul_1/ReadVariableOp%lstm_cell_343/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
сS
й
)sequential_37_lstm_111_while_body_2080783J
Fsequential_37_lstm_111_while_sequential_37_lstm_111_while_loop_counterP
Lsequential_37_lstm_111_while_sequential_37_lstm_111_while_maximum_iterations,
(sequential_37_lstm_111_while_placeholder.
*sequential_37_lstm_111_while_placeholder_1.
*sequential_37_lstm_111_while_placeholder_2.
*sequential_37_lstm_111_while_placeholder_3I
Esequential_37_lstm_111_while_sequential_37_lstm_111_strided_slice_1_0є
Ђsequential_37_lstm_111_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_111_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_37_lstm_111_while_lstm_cell_342_matmul_readvariableop_resource_0:	љ`
Msequential_37_lstm_111_while_lstm_cell_342_matmul_1_readvariableop_resource_0:	dљ[
Lsequential_37_lstm_111_while_lstm_cell_342_biasadd_readvariableop_resource_0:	љ)
%sequential_37_lstm_111_while_identity+
'sequential_37_lstm_111_while_identity_1+
'sequential_37_lstm_111_while_identity_2+
'sequential_37_lstm_111_while_identity_3+
'sequential_37_lstm_111_while_identity_4+
'sequential_37_lstm_111_while_identity_5G
Csequential_37_lstm_111_while_sequential_37_lstm_111_strided_slice_1Ѓ
sequential_37_lstm_111_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_111_tensorarrayunstack_tensorlistfromtensor\
Isequential_37_lstm_111_while_lstm_cell_342_matmul_readvariableop_resource:	љ^
Ksequential_37_lstm_111_while_lstm_cell_342_matmul_1_readvariableop_resource:	dљY
Jsequential_37_lstm_111_while_lstm_cell_342_biasadd_readvariableop_resource:	љѕбAsequential_37/lstm_111/while/lstm_cell_342/BiasAdd/ReadVariableOpб@sequential_37/lstm_111/while/lstm_cell_342/MatMul/ReadVariableOpбBsequential_37/lstm_111/while/lstm_cell_342/MatMul_1/ReadVariableOpЪ
Nsequential_37/lstm_111/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       џ
@sequential_37/lstm_111/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЂsequential_37_lstm_111_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_111_tensorarrayunstack_tensorlistfromtensor_0(sequential_37_lstm_111_while_placeholderWsequential_37/lstm_111/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0═
@sequential_37/lstm_111/while/lstm_cell_342/MatMul/ReadVariableOpReadVariableOpKsequential_37_lstm_111_while_lstm_cell_342_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0Ђ
1sequential_37/lstm_111/while/lstm_cell_342/MatMulMatMulGsequential_37/lstm_111/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_37/lstm_111/while/lstm_cell_342/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЛ
Bsequential_37/lstm_111/while/lstm_cell_342/MatMul_1/ReadVariableOpReadVariableOpMsequential_37_lstm_111_while_lstm_cell_342_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0У
3sequential_37/lstm_111/while/lstm_cell_342/MatMul_1MatMul*sequential_37_lstm_111_while_placeholder_2Jsequential_37/lstm_111/while/lstm_cell_342/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љТ
.sequential_37/lstm_111/while/lstm_cell_342/addAddV2;sequential_37/lstm_111/while/lstm_cell_342/MatMul:product:0=sequential_37/lstm_111/while/lstm_cell_342/MatMul_1:product:0*
T0*(
_output_shapes
:         љ╦
Asequential_37/lstm_111/while/lstm_cell_342/BiasAdd/ReadVariableOpReadVariableOpLsequential_37_lstm_111_while_lstm_cell_342_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0№
2sequential_37/lstm_111/while/lstm_cell_342/BiasAddBiasAdd2sequential_37/lstm_111/while/lstm_cell_342/add:z:0Isequential_37/lstm_111/while/lstm_cell_342/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ|
:sequential_37/lstm_111/while/lstm_cell_342/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
0sequential_37/lstm_111/while/lstm_cell_342/splitSplitCsequential_37/lstm_111/while/lstm_cell_342/split/split_dim:output:0;sequential_37/lstm_111/while/lstm_cell_342/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitф
2sequential_37/lstm_111/while/lstm_cell_342/SigmoidSigmoid9sequential_37/lstm_111/while/lstm_cell_342/split:output:0*
T0*'
_output_shapes
:         dг
4sequential_37/lstm_111/while/lstm_cell_342/Sigmoid_1Sigmoid9sequential_37/lstm_111/while/lstm_cell_342/split:output:1*
T0*'
_output_shapes
:         d═
.sequential_37/lstm_111/while/lstm_cell_342/mulMul8sequential_37/lstm_111/while/lstm_cell_342/Sigmoid_1:y:0*sequential_37_lstm_111_while_placeholder_3*
T0*'
_output_shapes
:         dц
/sequential_37/lstm_111/while/lstm_cell_342/ReluRelu9sequential_37/lstm_111/while/lstm_cell_342/split:output:2*
T0*'
_output_shapes
:         dЯ
0sequential_37/lstm_111/while/lstm_cell_342/mul_1Mul6sequential_37/lstm_111/while/lstm_cell_342/Sigmoid:y:0=sequential_37/lstm_111/while/lstm_cell_342/Relu:activations:0*
T0*'
_output_shapes
:         dН
0sequential_37/lstm_111/while/lstm_cell_342/add_1AddV22sequential_37/lstm_111/while/lstm_cell_342/mul:z:04sequential_37/lstm_111/while/lstm_cell_342/mul_1:z:0*
T0*'
_output_shapes
:         dг
4sequential_37/lstm_111/while/lstm_cell_342/Sigmoid_2Sigmoid9sequential_37/lstm_111/while/lstm_cell_342/split:output:3*
T0*'
_output_shapes
:         dА
1sequential_37/lstm_111/while/lstm_cell_342/Relu_1Relu4sequential_37/lstm_111/while/lstm_cell_342/add_1:z:0*
T0*'
_output_shapes
:         dС
0sequential_37/lstm_111/while/lstm_cell_342/mul_2Mul8sequential_37/lstm_111/while/lstm_cell_342/Sigmoid_2:y:0?sequential_37/lstm_111/while/lstm_cell_342/Relu_1:activations:0*
T0*'
_output_shapes
:         dб
Asequential_37/lstm_111/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_37_lstm_111_while_placeholder_1(sequential_37_lstm_111_while_placeholder4sequential_37/lstm_111/while/lstm_cell_342/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмd
"sequential_37/lstm_111/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :А
 sequential_37/lstm_111/while/addAddV2(sequential_37_lstm_111_while_placeholder+sequential_37/lstm_111/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_37/lstm_111/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :├
"sequential_37/lstm_111/while/add_1AddV2Fsequential_37_lstm_111_while_sequential_37_lstm_111_while_loop_counter-sequential_37/lstm_111/while/add_1/y:output:0*
T0*
_output_shapes
: ъ
%sequential_37/lstm_111/while/IdentityIdentity&sequential_37/lstm_111/while/add_1:z:0"^sequential_37/lstm_111/while/NoOp*
T0*
_output_shapes
: к
'sequential_37/lstm_111/while/Identity_1IdentityLsequential_37_lstm_111_while_sequential_37_lstm_111_while_maximum_iterations"^sequential_37/lstm_111/while/NoOp*
T0*
_output_shapes
: ъ
'sequential_37/lstm_111/while/Identity_2Identity$sequential_37/lstm_111/while/add:z:0"^sequential_37/lstm_111/while/NoOp*
T0*
_output_shapes
: ╦
'sequential_37/lstm_111/while/Identity_3IdentityQsequential_37/lstm_111/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_37/lstm_111/while/NoOp*
T0*
_output_shapes
: ┐
'sequential_37/lstm_111/while/Identity_4Identity4sequential_37/lstm_111/while/lstm_cell_342/mul_2:z:0"^sequential_37/lstm_111/while/NoOp*
T0*'
_output_shapes
:         d┐
'sequential_37/lstm_111/while/Identity_5Identity4sequential_37/lstm_111/while/lstm_cell_342/add_1:z:0"^sequential_37/lstm_111/while/NoOp*
T0*'
_output_shapes
:         d»
!sequential_37/lstm_111/while/NoOpNoOpB^sequential_37/lstm_111/while/lstm_cell_342/BiasAdd/ReadVariableOpA^sequential_37/lstm_111/while/lstm_cell_342/MatMul/ReadVariableOpC^sequential_37/lstm_111/while/lstm_cell_342/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_37_lstm_111_while_identity.sequential_37/lstm_111/while/Identity:output:0"[
'sequential_37_lstm_111_while_identity_10sequential_37/lstm_111/while/Identity_1:output:0"[
'sequential_37_lstm_111_while_identity_20sequential_37/lstm_111/while/Identity_2:output:0"[
'sequential_37_lstm_111_while_identity_30sequential_37/lstm_111/while/Identity_3:output:0"[
'sequential_37_lstm_111_while_identity_40sequential_37/lstm_111/while/Identity_4:output:0"[
'sequential_37_lstm_111_while_identity_50sequential_37/lstm_111/while/Identity_5:output:0"џ
Jsequential_37_lstm_111_while_lstm_cell_342_biasadd_readvariableop_resourceLsequential_37_lstm_111_while_lstm_cell_342_biasadd_readvariableop_resource_0"ю
Ksequential_37_lstm_111_while_lstm_cell_342_matmul_1_readvariableop_resourceMsequential_37_lstm_111_while_lstm_cell_342_matmul_1_readvariableop_resource_0"ў
Isequential_37_lstm_111_while_lstm_cell_342_matmul_readvariableop_resourceKsequential_37_lstm_111_while_lstm_cell_342_matmul_readvariableop_resource_0"ї
Csequential_37_lstm_111_while_sequential_37_lstm_111_strided_slice_1Esequential_37_lstm_111_while_sequential_37_lstm_111_strided_slice_1_0"Ё
sequential_37_lstm_111_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_111_tensorarrayunstack_tensorlistfromtensorЂsequential_37_lstm_111_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_111_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2є
Asequential_37/lstm_111/while/lstm_cell_342/BiasAdd/ReadVariableOpAsequential_37/lstm_111/while/lstm_cell_342/BiasAdd/ReadVariableOp2ё
@sequential_37/lstm_111/while/lstm_cell_342/MatMul/ReadVariableOp@sequential_37/lstm_111/while/lstm_cell_342/MatMul/ReadVariableOp2ѕ
Bsequential_37/lstm_111/while/lstm_cell_342/MatMul_1/ReadVariableOpBsequential_37/lstm_111/while/lstm_cell_342/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_2085653
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2085653___redundant_placeholder05
1while_while_cond_2085653___redundant_placeholder15
1while_while_cond_2085653___redundant_placeholder25
1while_while_cond_2085653___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
Ѓ
и
*__inference_lstm_112_layer_call_fn_2084979

inputs
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identityѕбStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_112_layer_call_and_return_conditional_losses_2083031s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
»8
ј
E__inference_lstm_112_layer_call_and_return_conditional_losses_2081842

inputs(
lstm_cell_343_2081760:	d╚(
lstm_cell_343_2081762:	2╚$
lstm_cell_343_2081764:	╚
identityѕб%lstm_cell_343/StatefulPartitionedCallбwhile;
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask■
%lstm_cell_343/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_343_2081760lstm_cell_343_2081762lstm_cell_343_2081764*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_343_layer_call_and_return_conditional_losses_2081714n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_343_2081760lstm_cell_343_2081762lstm_cell_343_2081764*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2081773*
condR
while_cond_2081772*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  2v
NoOpNoOp&^lstm_cell_343/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2N
%lstm_cell_343/StatefulPartitionedCall%lstm_cell_343/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
▄

Џ
/__inference_sequential_37_layer_call_fn_2083465

inputs
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	d╚
	unknown_3:	2╚
	unknown_4:	╚
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityѕбStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_sequential_37_layer_call_and_return_conditional_losses_2083264o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Э
┤
*__inference_lstm_113_layer_call_fn_2085584

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identityѕбStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_113_layer_call_and_return_conditional_losses_2082650o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
Уц
ќ
#__inference__traced_restore_2086753
file_prefix2
 assignvariableop_dense_37_kernel:
.
 assignvariableop_1_dense_37_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_111_lstm_cell_111_kernel:	љM
:assignvariableop_8_lstm_111_lstm_cell_111_recurrent_kernel:	dљ=
.assignvariableop_9_lstm_111_lstm_cell_111_bias:	љD
1assignvariableop_10_lstm_112_lstm_cell_112_kernel:	d╚N
;assignvariableop_11_lstm_112_lstm_cell_112_recurrent_kernel:	2╚>
/assignvariableop_12_lstm_112_lstm_cell_112_bias:	╚C
1assignvariableop_13_lstm_113_lstm_cell_113_kernel:2(M
;assignvariableop_14_lstm_113_lstm_cell_113_recurrent_kernel:
(=
/assignvariableop_15_lstm_113_lstm_cell_113_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_37_kernel_m:
6
(assignvariableop_19_adam_dense_37_bias_m:K
8assignvariableop_20_adam_lstm_111_lstm_cell_111_kernel_m:	љU
Bassignvariableop_21_adam_lstm_111_lstm_cell_111_recurrent_kernel_m:	dљE
6assignvariableop_22_adam_lstm_111_lstm_cell_111_bias_m:	љK
8assignvariableop_23_adam_lstm_112_lstm_cell_112_kernel_m:	d╚U
Bassignvariableop_24_adam_lstm_112_lstm_cell_112_recurrent_kernel_m:	2╚E
6assignvariableop_25_adam_lstm_112_lstm_cell_112_bias_m:	╚J
8assignvariableop_26_adam_lstm_113_lstm_cell_113_kernel_m:2(T
Bassignvariableop_27_adam_lstm_113_lstm_cell_113_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_113_lstm_cell_113_bias_m:(<
*assignvariableop_29_adam_dense_37_kernel_v:
6
(assignvariableop_30_adam_dense_37_bias_v:K
8assignvariableop_31_adam_lstm_111_lstm_cell_111_kernel_v:	љU
Bassignvariableop_32_adam_lstm_111_lstm_cell_111_recurrent_kernel_v:	dљE
6assignvariableop_33_adam_lstm_111_lstm_cell_111_bias_v:	љK
8assignvariableop_34_adam_lstm_112_lstm_cell_112_kernel_v:	d╚U
Bassignvariableop_35_adam_lstm_112_lstm_cell_112_recurrent_kernel_v:	2╚E
6assignvariableop_36_adam_lstm_112_lstm_cell_112_bias_v:	╚J
8assignvariableop_37_adam_lstm_113_lstm_cell_113_kernel_v:2(T
Bassignvariableop_38_adam_lstm_113_lstm_cell_113_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_113_lstm_cell_113_bias_v:(
identity_41ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_34бAssignVariableOp_35бAssignVariableOp_36бAssignVariableOp_37бAssignVariableOp_38бAssignVariableOp_39бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9╚
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*Ь
valueСBр)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH┬
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ь
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*║
_output_shapesД
ц:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOpAssignVariableOp assignvariableop_dense_37_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_37_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:І
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_111_lstm_cell_111_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_111_lstm_cell_111_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_111_lstm_cell_111_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_112_lstm_cell_112_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_112_lstm_cell_112_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_112_lstm_cell_112_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_113_lstm_cell_113_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_113_lstm_cell_113_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_113_lstm_cell_113_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_37_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_37_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_111_lstm_cell_111_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_111_lstm_cell_111_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_111_lstm_cell_111_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_112_lstm_cell_112_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_112_lstm_cell_112_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_112_lstm_cell_112_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_113_lstm_cell_113_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_113_lstm_cell_113_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_113_lstm_cell_113_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_37_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_37_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_111_lstm_cell_111_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_111_lstm_cell_111_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_111_lstm_cell_111_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_112_lstm_cell_112_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_112_lstm_cell_112_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_112_lstm_cell_112_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_113_lstm_cell_113_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_113_lstm_cell_113_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_113_lstm_cell_113_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ┐
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: г
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
я
 
J__inference_sequential_37_layer_call_and_return_conditional_losses_2083376
lstm_111_input#
lstm_111_2083349:	љ#
lstm_111_2083351:	dљ
lstm_111_2083353:	љ#
lstm_112_2083356:	d╚#
lstm_112_2083358:	2╚
lstm_112_2083360:	╚"
lstm_113_2083363:2("
lstm_113_2083365:
(
lstm_113_2083367:("
dense_37_2083370:

dense_37_2083372:
identityѕб dense_37/StatefulPartitionedCallб lstm_111/StatefulPartitionedCallб lstm_112/StatefulPartitionedCallб lstm_113/StatefulPartitionedCallЊ
 lstm_111/StatefulPartitionedCallStatefulPartitionedCalllstm_111_inputlstm_111_2083349lstm_111_2083351lstm_111_2083353*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_111_layer_call_and_return_conditional_losses_2083196«
 lstm_112/StatefulPartitionedCallStatefulPartitionedCall)lstm_111/StatefulPartitionedCall:output:0lstm_112_2083356lstm_112_2083358lstm_112_2083360*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_112_layer_call_and_return_conditional_losses_2083031ф
 lstm_113/StatefulPartitionedCallStatefulPartitionedCall)lstm_112/StatefulPartitionedCall:output:0lstm_113_2083363lstm_113_2083365lstm_113_2083367*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_113_layer_call_and_return_conditional_losses_2082866ќ
 dense_37/StatefulPartitionedCallStatefulPartitionedCall)lstm_113/StatefulPartitionedCall:output:0dense_37_2083370dense_37_2083372*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_37_layer_call_and_return_conditional_losses_2082668x
IdentityIdentity)dense_37/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         м
NoOpNoOp!^dense_37/StatefulPartitionedCall!^lstm_111/StatefulPartitionedCall!^lstm_112/StatefulPartitionedCall!^lstm_113/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2D
 lstm_111/StatefulPartitionedCall lstm_111/StatefulPartitionedCall2D
 lstm_112/StatefulPartitionedCall lstm_112/StatefulPartitionedCall2D
 lstm_113/StatefulPartitionedCall lstm_113/StatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_111_input
З

Б
/__inference_sequential_37_layer_call_fn_2083316
lstm_111_input
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	d╚
	unknown_3:	2╚
	unknown_4:	╚
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityѕбStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCalllstm_111_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_sequential_37_layer_call_and_return_conditional_losses_2083264o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_111_input
к
э
J__inference_sequential_37_layer_call_and_return_conditional_losses_2082675

inputs#
lstm_111_2082351:	љ#
lstm_111_2082353:	dљ
lstm_111_2082355:	љ#
lstm_112_2082501:	d╚#
lstm_112_2082503:	2╚
lstm_112_2082505:	╚"
lstm_113_2082651:2("
lstm_113_2082653:
(
lstm_113_2082655:("
dense_37_2082669:

dense_37_2082671:
identityѕб dense_37/StatefulPartitionedCallб lstm_111/StatefulPartitionedCallб lstm_112/StatefulPartitionedCallб lstm_113/StatefulPartitionedCallІ
 lstm_111/StatefulPartitionedCallStatefulPartitionedCallinputslstm_111_2082351lstm_111_2082353lstm_111_2082355*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_111_layer_call_and_return_conditional_losses_2082350«
 lstm_112/StatefulPartitionedCallStatefulPartitionedCall)lstm_111/StatefulPartitionedCall:output:0lstm_112_2082501lstm_112_2082503lstm_112_2082505*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_112_layer_call_and_return_conditional_losses_2082500ф
 lstm_113/StatefulPartitionedCallStatefulPartitionedCall)lstm_112/StatefulPartitionedCall:output:0lstm_113_2082651lstm_113_2082653lstm_113_2082655*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_113_layer_call_and_return_conditional_losses_2082650ќ
 dense_37/StatefulPartitionedCallStatefulPartitionedCall)lstm_113/StatefulPartitionedCall:output:0dense_37_2082669dense_37_2082671*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_37_layer_call_and_return_conditional_losses_2082668x
IdentityIdentity)dense_37/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         м
NoOpNoOp!^dense_37/StatefulPartitionedCall!^lstm_111/StatefulPartitionedCall!^lstm_112/StatefulPartitionedCall!^lstm_113/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2D
 lstm_111/StatefulPartitionedCall lstm_111/StatefulPartitionedCall2D
 lstm_112/StatefulPartitionedCall lstm_112/StatefulPartitionedCall2D
 lstm_113/StatefulPartitionedCall lstm_113/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
е8
І
E__inference_lstm_113_layer_call_and_return_conditional_losses_2082001

inputs'
lstm_cell_344_2081919:2('
lstm_cell_344_2081921:
(#
lstm_cell_344_2081923:(
identityѕб%lstm_cell_344/StatefulPartitionedCallбwhile;
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask■
%lstm_cell_344/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_344_2081919lstm_cell_344_2081921lstm_cell_344_2081923*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_344_layer_call_and_return_conditional_losses_2081918n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_344_2081919lstm_cell_344_2081921lstm_cell_344_2081923*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2081932*
condR
while_cond_2081931*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  
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
:         
v
NoOpNoOp&^lstm_cell_344/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2N
%lstm_cell_344/StatefulPartitionedCall%lstm_cell_344/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  2
 
_user_specified_nameinputs
и

Ч
lstm_112_while_cond_2083662.
*lstm_112_while_lstm_112_while_loop_counter4
0lstm_112_while_lstm_112_while_maximum_iterations
lstm_112_while_placeholder 
lstm_112_while_placeholder_1 
lstm_112_while_placeholder_2 
lstm_112_while_placeholder_30
,lstm_112_while_less_lstm_112_strided_slice_1G
Clstm_112_while_lstm_112_while_cond_2083662___redundant_placeholder0G
Clstm_112_while_lstm_112_while_cond_2083662___redundant_placeholder1G
Clstm_112_while_lstm_112_while_cond_2083662___redundant_placeholder2G
Clstm_112_while_lstm_112_while_cond_2083662___redundant_placeholder3
lstm_112_while_identity
є
lstm_112/while/LessLesslstm_112_while_placeholder,lstm_112_while_less_lstm_112_strided_slice_1*
T0*
_output_shapes
: ]
lstm_112/while/IdentityIdentitylstm_112/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_112_while_identity lstm_112/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
»8
ј
E__inference_lstm_112_layer_call_and_return_conditional_losses_2081651

inputs(
lstm_cell_343_2081569:	d╚(
lstm_cell_343_2081571:	2╚$
lstm_cell_343_2081573:	╚
identityѕб%lstm_cell_343/StatefulPartitionedCallбwhile;
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask■
%lstm_cell_343/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_343_2081569lstm_cell_343_2081571lstm_cell_343_2081573*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_343_layer_call_and_return_conditional_losses_2081568n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_343_2081569lstm_cell_343_2081571lstm_cell_343_2081573*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2081582*
condR
while_cond_2081581*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  2v
NoOpNoOp&^lstm_cell_343/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2N
%lstm_cell_343/StatefulPartitionedCall%lstm_cell_343/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
║
╚
while_cond_2084707
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2084707___redundant_placeholder05
1while_while_cond_2084707___redundant_placeholder15
1while_while_cond_2084707___redundant_placeholder25
1while_while_cond_2084707___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
Г
╣
*__inference_lstm_111_layer_call_fn_2084341
inputs_0
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_111_layer_call_and_return_conditional_losses_2081492|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
О
є
J__inference_lstm_cell_343_layer_call_and_return_conditional_losses_2081714

inputs

states
states_11
matmul_readvariableop_resource:	d╚3
 matmul_1_readvariableop_resource:	2╚.
biasadd_readvariableop_resource:	╚
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╚s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         2Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:OK
'
_output_shapes
:         2
 
_user_specified_namestates:OK
'
_output_shapes
:         2
 
_user_specified_namestates
Ѕ#
в
while_body_2081932
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_344_2081956_0:2(/
while_lstm_cell_344_2081958_0:
(+
while_lstm_cell_344_2081960_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_344_2081956:2(-
while_lstm_cell_344_2081958:
()
while_lstm_cell_344_2081960:(ѕб+while/lstm_cell_344/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╝
+while/lstm_cell_344/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_344_2081956_0while_lstm_cell_344_2081958_0while_lstm_cell_344_2081960_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_344_layer_call_and_return_conditional_losses_2081918П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_344/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_344/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         
Љ
while/Identity_5Identity4while/lstm_cell_344/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         
z

while/NoOpNoOp,^while/lstm_cell_344/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_344_2081956while_lstm_cell_344_2081956_0"<
while_lstm_cell_344_2081958while_lstm_cell_344_2081958_0"<
while_lstm_cell_344_2081960while_lstm_cell_344_2081960_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2Z
+while/lstm_cell_344/StatefulPartitionedCall+while/lstm_cell_344/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
ии
н
"__inference__wrapped_model_2081151
lstm_111_inputV
Csequential_37_lstm_111_lstm_cell_342_matmul_readvariableop_resource:	љX
Esequential_37_lstm_111_lstm_cell_342_matmul_1_readvariableop_resource:	dљS
Dsequential_37_lstm_111_lstm_cell_342_biasadd_readvariableop_resource:	љV
Csequential_37_lstm_112_lstm_cell_343_matmul_readvariableop_resource:	d╚X
Esequential_37_lstm_112_lstm_cell_343_matmul_1_readvariableop_resource:	2╚S
Dsequential_37_lstm_112_lstm_cell_343_biasadd_readvariableop_resource:	╚U
Csequential_37_lstm_113_lstm_cell_344_matmul_readvariableop_resource:2(W
Esequential_37_lstm_113_lstm_cell_344_matmul_1_readvariableop_resource:
(R
Dsequential_37_lstm_113_lstm_cell_344_biasadd_readvariableop_resource:(G
5sequential_37_dense_37_matmul_readvariableop_resource:
D
6sequential_37_dense_37_biasadd_readvariableop_resource:
identityѕб-sequential_37/dense_37/BiasAdd/ReadVariableOpб,sequential_37/dense_37/MatMul/ReadVariableOpб;sequential_37/lstm_111/lstm_cell_342/BiasAdd/ReadVariableOpб:sequential_37/lstm_111/lstm_cell_342/MatMul/ReadVariableOpб<sequential_37/lstm_111/lstm_cell_342/MatMul_1/ReadVariableOpбsequential_37/lstm_111/whileб;sequential_37/lstm_112/lstm_cell_343/BiasAdd/ReadVariableOpб:sequential_37/lstm_112/lstm_cell_343/MatMul/ReadVariableOpб<sequential_37/lstm_112/lstm_cell_343/MatMul_1/ReadVariableOpбsequential_37/lstm_112/whileб;sequential_37/lstm_113/lstm_cell_344/BiasAdd/ReadVariableOpб:sequential_37/lstm_113/lstm_cell_344/MatMul/ReadVariableOpб<sequential_37/lstm_113/lstm_cell_344/MatMul_1/ReadVariableOpбsequential_37/lstm_113/whileZ
sequential_37/lstm_111/ShapeShapelstm_111_input*
T0*
_output_shapes
:t
*sequential_37/lstm_111/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_37/lstm_111/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_37/lstm_111/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:─
$sequential_37/lstm_111/strided_sliceStridedSlice%sequential_37/lstm_111/Shape:output:03sequential_37/lstm_111/strided_slice/stack:output:05sequential_37/lstm_111/strided_slice/stack_1:output:05sequential_37/lstm_111/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_37/lstm_111/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dИ
#sequential_37/lstm_111/zeros/packedPack-sequential_37/lstm_111/strided_slice:output:0.sequential_37/lstm_111/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_37/lstm_111/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ▒
sequential_37/lstm_111/zerosFill,sequential_37/lstm_111/zeros/packed:output:0+sequential_37/lstm_111/zeros/Const:output:0*
T0*'
_output_shapes
:         di
'sequential_37/lstm_111/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d╝
%sequential_37/lstm_111/zeros_1/packedPack-sequential_37/lstm_111/strided_slice:output:00sequential_37/lstm_111/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_37/lstm_111/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    и
sequential_37/lstm_111/zeros_1Fill.sequential_37/lstm_111/zeros_1/packed:output:0-sequential_37/lstm_111/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dz
%sequential_37/lstm_111/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Б
 sequential_37/lstm_111/transpose	Transposelstm_111_input.sequential_37/lstm_111/transpose/perm:output:0*
T0*+
_output_shapes
:         r
sequential_37/lstm_111/Shape_1Shape$sequential_37/lstm_111/transpose:y:0*
T0*
_output_shapes
:v
,sequential_37/lstm_111/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_37/lstm_111/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_37/lstm_111/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
&sequential_37/lstm_111/strided_slice_1StridedSlice'sequential_37/lstm_111/Shape_1:output:05sequential_37/lstm_111/strided_slice_1/stack:output:07sequential_37/lstm_111/strided_slice_1/stack_1:output:07sequential_37/lstm_111/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_37/lstm_111/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         щ
$sequential_37/lstm_111/TensorArrayV2TensorListReserve;sequential_37/lstm_111/TensorArrayV2/element_shape:output:0/sequential_37/lstm_111/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЮ
Lsequential_37/lstm_111/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ц
>sequential_37/lstm_111/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_37/lstm_111/transpose:y:0Usequential_37/lstm_111/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмv
,sequential_37/lstm_111/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_37/lstm_111/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_37/lstm_111/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▄
&sequential_37/lstm_111/strided_slice_2StridedSlice$sequential_37/lstm_111/transpose:y:05sequential_37/lstm_111/strided_slice_2/stack:output:07sequential_37/lstm_111/strided_slice_2/stack_1:output:07sequential_37/lstm_111/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask┐
:sequential_37/lstm_111/lstm_cell_342/MatMul/ReadVariableOpReadVariableOpCsequential_37_lstm_111_lstm_cell_342_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0П
+sequential_37/lstm_111/lstm_cell_342/MatMulMatMul/sequential_37/lstm_111/strided_slice_2:output:0Bsequential_37/lstm_111/lstm_cell_342/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ├
<sequential_37/lstm_111/lstm_cell_342/MatMul_1/ReadVariableOpReadVariableOpEsequential_37_lstm_111_lstm_cell_342_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0О
-sequential_37/lstm_111/lstm_cell_342/MatMul_1MatMul%sequential_37/lstm_111/zeros:output:0Dsequential_37/lstm_111/lstm_cell_342/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љн
(sequential_37/lstm_111/lstm_cell_342/addAddV25sequential_37/lstm_111/lstm_cell_342/MatMul:product:07sequential_37/lstm_111/lstm_cell_342/MatMul_1:product:0*
T0*(
_output_shapes
:         љй
;sequential_37/lstm_111/lstm_cell_342/BiasAdd/ReadVariableOpReadVariableOpDsequential_37_lstm_111_lstm_cell_342_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0П
,sequential_37/lstm_111/lstm_cell_342/BiasAddBiasAdd,sequential_37/lstm_111/lstm_cell_342/add:z:0Csequential_37/lstm_111/lstm_cell_342/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љv
4sequential_37/lstm_111/lstm_cell_342/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
*sequential_37/lstm_111/lstm_cell_342/splitSplit=sequential_37/lstm_111/lstm_cell_342/split/split_dim:output:05sequential_37/lstm_111/lstm_cell_342/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitъ
,sequential_37/lstm_111/lstm_cell_342/SigmoidSigmoid3sequential_37/lstm_111/lstm_cell_342/split:output:0*
T0*'
_output_shapes
:         dа
.sequential_37/lstm_111/lstm_cell_342/Sigmoid_1Sigmoid3sequential_37/lstm_111/lstm_cell_342/split:output:1*
T0*'
_output_shapes
:         dЙ
(sequential_37/lstm_111/lstm_cell_342/mulMul2sequential_37/lstm_111/lstm_cell_342/Sigmoid_1:y:0'sequential_37/lstm_111/zeros_1:output:0*
T0*'
_output_shapes
:         dў
)sequential_37/lstm_111/lstm_cell_342/ReluRelu3sequential_37/lstm_111/lstm_cell_342/split:output:2*
T0*'
_output_shapes
:         d╬
*sequential_37/lstm_111/lstm_cell_342/mul_1Mul0sequential_37/lstm_111/lstm_cell_342/Sigmoid:y:07sequential_37/lstm_111/lstm_cell_342/Relu:activations:0*
T0*'
_output_shapes
:         d├
*sequential_37/lstm_111/lstm_cell_342/add_1AddV2,sequential_37/lstm_111/lstm_cell_342/mul:z:0.sequential_37/lstm_111/lstm_cell_342/mul_1:z:0*
T0*'
_output_shapes
:         dа
.sequential_37/lstm_111/lstm_cell_342/Sigmoid_2Sigmoid3sequential_37/lstm_111/lstm_cell_342/split:output:3*
T0*'
_output_shapes
:         dЋ
+sequential_37/lstm_111/lstm_cell_342/Relu_1Relu.sequential_37/lstm_111/lstm_cell_342/add_1:z:0*
T0*'
_output_shapes
:         dм
*sequential_37/lstm_111/lstm_cell_342/mul_2Mul2sequential_37/lstm_111/lstm_cell_342/Sigmoid_2:y:09sequential_37/lstm_111/lstm_cell_342/Relu_1:activations:0*
T0*'
_output_shapes
:         dЁ
4sequential_37/lstm_111/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   §
&sequential_37/lstm_111/TensorArrayV2_1TensorListReserve=sequential_37/lstm_111/TensorArrayV2_1/element_shape:output:0/sequential_37/lstm_111/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм]
sequential_37/lstm_111/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_37/lstm_111/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         k
)sequential_37/lstm_111/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╔
sequential_37/lstm_111/whileWhile2sequential_37/lstm_111/while/loop_counter:output:08sequential_37/lstm_111/while/maximum_iterations:output:0$sequential_37/lstm_111/time:output:0/sequential_37/lstm_111/TensorArrayV2_1:handle:0%sequential_37/lstm_111/zeros:output:0'sequential_37/lstm_111/zeros_1:output:0/sequential_37/lstm_111/strided_slice_1:output:0Nsequential_37/lstm_111/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_37_lstm_111_lstm_cell_342_matmul_readvariableop_resourceEsequential_37_lstm_111_lstm_cell_342_matmul_1_readvariableop_resourceDsequential_37_lstm_111_lstm_cell_342_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_37_lstm_111_while_body_2080783*5
cond-R+
)sequential_37_lstm_111_while_cond_2080782*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations ў
Gsequential_37/lstm_111/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Є
9sequential_37/lstm_111/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_37/lstm_111/while:output:3Psequential_37/lstm_111/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0
,sequential_37/lstm_111/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         x
.sequential_37/lstm_111/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_37/lstm_111/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
&sequential_37/lstm_111/strided_slice_3StridedSliceBsequential_37/lstm_111/TensorArrayV2Stack/TensorListStack:tensor:05sequential_37/lstm_111/strided_slice_3/stack:output:07sequential_37/lstm_111/strided_slice_3/stack_1:output:07sequential_37/lstm_111/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask|
'sequential_37/lstm_111/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          █
"sequential_37/lstm_111/transpose_1	TransposeBsequential_37/lstm_111/TensorArrayV2Stack/TensorListStack:tensor:00sequential_37/lstm_111/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dr
sequential_37/lstm_111/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_37/lstm_112/ShapeShape&sequential_37/lstm_111/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_37/lstm_112/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_37/lstm_112/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_37/lstm_112/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:─
$sequential_37/lstm_112/strided_sliceStridedSlice%sequential_37/lstm_112/Shape:output:03sequential_37/lstm_112/strided_slice/stack:output:05sequential_37/lstm_112/strided_slice/stack_1:output:05sequential_37/lstm_112/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_37/lstm_112/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2И
#sequential_37/lstm_112/zeros/packedPack-sequential_37/lstm_112/strided_slice:output:0.sequential_37/lstm_112/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_37/lstm_112/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ▒
sequential_37/lstm_112/zerosFill,sequential_37/lstm_112/zeros/packed:output:0+sequential_37/lstm_112/zeros/Const:output:0*
T0*'
_output_shapes
:         2i
'sequential_37/lstm_112/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2╝
%sequential_37/lstm_112/zeros_1/packedPack-sequential_37/lstm_112/strided_slice:output:00sequential_37/lstm_112/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_37/lstm_112/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    и
sequential_37/lstm_112/zeros_1Fill.sequential_37/lstm_112/zeros_1/packed:output:0-sequential_37/lstm_112/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2z
%sequential_37/lstm_112/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╗
 sequential_37/lstm_112/transpose	Transpose&sequential_37/lstm_111/transpose_1:y:0.sequential_37/lstm_112/transpose/perm:output:0*
T0*+
_output_shapes
:         dr
sequential_37/lstm_112/Shape_1Shape$sequential_37/lstm_112/transpose:y:0*
T0*
_output_shapes
:v
,sequential_37/lstm_112/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_37/lstm_112/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_37/lstm_112/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
&sequential_37/lstm_112/strided_slice_1StridedSlice'sequential_37/lstm_112/Shape_1:output:05sequential_37/lstm_112/strided_slice_1/stack:output:07sequential_37/lstm_112/strided_slice_1/stack_1:output:07sequential_37/lstm_112/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_37/lstm_112/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         щ
$sequential_37/lstm_112/TensorArrayV2TensorListReserve;sequential_37/lstm_112/TensorArrayV2/element_shape:output:0/sequential_37/lstm_112/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЮ
Lsequential_37/lstm_112/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Ц
>sequential_37/lstm_112/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_37/lstm_112/transpose:y:0Usequential_37/lstm_112/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмv
,sequential_37/lstm_112/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_37/lstm_112/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_37/lstm_112/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▄
&sequential_37/lstm_112/strided_slice_2StridedSlice$sequential_37/lstm_112/transpose:y:05sequential_37/lstm_112/strided_slice_2/stack:output:07sequential_37/lstm_112/strided_slice_2/stack_1:output:07sequential_37/lstm_112/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask┐
:sequential_37/lstm_112/lstm_cell_343/MatMul/ReadVariableOpReadVariableOpCsequential_37_lstm_112_lstm_cell_343_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0П
+sequential_37/lstm_112/lstm_cell_343/MatMulMatMul/sequential_37/lstm_112/strided_slice_2:output:0Bsequential_37/lstm_112/lstm_cell_343/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚├
<sequential_37/lstm_112/lstm_cell_343/MatMul_1/ReadVariableOpReadVariableOpEsequential_37_lstm_112_lstm_cell_343_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0О
-sequential_37/lstm_112/lstm_cell_343/MatMul_1MatMul%sequential_37/lstm_112/zeros:output:0Dsequential_37/lstm_112/lstm_cell_343/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚н
(sequential_37/lstm_112/lstm_cell_343/addAddV25sequential_37/lstm_112/lstm_cell_343/MatMul:product:07sequential_37/lstm_112/lstm_cell_343/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚й
;sequential_37/lstm_112/lstm_cell_343/BiasAdd/ReadVariableOpReadVariableOpDsequential_37_lstm_112_lstm_cell_343_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0П
,sequential_37/lstm_112/lstm_cell_343/BiasAddBiasAdd,sequential_37/lstm_112/lstm_cell_343/add:z:0Csequential_37/lstm_112/lstm_cell_343/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚v
4sequential_37/lstm_112/lstm_cell_343/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
*sequential_37/lstm_112/lstm_cell_343/splitSplit=sequential_37/lstm_112/lstm_cell_343/split/split_dim:output:05sequential_37/lstm_112/lstm_cell_343/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitъ
,sequential_37/lstm_112/lstm_cell_343/SigmoidSigmoid3sequential_37/lstm_112/lstm_cell_343/split:output:0*
T0*'
_output_shapes
:         2а
.sequential_37/lstm_112/lstm_cell_343/Sigmoid_1Sigmoid3sequential_37/lstm_112/lstm_cell_343/split:output:1*
T0*'
_output_shapes
:         2Й
(sequential_37/lstm_112/lstm_cell_343/mulMul2sequential_37/lstm_112/lstm_cell_343/Sigmoid_1:y:0'sequential_37/lstm_112/zeros_1:output:0*
T0*'
_output_shapes
:         2ў
)sequential_37/lstm_112/lstm_cell_343/ReluRelu3sequential_37/lstm_112/lstm_cell_343/split:output:2*
T0*'
_output_shapes
:         2╬
*sequential_37/lstm_112/lstm_cell_343/mul_1Mul0sequential_37/lstm_112/lstm_cell_343/Sigmoid:y:07sequential_37/lstm_112/lstm_cell_343/Relu:activations:0*
T0*'
_output_shapes
:         2├
*sequential_37/lstm_112/lstm_cell_343/add_1AddV2,sequential_37/lstm_112/lstm_cell_343/mul:z:0.sequential_37/lstm_112/lstm_cell_343/mul_1:z:0*
T0*'
_output_shapes
:         2а
.sequential_37/lstm_112/lstm_cell_343/Sigmoid_2Sigmoid3sequential_37/lstm_112/lstm_cell_343/split:output:3*
T0*'
_output_shapes
:         2Ћ
+sequential_37/lstm_112/lstm_cell_343/Relu_1Relu.sequential_37/lstm_112/lstm_cell_343/add_1:z:0*
T0*'
_output_shapes
:         2м
*sequential_37/lstm_112/lstm_cell_343/mul_2Mul2sequential_37/lstm_112/lstm_cell_343/Sigmoid_2:y:09sequential_37/lstm_112/lstm_cell_343/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ё
4sequential_37/lstm_112/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   §
&sequential_37/lstm_112/TensorArrayV2_1TensorListReserve=sequential_37/lstm_112/TensorArrayV2_1/element_shape:output:0/sequential_37/lstm_112/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм]
sequential_37/lstm_112/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_37/lstm_112/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         k
)sequential_37/lstm_112/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╔
sequential_37/lstm_112/whileWhile2sequential_37/lstm_112/while/loop_counter:output:08sequential_37/lstm_112/while/maximum_iterations:output:0$sequential_37/lstm_112/time:output:0/sequential_37/lstm_112/TensorArrayV2_1:handle:0%sequential_37/lstm_112/zeros:output:0'sequential_37/lstm_112/zeros_1:output:0/sequential_37/lstm_112/strided_slice_1:output:0Nsequential_37/lstm_112/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_37_lstm_112_lstm_cell_343_matmul_readvariableop_resourceEsequential_37_lstm_112_lstm_cell_343_matmul_1_readvariableop_resourceDsequential_37_lstm_112_lstm_cell_343_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_37_lstm_112_while_body_2080922*5
cond-R+
)sequential_37_lstm_112_while_cond_2080921*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations ў
Gsequential_37/lstm_112/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Є
9sequential_37/lstm_112/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_37/lstm_112/while:output:3Psequential_37/lstm_112/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0
,sequential_37/lstm_112/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         x
.sequential_37/lstm_112/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_37/lstm_112/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
&sequential_37/lstm_112/strided_slice_3StridedSliceBsequential_37/lstm_112/TensorArrayV2Stack/TensorListStack:tensor:05sequential_37/lstm_112/strided_slice_3/stack:output:07sequential_37/lstm_112/strided_slice_3/stack_1:output:07sequential_37/lstm_112/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask|
'sequential_37/lstm_112/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          █
"sequential_37/lstm_112/transpose_1	TransposeBsequential_37/lstm_112/TensorArrayV2Stack/TensorListStack:tensor:00sequential_37/lstm_112/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2r
sequential_37/lstm_112/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_37/lstm_113/ShapeShape&sequential_37/lstm_112/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_37/lstm_113/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_37/lstm_113/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_37/lstm_113/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:─
$sequential_37/lstm_113/strided_sliceStridedSlice%sequential_37/lstm_113/Shape:output:03sequential_37/lstm_113/strided_slice/stack:output:05sequential_37/lstm_113/strided_slice/stack_1:output:05sequential_37/lstm_113/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_37/lstm_113/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
И
#sequential_37/lstm_113/zeros/packedPack-sequential_37/lstm_113/strided_slice:output:0.sequential_37/lstm_113/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_37/lstm_113/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ▒
sequential_37/lstm_113/zerosFill,sequential_37/lstm_113/zeros/packed:output:0+sequential_37/lstm_113/zeros/Const:output:0*
T0*'
_output_shapes
:         
i
'sequential_37/lstm_113/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
╝
%sequential_37/lstm_113/zeros_1/packedPack-sequential_37/lstm_113/strided_slice:output:00sequential_37/lstm_113/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_37/lstm_113/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    и
sequential_37/lstm_113/zeros_1Fill.sequential_37/lstm_113/zeros_1/packed:output:0-sequential_37/lstm_113/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
z
%sequential_37/lstm_113/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╗
 sequential_37/lstm_113/transpose	Transpose&sequential_37/lstm_112/transpose_1:y:0.sequential_37/lstm_113/transpose/perm:output:0*
T0*+
_output_shapes
:         2r
sequential_37/lstm_113/Shape_1Shape$sequential_37/lstm_113/transpose:y:0*
T0*
_output_shapes
:v
,sequential_37/lstm_113/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_37/lstm_113/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_37/lstm_113/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
&sequential_37/lstm_113/strided_slice_1StridedSlice'sequential_37/lstm_113/Shape_1:output:05sequential_37/lstm_113/strided_slice_1/stack:output:07sequential_37/lstm_113/strided_slice_1/stack_1:output:07sequential_37/lstm_113/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_37/lstm_113/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         щ
$sequential_37/lstm_113/TensorArrayV2TensorListReserve;sequential_37/lstm_113/TensorArrayV2/element_shape:output:0/sequential_37/lstm_113/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЮ
Lsequential_37/lstm_113/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Ц
>sequential_37/lstm_113/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_37/lstm_113/transpose:y:0Usequential_37/lstm_113/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмv
,sequential_37/lstm_113/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_37/lstm_113/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_37/lstm_113/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▄
&sequential_37/lstm_113/strided_slice_2StridedSlice$sequential_37/lstm_113/transpose:y:05sequential_37/lstm_113/strided_slice_2/stack:output:07sequential_37/lstm_113/strided_slice_2/stack_1:output:07sequential_37/lstm_113/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskЙ
:sequential_37/lstm_113/lstm_cell_344/MatMul/ReadVariableOpReadVariableOpCsequential_37_lstm_113_lstm_cell_344_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▄
+sequential_37/lstm_113/lstm_cell_344/MatMulMatMul/sequential_37/lstm_113/strided_slice_2:output:0Bsequential_37/lstm_113/lstm_cell_344/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┬
<sequential_37/lstm_113/lstm_cell_344/MatMul_1/ReadVariableOpReadVariableOpEsequential_37_lstm_113_lstm_cell_344_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0о
-sequential_37/lstm_113/lstm_cell_344/MatMul_1MatMul%sequential_37/lstm_113/zeros:output:0Dsequential_37/lstm_113/lstm_cell_344/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (М
(sequential_37/lstm_113/lstm_cell_344/addAddV25sequential_37/lstm_113/lstm_cell_344/MatMul:product:07sequential_37/lstm_113/lstm_cell_344/MatMul_1:product:0*
T0*'
_output_shapes
:         (╝
;sequential_37/lstm_113/lstm_cell_344/BiasAdd/ReadVariableOpReadVariableOpDsequential_37_lstm_113_lstm_cell_344_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▄
,sequential_37/lstm_113/lstm_cell_344/BiasAddBiasAdd,sequential_37/lstm_113/lstm_cell_344/add:z:0Csequential_37/lstm_113/lstm_cell_344/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (v
4sequential_37/lstm_113/lstm_cell_344/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
*sequential_37/lstm_113/lstm_cell_344/splitSplit=sequential_37/lstm_113/lstm_cell_344/split/split_dim:output:05sequential_37/lstm_113/lstm_cell_344/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitъ
,sequential_37/lstm_113/lstm_cell_344/SigmoidSigmoid3sequential_37/lstm_113/lstm_cell_344/split:output:0*
T0*'
_output_shapes
:         
а
.sequential_37/lstm_113/lstm_cell_344/Sigmoid_1Sigmoid3sequential_37/lstm_113/lstm_cell_344/split:output:1*
T0*'
_output_shapes
:         
Й
(sequential_37/lstm_113/lstm_cell_344/mulMul2sequential_37/lstm_113/lstm_cell_344/Sigmoid_1:y:0'sequential_37/lstm_113/zeros_1:output:0*
T0*'
_output_shapes
:         
ў
)sequential_37/lstm_113/lstm_cell_344/ReluRelu3sequential_37/lstm_113/lstm_cell_344/split:output:2*
T0*'
_output_shapes
:         
╬
*sequential_37/lstm_113/lstm_cell_344/mul_1Mul0sequential_37/lstm_113/lstm_cell_344/Sigmoid:y:07sequential_37/lstm_113/lstm_cell_344/Relu:activations:0*
T0*'
_output_shapes
:         
├
*sequential_37/lstm_113/lstm_cell_344/add_1AddV2,sequential_37/lstm_113/lstm_cell_344/mul:z:0.sequential_37/lstm_113/lstm_cell_344/mul_1:z:0*
T0*'
_output_shapes
:         
а
.sequential_37/lstm_113/lstm_cell_344/Sigmoid_2Sigmoid3sequential_37/lstm_113/lstm_cell_344/split:output:3*
T0*'
_output_shapes
:         
Ћ
+sequential_37/lstm_113/lstm_cell_344/Relu_1Relu.sequential_37/lstm_113/lstm_cell_344/add_1:z:0*
T0*'
_output_shapes
:         
м
*sequential_37/lstm_113/lstm_cell_344/mul_2Mul2sequential_37/lstm_113/lstm_cell_344/Sigmoid_2:y:09sequential_37/lstm_113/lstm_cell_344/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ё
4sequential_37/lstm_113/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   §
&sequential_37/lstm_113/TensorArrayV2_1TensorListReserve=sequential_37/lstm_113/TensorArrayV2_1/element_shape:output:0/sequential_37/lstm_113/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм]
sequential_37/lstm_113/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_37/lstm_113/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         k
)sequential_37/lstm_113/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╔
sequential_37/lstm_113/whileWhile2sequential_37/lstm_113/while/loop_counter:output:08sequential_37/lstm_113/while/maximum_iterations:output:0$sequential_37/lstm_113/time:output:0/sequential_37/lstm_113/TensorArrayV2_1:handle:0%sequential_37/lstm_113/zeros:output:0'sequential_37/lstm_113/zeros_1:output:0/sequential_37/lstm_113/strided_slice_1:output:0Nsequential_37/lstm_113/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_37_lstm_113_lstm_cell_344_matmul_readvariableop_resourceEsequential_37_lstm_113_lstm_cell_344_matmul_1_readvariableop_resourceDsequential_37_lstm_113_lstm_cell_344_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_37_lstm_113_while_body_2081061*5
cond-R+
)sequential_37_lstm_113_while_cond_2081060*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations ў
Gsequential_37/lstm_113/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   Є
9sequential_37/lstm_113/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_37/lstm_113/while:output:3Psequential_37/lstm_113/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0
,sequential_37/lstm_113/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         x
.sequential_37/lstm_113/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_37/lstm_113/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
&sequential_37/lstm_113/strided_slice_3StridedSliceBsequential_37/lstm_113/TensorArrayV2Stack/TensorListStack:tensor:05sequential_37/lstm_113/strided_slice_3/stack:output:07sequential_37/lstm_113/strided_slice_3/stack_1:output:07sequential_37/lstm_113/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_mask|
'sequential_37/lstm_113/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          █
"sequential_37/lstm_113/transpose_1	TransposeBsequential_37/lstm_113/TensorArrayV2Stack/TensorListStack:tensor:00sequential_37/lstm_113/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
r
sequential_37/lstm_113/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    б
,sequential_37/dense_37/MatMul/ReadVariableOpReadVariableOp5sequential_37_dense_37_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0└
sequential_37/dense_37/MatMulMatMul/sequential_37/lstm_113/strided_slice_3:output:04sequential_37/dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-sequential_37/dense_37/BiasAdd/ReadVariableOpReadVariableOp6sequential_37_dense_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
sequential_37/dense_37/BiasAddBiasAdd'sequential_37/dense_37/MatMul:product:05sequential_37/dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         v
IdentityIdentity'sequential_37/dense_37/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ░
NoOpNoOp.^sequential_37/dense_37/BiasAdd/ReadVariableOp-^sequential_37/dense_37/MatMul/ReadVariableOp<^sequential_37/lstm_111/lstm_cell_342/BiasAdd/ReadVariableOp;^sequential_37/lstm_111/lstm_cell_342/MatMul/ReadVariableOp=^sequential_37/lstm_111/lstm_cell_342/MatMul_1/ReadVariableOp^sequential_37/lstm_111/while<^sequential_37/lstm_112/lstm_cell_343/BiasAdd/ReadVariableOp;^sequential_37/lstm_112/lstm_cell_343/MatMul/ReadVariableOp=^sequential_37/lstm_112/lstm_cell_343/MatMul_1/ReadVariableOp^sequential_37/lstm_112/while<^sequential_37/lstm_113/lstm_cell_344/BiasAdd/ReadVariableOp;^sequential_37/lstm_113/lstm_cell_344/MatMul/ReadVariableOp=^sequential_37/lstm_113/lstm_cell_344/MatMul_1/ReadVariableOp^sequential_37/lstm_113/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2^
-sequential_37/dense_37/BiasAdd/ReadVariableOp-sequential_37/dense_37/BiasAdd/ReadVariableOp2\
,sequential_37/dense_37/MatMul/ReadVariableOp,sequential_37/dense_37/MatMul/ReadVariableOp2z
;sequential_37/lstm_111/lstm_cell_342/BiasAdd/ReadVariableOp;sequential_37/lstm_111/lstm_cell_342/BiasAdd/ReadVariableOp2x
:sequential_37/lstm_111/lstm_cell_342/MatMul/ReadVariableOp:sequential_37/lstm_111/lstm_cell_342/MatMul/ReadVariableOp2|
<sequential_37/lstm_111/lstm_cell_342/MatMul_1/ReadVariableOp<sequential_37/lstm_111/lstm_cell_342/MatMul_1/ReadVariableOp2<
sequential_37/lstm_111/whilesequential_37/lstm_111/while2z
;sequential_37/lstm_112/lstm_cell_343/BiasAdd/ReadVariableOp;sequential_37/lstm_112/lstm_cell_343/BiasAdd/ReadVariableOp2x
:sequential_37/lstm_112/lstm_cell_343/MatMul/ReadVariableOp:sequential_37/lstm_112/lstm_cell_343/MatMul/ReadVariableOp2|
<sequential_37/lstm_112/lstm_cell_343/MatMul_1/ReadVariableOp<sequential_37/lstm_112/lstm_cell_343/MatMul_1/ReadVariableOp2<
sequential_37/lstm_112/whilesequential_37/lstm_112/while2z
;sequential_37/lstm_113/lstm_cell_344/BiasAdd/ReadVariableOp;sequential_37/lstm_113/lstm_cell_344/BiasAdd/ReadVariableOp2x
:sequential_37/lstm_113/lstm_cell_344/MatMul/ReadVariableOp:sequential_37/lstm_113/lstm_cell_344/MatMul/ReadVariableOp2|
<sequential_37/lstm_113/lstm_cell_344/MatMul_1/ReadVariableOp<sequential_37/lstm_113/lstm_cell_344/MatMul_1/ReadVariableOp2<
sequential_37/lstm_113/whilesequential_37/lstm_113/while:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_111_input
РJ
Б
E__inference_lstm_112_layer_call_and_return_conditional_losses_2085551

inputs?
,lstm_cell_343_matmul_readvariableop_resource:	d╚A
.lstm_cell_343_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_343_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_343/BiasAdd/ReadVariableOpб#lstm_cell_343/MatMul/ReadVariableOpб%lstm_cell_343/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_343/MatMul/ReadVariableOpReadVariableOp,lstm_cell_343_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_343/MatMulMatMulstrided_slice_2:output:0+lstm_cell_343/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_343/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_343_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_343/MatMul_1MatMulzeros:output:0-lstm_cell_343/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_343/addAddV2lstm_cell_343/MatMul:product:0 lstm_cell_343/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_343/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_343_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_343/BiasAddBiasAddlstm_cell_343/add:z:0,lstm_cell_343/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_343/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_343/splitSplit&lstm_cell_343/split/split_dim:output:0lstm_cell_343/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_343/SigmoidSigmoidlstm_cell_343/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_343/Sigmoid_1Sigmoidlstm_cell_343/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_343/mulMullstm_cell_343/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_343/ReluRelulstm_cell_343/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_343/mul_1Mullstm_cell_343/Sigmoid:y:0 lstm_cell_343/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_343/add_1AddV2lstm_cell_343/mul:z:0lstm_cell_343/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_343/Sigmoid_2Sigmoidlstm_cell_343/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_343/Relu_1Relulstm_cell_343/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_343/mul_2Mullstm_cell_343/Sigmoid_2:y:0"lstm_cell_343/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_343_matmul_readvariableop_resource.lstm_cell_343_matmul_1_readvariableop_resource-lstm_cell_343_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2085467*
condR
while_cond_2085466*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         2├
NoOpNoOp%^lstm_cell_343/BiasAdd/ReadVariableOp$^lstm_cell_343/MatMul/ReadVariableOp&^lstm_cell_343/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_343/BiasAdd/ReadVariableOp$lstm_cell_343/BiasAdd/ReadVariableOp2J
#lstm_cell_343/MatMul/ReadVariableOp#lstm_cell_343/MatMul/ReadVariableOp2N
%lstm_cell_343/MatMul_1/ReadVariableOp%lstm_cell_343/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
е8
І
E__inference_lstm_113_layer_call_and_return_conditional_losses_2082192

inputs'
lstm_cell_344_2082110:2('
lstm_cell_344_2082112:
(#
lstm_cell_344_2082114:(
identityѕб%lstm_cell_344/StatefulPartitionedCallбwhile;
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask■
%lstm_cell_344/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_344_2082110lstm_cell_344_2082112lstm_cell_344_2082114*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_344_layer_call_and_return_conditional_losses_2082064n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_344_2082110lstm_cell_344_2082112lstm_cell_344_2082114*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2082123*
condR
while_cond_2082122*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  
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
:         
v
NoOpNoOp&^lstm_cell_344/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2N
%lstm_cell_344/StatefulPartitionedCall%lstm_cell_344/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  2
 
_user_specified_nameinputs
Г
╣
*__inference_lstm_112_layer_call_fn_2084957
inputs_0
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_112_layer_call_and_return_conditional_losses_2081842|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
Г
╣
*__inference_lstm_111_layer_call_fn_2084330
inputs_0
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_111_layer_call_and_return_conditional_losses_2081301|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
╚	
Ш
E__inference_dense_37_layer_call_and_return_conditional_losses_2086186

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
▀
ѕ
J__inference_lstm_cell_342_layer_call_and_return_conditional_losses_2086252

inputs
states_0
states_11
matmul_readvariableop_resource:	љ3
 matmul_1_readvariableop_resource:	dљ.
biasadd_readvariableop_resource:	љ
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         љs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         d
"
_user_specified_name
states/0:QM
'
_output_shapes
:         d
"
_user_specified_name
states/1
Ј#
ы
while_body_2081423
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_342_2081447_0:	љ0
while_lstm_cell_342_2081449_0:	dљ,
while_lstm_cell_342_2081451_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_342_2081447:	љ.
while_lstm_cell_342_2081449:	dљ*
while_lstm_cell_342_2081451:	љѕб+while/lstm_cell_342/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0╝
+while/lstm_cell_342/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_342_2081447_0while_lstm_cell_342_2081449_0while_lstm_cell_342_2081451_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_342_layer_call_and_return_conditional_losses_2081364П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_342/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_342/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dЉ
while/Identity_5Identity4while/lstm_cell_342/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dz

while/NoOpNoOp,^while/lstm_cell_342/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_342_2081447while_lstm_cell_342_2081447_0"<
while_lstm_cell_342_2081449while_lstm_cell_342_2081449_0"<
while_lstm_cell_342_2081451while_lstm_cell_342_2081451_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2Z
+while/lstm_cell_342/StatefulPartitionedCall+while/lstm_cell_342/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
Л8
┌
while_body_2084422
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_342_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_342_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_342_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_342_matmul_readvariableop_resource:	љG
4while_lstm_cell_342_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_342_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_342/BiasAdd/ReadVariableOpб)while/lstm_cell_342/MatMul/ReadVariableOpб+while/lstm_cell_342/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_342/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_342_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_342/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_342/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_342/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_342_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_342/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_342/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_342/addAddV2$while/lstm_cell_342/MatMul:product:0&while/lstm_cell_342/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_342/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_342_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_342/BiasAddBiasAddwhile/lstm_cell_342/add:z:02while/lstm_cell_342/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_342/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_342/splitSplit,while/lstm_cell_342/split/split_dim:output:0$while/lstm_cell_342/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_342/SigmoidSigmoid"while/lstm_cell_342/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_342/Sigmoid_1Sigmoid"while/lstm_cell_342/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_342/mulMul!while/lstm_cell_342/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_342/ReluRelu"while/lstm_cell_342/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_342/mul_1Mulwhile/lstm_cell_342/Sigmoid:y:0&while/lstm_cell_342/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_342/add_1AddV2while/lstm_cell_342/mul:z:0while/lstm_cell_342/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_342/Sigmoid_2Sigmoid"while/lstm_cell_342/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_342/Relu_1Reluwhile/lstm_cell_342/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_342/mul_2Mul!while/lstm_cell_342/Sigmoid_2:y:0(while/lstm_cell_342/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_342/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_342/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_342/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_342/BiasAdd/ReadVariableOp*^while/lstm_cell_342/MatMul/ReadVariableOp,^while/lstm_cell_342/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_342_biasadd_readvariableop_resource5while_lstm_cell_342_biasadd_readvariableop_resource_0"n
4while_lstm_cell_342_matmul_1_readvariableop_resource6while_lstm_cell_342_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_342_matmul_readvariableop_resource4while_lstm_cell_342_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_342/BiasAdd/ReadVariableOp*while/lstm_cell_342/BiasAdd/ReadVariableOp2V
)while/lstm_cell_342/MatMul/ReadVariableOp)while/lstm_cell_342/MatMul/ReadVariableOp2Z
+while/lstm_cell_342/MatMul_1/ReadVariableOp+while/lstm_cell_342/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
љ
Х
*__inference_lstm_113_layer_call_fn_2085562
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identityѕбStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_113_layer_call_and_return_conditional_losses_2082001o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
№
Э
/__inference_lstm_cell_343_layer_call_fn_2086318

inputs
states_0
states_1
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_343_layer_call_and_return_conditional_losses_2081714o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:QM
'
_output_shapes
:         2
"
_user_specified_name
states/0:QM
'
_output_shapes
:         2
"
_user_specified_name
states/1
АC
Щ

lstm_112_while_body_2083663.
*lstm_112_while_lstm_112_while_loop_counter4
0lstm_112_while_lstm_112_while_maximum_iterations
lstm_112_while_placeholder 
lstm_112_while_placeholder_1 
lstm_112_while_placeholder_2 
lstm_112_while_placeholder_3-
)lstm_112_while_lstm_112_strided_slice_1_0i
elstm_112_while_tensorarrayv2read_tensorlistgetitem_lstm_112_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_112_while_lstm_cell_343_matmul_readvariableop_resource_0:	d╚R
?lstm_112_while_lstm_cell_343_matmul_1_readvariableop_resource_0:	2╚M
>lstm_112_while_lstm_cell_343_biasadd_readvariableop_resource_0:	╚
lstm_112_while_identity
lstm_112_while_identity_1
lstm_112_while_identity_2
lstm_112_while_identity_3
lstm_112_while_identity_4
lstm_112_while_identity_5+
'lstm_112_while_lstm_112_strided_slice_1g
clstm_112_while_tensorarrayv2read_tensorlistgetitem_lstm_112_tensorarrayunstack_tensorlistfromtensorN
;lstm_112_while_lstm_cell_343_matmul_readvariableop_resource:	d╚P
=lstm_112_while_lstm_cell_343_matmul_1_readvariableop_resource:	2╚K
<lstm_112_while_lstm_cell_343_biasadd_readvariableop_resource:	╚ѕб3lstm_112/while/lstm_cell_343/BiasAdd/ReadVariableOpб2lstm_112/while/lstm_cell_343/MatMul/ReadVariableOpб4lstm_112/while/lstm_cell_343/MatMul_1/ReadVariableOpЉ
@lstm_112/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
2lstm_112/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_112_while_tensorarrayv2read_tensorlistgetitem_lstm_112_tensorarrayunstack_tensorlistfromtensor_0lstm_112_while_placeholderIlstm_112/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0▒
2lstm_112/while/lstm_cell_343/MatMul/ReadVariableOpReadVariableOp=lstm_112_while_lstm_cell_343_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0О
#lstm_112/while/lstm_cell_343/MatMulMatMul9lstm_112/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_112/while/lstm_cell_343/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚х
4lstm_112/while/lstm_cell_343/MatMul_1/ReadVariableOpReadVariableOp?lstm_112_while_lstm_cell_343_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Й
%lstm_112/while/lstm_cell_343/MatMul_1MatMullstm_112_while_placeholder_2<lstm_112/while/lstm_cell_343/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚╝
 lstm_112/while/lstm_cell_343/addAddV2-lstm_112/while/lstm_cell_343/MatMul:product:0/lstm_112/while/lstm_cell_343/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚»
3lstm_112/while/lstm_cell_343/BiasAdd/ReadVariableOpReadVariableOp>lstm_112_while_lstm_cell_343_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0┼
$lstm_112/while/lstm_cell_343/BiasAddBiasAdd$lstm_112/while/lstm_cell_343/add:z:0;lstm_112/while/lstm_cell_343/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚n
,lstm_112/while/lstm_cell_343/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_112/while/lstm_cell_343/splitSplit5lstm_112/while/lstm_cell_343/split/split_dim:output:0-lstm_112/while/lstm_cell_343/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitј
$lstm_112/while/lstm_cell_343/SigmoidSigmoid+lstm_112/while/lstm_cell_343/split:output:0*
T0*'
_output_shapes
:         2љ
&lstm_112/while/lstm_cell_343/Sigmoid_1Sigmoid+lstm_112/while/lstm_cell_343/split:output:1*
T0*'
_output_shapes
:         2Б
 lstm_112/while/lstm_cell_343/mulMul*lstm_112/while/lstm_cell_343/Sigmoid_1:y:0lstm_112_while_placeholder_3*
T0*'
_output_shapes
:         2ѕ
!lstm_112/while/lstm_cell_343/ReluRelu+lstm_112/while/lstm_cell_343/split:output:2*
T0*'
_output_shapes
:         2Х
"lstm_112/while/lstm_cell_343/mul_1Mul(lstm_112/while/lstm_cell_343/Sigmoid:y:0/lstm_112/while/lstm_cell_343/Relu:activations:0*
T0*'
_output_shapes
:         2Ф
"lstm_112/while/lstm_cell_343/add_1AddV2$lstm_112/while/lstm_cell_343/mul:z:0&lstm_112/while/lstm_cell_343/mul_1:z:0*
T0*'
_output_shapes
:         2љ
&lstm_112/while/lstm_cell_343/Sigmoid_2Sigmoid+lstm_112/while/lstm_cell_343/split:output:3*
T0*'
_output_shapes
:         2Ё
#lstm_112/while/lstm_cell_343/Relu_1Relu&lstm_112/while/lstm_cell_343/add_1:z:0*
T0*'
_output_shapes
:         2║
"lstm_112/while/lstm_cell_343/mul_2Mul*lstm_112/while/lstm_cell_343/Sigmoid_2:y:01lstm_112/while/lstm_cell_343/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ж
3lstm_112/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_112_while_placeholder_1lstm_112_while_placeholder&lstm_112/while/lstm_cell_343/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_112/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_112/while/addAddV2lstm_112_while_placeholderlstm_112/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_112/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_112/while/add_1AddV2*lstm_112_while_lstm_112_while_loop_counterlstm_112/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_112/while/IdentityIdentitylstm_112/while/add_1:z:0^lstm_112/while/NoOp*
T0*
_output_shapes
: ј
lstm_112/while/Identity_1Identity0lstm_112_while_lstm_112_while_maximum_iterations^lstm_112/while/NoOp*
T0*
_output_shapes
: t
lstm_112/while/Identity_2Identitylstm_112/while/add:z:0^lstm_112/while/NoOp*
T0*
_output_shapes
: А
lstm_112/while/Identity_3IdentityClstm_112/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_112/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_112/while/Identity_4Identity&lstm_112/while/lstm_cell_343/mul_2:z:0^lstm_112/while/NoOp*
T0*'
_output_shapes
:         2Ћ
lstm_112/while/Identity_5Identity&lstm_112/while/lstm_cell_343/add_1:z:0^lstm_112/while/NoOp*
T0*'
_output_shapes
:         2э
lstm_112/while/NoOpNoOp4^lstm_112/while/lstm_cell_343/BiasAdd/ReadVariableOp3^lstm_112/while/lstm_cell_343/MatMul/ReadVariableOp5^lstm_112/while/lstm_cell_343/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_112_while_identity lstm_112/while/Identity:output:0"?
lstm_112_while_identity_1"lstm_112/while/Identity_1:output:0"?
lstm_112_while_identity_2"lstm_112/while/Identity_2:output:0"?
lstm_112_while_identity_3"lstm_112/while/Identity_3:output:0"?
lstm_112_while_identity_4"lstm_112/while/Identity_4:output:0"?
lstm_112_while_identity_5"lstm_112/while/Identity_5:output:0"T
'lstm_112_while_lstm_112_strided_slice_1)lstm_112_while_lstm_112_strided_slice_1_0"~
<lstm_112_while_lstm_cell_343_biasadd_readvariableop_resource>lstm_112_while_lstm_cell_343_biasadd_readvariableop_resource_0"ђ
=lstm_112_while_lstm_cell_343_matmul_1_readvariableop_resource?lstm_112_while_lstm_cell_343_matmul_1_readvariableop_resource_0"|
;lstm_112_while_lstm_cell_343_matmul_readvariableop_resource=lstm_112_while_lstm_cell_343_matmul_readvariableop_resource_0"╠
clstm_112_while_tensorarrayv2read_tensorlistgetitem_lstm_112_tensorarrayunstack_tensorlistfromtensorelstm_112_while_tensorarrayv2read_tensorlistgetitem_lstm_112_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2j
3lstm_112/while/lstm_cell_343/BiasAdd/ReadVariableOp3lstm_112/while/lstm_cell_343/BiasAdd/ReadVariableOp2h
2lstm_112/while/lstm_cell_343/MatMul/ReadVariableOp2lstm_112/while/lstm_cell_343/MatMul/ReadVariableOp2l
4lstm_112/while/lstm_cell_343/MatMul_1/ReadVariableOp4lstm_112/while/lstm_cell_343/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
Ѓ
и
*__inference_lstm_111_layer_call_fn_2084352

inputs
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identityѕбStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_111_layer_call_and_return_conditional_losses_2082350s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Л8
┌
while_body_2085181
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_343_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_343_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_343_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_343_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_343_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_343_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_343/BiasAdd/ReadVariableOpб)while/lstm_cell_343/MatMul/ReadVariableOpб+while/lstm_cell_343/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_343/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_343_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_343/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_343/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_343/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_343_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_343/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_343/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_343/addAddV2$while/lstm_cell_343/MatMul:product:0&while/lstm_cell_343/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_343/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_343_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_343/BiasAddBiasAddwhile/lstm_cell_343/add:z:02while/lstm_cell_343/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_343/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_343/splitSplit,while/lstm_cell_343/split/split_dim:output:0$while/lstm_cell_343/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_343/SigmoidSigmoid"while/lstm_cell_343/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_343/Sigmoid_1Sigmoid"while/lstm_cell_343/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_343/mulMul!while/lstm_cell_343/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_343/ReluRelu"while/lstm_cell_343/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_343/mul_1Mulwhile/lstm_cell_343/Sigmoid:y:0&while/lstm_cell_343/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_343/add_1AddV2while/lstm_cell_343/mul:z:0while/lstm_cell_343/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_343/Sigmoid_2Sigmoid"while/lstm_cell_343/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_343/Relu_1Reluwhile/lstm_cell_343/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_343/mul_2Mul!while/lstm_cell_343/Sigmoid_2:y:0(while/lstm_cell_343/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_343/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_343/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_343/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_343/BiasAdd/ReadVariableOp*^while/lstm_cell_343/MatMul/ReadVariableOp,^while/lstm_cell_343/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_343_biasadd_readvariableop_resource5while_lstm_cell_343_biasadd_readvariableop_resource_0"n
4while_lstm_cell_343_matmul_1_readvariableop_resource6while_lstm_cell_343_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_343_matmul_readvariableop_resource4while_lstm_cell_343_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_343/BiasAdd/ReadVariableOp*while/lstm_cell_343/BiasAdd/ReadVariableOp2V
)while/lstm_cell_343/MatMul/ReadVariableOp)while/lstm_cell_343/MatMul/ReadVariableOp2Z
+while/lstm_cell_343/MatMul_1/ReadVariableOp+while/lstm_cell_343/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
═
Ѓ
J__inference_lstm_cell_344_layer_call_and_return_conditional_losses_2081918

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         (r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         
Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         2:         
:         
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:OK
'
_output_shapes
:         

 
_user_specified_namestates:OK
'
_output_shapes
:         

 
_user_specified_namestates
№
Э
/__inference_lstm_cell_342_layer_call_fn_2086220

inputs
states_0
states_1
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_342_layer_call_and_return_conditional_losses_2081364o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         d
"
_user_specified_name
states/0:QM
'
_output_shapes
:         d
"
_user_specified_name
states/1
Ѓ
и
*__inference_lstm_111_layer_call_fn_2084363

inputs
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identityѕбStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_111_layer_call_and_return_conditional_losses_2083196s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
РJ
Б
E__inference_lstm_111_layer_call_and_return_conditional_losses_2084792

inputs?
,lstm_cell_342_matmul_readvariableop_resource:	љA
.lstm_cell_342_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_342_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_342/BiasAdd/ReadVariableOpб#lstm_cell_342/MatMul/ReadVariableOpб%lstm_cell_342/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_342/MatMul/ReadVariableOpReadVariableOp,lstm_cell_342_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_342/MatMulMatMulstrided_slice_2:output:0+lstm_cell_342/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_342/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_342_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_342/MatMul_1MatMulzeros:output:0-lstm_cell_342/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_342/addAddV2lstm_cell_342/MatMul:product:0 lstm_cell_342/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_342/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_342_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_342/BiasAddBiasAddlstm_cell_342/add:z:0,lstm_cell_342/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_342/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_342/splitSplit&lstm_cell_342/split/split_dim:output:0lstm_cell_342/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_342/SigmoidSigmoidlstm_cell_342/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_342/Sigmoid_1Sigmoidlstm_cell_342/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_342/mulMullstm_cell_342/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_342/ReluRelulstm_cell_342/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_342/mul_1Mullstm_cell_342/Sigmoid:y:0 lstm_cell_342/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_342/add_1AddV2lstm_cell_342/mul:z:0lstm_cell_342/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_342/Sigmoid_2Sigmoidlstm_cell_342/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_342/Relu_1Relulstm_cell_342/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_342/mul_2Mullstm_cell_342/Sigmoid_2:y:0"lstm_cell_342/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_342_matmul_readvariableop_resource.lstm_cell_342_matmul_1_readvariableop_resource-lstm_cell_342_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2084708*
condR
while_cond_2084707*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         d├
NoOpNoOp%^lstm_cell_342/BiasAdd/ReadVariableOp$^lstm_cell_342/MatMul/ReadVariableOp&^lstm_cell_342/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_342/BiasAdd/ReadVariableOp$lstm_cell_342/BiasAdd/ReadVariableOp2J
#lstm_cell_342/MatMul/ReadVariableOp#lstm_cell_342/MatMul/ReadVariableOp2N
%lstm_cell_342/MatMul_1/ReadVariableOp%lstm_cell_342/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
РW
Ъ
 __inference__traced_save_2086623
file_prefix.
*savev2_dense_37_kernel_read_readvariableop,
(savev2_dense_37_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_111_lstm_cell_111_kernel_read_readvariableopF
Bsavev2_lstm_111_lstm_cell_111_recurrent_kernel_read_readvariableop:
6savev2_lstm_111_lstm_cell_111_bias_read_readvariableop<
8savev2_lstm_112_lstm_cell_112_kernel_read_readvariableopF
Bsavev2_lstm_112_lstm_cell_112_recurrent_kernel_read_readvariableop:
6savev2_lstm_112_lstm_cell_112_bias_read_readvariableop<
8savev2_lstm_113_lstm_cell_113_kernel_read_readvariableopF
Bsavev2_lstm_113_lstm_cell_113_recurrent_kernel_read_readvariableop:
6savev2_lstm_113_lstm_cell_113_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_37_kernel_m_read_readvariableop3
/savev2_adam_dense_37_bias_m_read_readvariableopC
?savev2_adam_lstm_111_lstm_cell_111_kernel_m_read_readvariableopM
Isavev2_adam_lstm_111_lstm_cell_111_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_111_lstm_cell_111_bias_m_read_readvariableopC
?savev2_adam_lstm_112_lstm_cell_112_kernel_m_read_readvariableopM
Isavev2_adam_lstm_112_lstm_cell_112_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_112_lstm_cell_112_bias_m_read_readvariableopC
?savev2_adam_lstm_113_lstm_cell_113_kernel_m_read_readvariableopM
Isavev2_adam_lstm_113_lstm_cell_113_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_113_lstm_cell_113_bias_m_read_readvariableop5
1savev2_adam_dense_37_kernel_v_read_readvariableop3
/savev2_adam_dense_37_bias_v_read_readvariableopC
?savev2_adam_lstm_111_lstm_cell_111_kernel_v_read_readvariableopM
Isavev2_adam_lstm_111_lstm_cell_111_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_111_lstm_cell_111_bias_v_read_readvariableopC
?savev2_adam_lstm_112_lstm_cell_112_kernel_v_read_readvariableopM
Isavev2_adam_lstm_112_lstm_cell_112_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_112_lstm_cell_112_bias_v_read_readvariableopC
?savev2_adam_lstm_113_lstm_cell_113_kernel_v_read_readvariableopM
Isavev2_adam_lstm_113_lstm_cell_113_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_113_lstm_cell_113_bias_v_read_readvariableop
savev2_const

identity_1ѕбMergeV2Checkpointsw
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
_temp/partЂ
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
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ┼
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*Ь
valueСBр)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH┐
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ж
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_37_kernel_read_readvariableop(savev2_dense_37_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_111_lstm_cell_111_kernel_read_readvariableopBsavev2_lstm_111_lstm_cell_111_recurrent_kernel_read_readvariableop6savev2_lstm_111_lstm_cell_111_bias_read_readvariableop8savev2_lstm_112_lstm_cell_112_kernel_read_readvariableopBsavev2_lstm_112_lstm_cell_112_recurrent_kernel_read_readvariableop6savev2_lstm_112_lstm_cell_112_bias_read_readvariableop8savev2_lstm_113_lstm_cell_113_kernel_read_readvariableopBsavev2_lstm_113_lstm_cell_113_recurrent_kernel_read_readvariableop6savev2_lstm_113_lstm_cell_113_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_37_kernel_m_read_readvariableop/savev2_adam_dense_37_bias_m_read_readvariableop?savev2_adam_lstm_111_lstm_cell_111_kernel_m_read_readvariableopIsavev2_adam_lstm_111_lstm_cell_111_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_111_lstm_cell_111_bias_m_read_readvariableop?savev2_adam_lstm_112_lstm_cell_112_kernel_m_read_readvariableopIsavev2_adam_lstm_112_lstm_cell_112_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_112_lstm_cell_112_bias_m_read_readvariableop?savev2_adam_lstm_113_lstm_cell_113_kernel_m_read_readvariableopIsavev2_adam_lstm_113_lstm_cell_113_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_113_lstm_cell_113_bias_m_read_readvariableop1savev2_adam_dense_37_kernel_v_read_readvariableop/savev2_adam_dense_37_bias_v_read_readvariableop?savev2_adam_lstm_111_lstm_cell_111_kernel_v_read_readvariableopIsavev2_adam_lstm_111_lstm_cell_111_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_111_lstm_cell_111_bias_v_read_readvariableop?savev2_adam_lstm_112_lstm_cell_112_kernel_v_read_readvariableopIsavev2_adam_lstm_112_lstm_cell_112_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_112_lstm_cell_112_bias_v_read_readvariableop?savev2_adam_lstm_113_lstm_cell_113_kernel_v_read_readvariableopIsavev2_adam_lstm_113_lstm_cell_113_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_113_lstm_cell_113_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *7
dtypes-
+2)	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:І
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

identity_1Identity_1:output:0*М
_input_shapes┴
Й: :
:: : : : : :	љ:	dљ:љ:	d╚:	2╚:╚:2(:
(:(: : :
::	љ:	dљ:љ:	d╚:	2╚:╚:2(:
(:(:
::	љ:	dљ:љ:	d╚:	2╚:╚:2(:
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
:	љ:%	!

_output_shapes
:	dљ:!


_output_shapes	
:љ:%!

_output_shapes
:	d╚:%!

_output_shapes
:	2╚:!

_output_shapes	
:╚:$ 

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
:	љ:%!

_output_shapes
:	dљ:!

_output_shapes	
:љ:%!

_output_shapes
:	d╚:%!

_output_shapes
:	2╚:!

_output_shapes	
:╚:$ 

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
:	љ:%!!

_output_shapes
:	dљ:!"

_output_shapes	
:љ:%#!

_output_shapes
:	d╚:%$!

_output_shapes
:	2╚:!%

_output_shapes	
:╚:$& 

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
▀
ѕ
J__inference_lstm_cell_342_layer_call_and_return_conditional_losses_2086284

inputs
states_0
states_11
matmul_readvariableop_resource:	љ3
 matmul_1_readvariableop_resource:	dљ.
biasadd_readvariableop_resource:	љ
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         љs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         d
"
_user_specified_name
states/0:QM
'
_output_shapes
:         d
"
_user_specified_name
states/1
»8
ј
E__inference_lstm_111_layer_call_and_return_conditional_losses_2081492

inputs(
lstm_cell_342_2081410:	љ(
lstm_cell_342_2081412:	dљ$
lstm_cell_342_2081414:	љ
identityѕб%lstm_cell_342/StatefulPartitionedCallбwhile;
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask■
%lstm_cell_342/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_342_2081410lstm_cell_342_2081412lstm_cell_342_2081414*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_342_layer_call_and_return_conditional_losses_2081364n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_342_2081410lstm_cell_342_2081412lstm_cell_342_2081414*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2081423*
condR
while_cond_2081422*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  dv
NoOpNoOp&^lstm_cell_342/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2N
%lstm_cell_342/StatefulPartitionedCall%lstm_cell_342/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
и

Ч
lstm_111_while_cond_2083523.
*lstm_111_while_lstm_111_while_loop_counter4
0lstm_111_while_lstm_111_while_maximum_iterations
lstm_111_while_placeholder 
lstm_111_while_placeholder_1 
lstm_111_while_placeholder_2 
lstm_111_while_placeholder_30
,lstm_111_while_less_lstm_111_strided_slice_1G
Clstm_111_while_lstm_111_while_cond_2083523___redundant_placeholder0G
Clstm_111_while_lstm_111_while_cond_2083523___redundant_placeholder1G
Clstm_111_while_lstm_111_while_cond_2083523___redundant_placeholder2G
Clstm_111_while_lstm_111_while_cond_2083523___redundant_placeholder3
lstm_111_while_identity
є
lstm_111/while/LessLesslstm_111_while_placeholder,lstm_111_while_less_lstm_111_strided_slice_1*
T0*
_output_shapes
: ]
lstm_111/while/IdentityIdentitylstm_111/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_111_while_identity lstm_111/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
Л8
┌
while_body_2082416
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_343_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_343_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_343_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_343_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_343_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_343_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_343/BiasAdd/ReadVariableOpб)while/lstm_cell_343/MatMul/ReadVariableOpб+while/lstm_cell_343/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_343/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_343_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_343/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_343/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_343/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_343_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_343/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_343/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_343/addAddV2$while/lstm_cell_343/MatMul:product:0&while/lstm_cell_343/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_343/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_343_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_343/BiasAddBiasAddwhile/lstm_cell_343/add:z:02while/lstm_cell_343/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_343/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_343/splitSplit,while/lstm_cell_343/split/split_dim:output:0$while/lstm_cell_343/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_343/SigmoidSigmoid"while/lstm_cell_343/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_343/Sigmoid_1Sigmoid"while/lstm_cell_343/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_343/mulMul!while/lstm_cell_343/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_343/ReluRelu"while/lstm_cell_343/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_343/mul_1Mulwhile/lstm_cell_343/Sigmoid:y:0&while/lstm_cell_343/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_343/add_1AddV2while/lstm_cell_343/mul:z:0while/lstm_cell_343/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_343/Sigmoid_2Sigmoid"while/lstm_cell_343/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_343/Relu_1Reluwhile/lstm_cell_343/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_343/mul_2Mul!while/lstm_cell_343/Sigmoid_2:y:0(while/lstm_cell_343/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_343/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_343/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_343/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_343/BiasAdd/ReadVariableOp*^while/lstm_cell_343/MatMul/ReadVariableOp,^while/lstm_cell_343/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_343_biasadd_readvariableop_resource5while_lstm_cell_343_biasadd_readvariableop_resource_0"n
4while_lstm_cell_343_matmul_1_readvariableop_resource6while_lstm_cell_343_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_343_matmul_readvariableop_resource4while_lstm_cell_343_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_343/BiasAdd/ReadVariableOp*while/lstm_cell_343/BiasAdd/ReadVariableOp2V
)while/lstm_cell_343/MatMul/ReadVariableOp)while/lstm_cell_343/MatMul/ReadVariableOp2Z
+while/lstm_cell_343/MatMul_1/ReadVariableOp+while/lstm_cell_343/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
жЂ
ќ
J__inference_sequential_37_layer_call_and_return_conditional_losses_2084319

inputsH
5lstm_111_lstm_cell_342_matmul_readvariableop_resource:	љJ
7lstm_111_lstm_cell_342_matmul_1_readvariableop_resource:	dљE
6lstm_111_lstm_cell_342_biasadd_readvariableop_resource:	љH
5lstm_112_lstm_cell_343_matmul_readvariableop_resource:	d╚J
7lstm_112_lstm_cell_343_matmul_1_readvariableop_resource:	2╚E
6lstm_112_lstm_cell_343_biasadd_readvariableop_resource:	╚G
5lstm_113_lstm_cell_344_matmul_readvariableop_resource:2(I
7lstm_113_lstm_cell_344_matmul_1_readvariableop_resource:
(D
6lstm_113_lstm_cell_344_biasadd_readvariableop_resource:(9
'dense_37_matmul_readvariableop_resource:
6
(dense_37_biasadd_readvariableop_resource:
identityѕбdense_37/BiasAdd/ReadVariableOpбdense_37/MatMul/ReadVariableOpб-lstm_111/lstm_cell_342/BiasAdd/ReadVariableOpб,lstm_111/lstm_cell_342/MatMul/ReadVariableOpб.lstm_111/lstm_cell_342/MatMul_1/ReadVariableOpбlstm_111/whileб-lstm_112/lstm_cell_343/BiasAdd/ReadVariableOpб,lstm_112/lstm_cell_343/MatMul/ReadVariableOpб.lstm_112/lstm_cell_343/MatMul_1/ReadVariableOpбlstm_112/whileб-lstm_113/lstm_cell_344/BiasAdd/ReadVariableOpб,lstm_113/lstm_cell_344/MatMul/ReadVariableOpб.lstm_113/lstm_cell_344/MatMul_1/ReadVariableOpбlstm_113/whileD
lstm_111/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_111/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_111/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_111/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_111/strided_sliceStridedSlicelstm_111/Shape:output:0%lstm_111/strided_slice/stack:output:0'lstm_111/strided_slice/stack_1:output:0'lstm_111/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_111/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dј
lstm_111/zeros/packedPacklstm_111/strided_slice:output:0 lstm_111/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_111/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_111/zerosFilllstm_111/zeros/packed:output:0lstm_111/zeros/Const:output:0*
T0*'
_output_shapes
:         d[
lstm_111/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dњ
lstm_111/zeros_1/packedPacklstm_111/strided_slice:output:0"lstm_111/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_111/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_111/zeros_1Fill lstm_111/zeros_1/packed:output:0lstm_111/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dl
lstm_111/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_111/transpose	Transposeinputs lstm_111/transpose/perm:output:0*
T0*+
_output_shapes
:         V
lstm_111/Shape_1Shapelstm_111/transpose:y:0*
T0*
_output_shapes
:h
lstm_111/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_111/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_111/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_111/strided_slice_1StridedSlicelstm_111/Shape_1:output:0'lstm_111/strided_slice_1/stack:output:0)lstm_111/strided_slice_1/stack_1:output:0)lstm_111/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_111/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_111/TensorArrayV2TensorListReserve-lstm_111/TensorArrayV2/element_shape:output:0!lstm_111/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_111/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ч
0lstm_111/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_111/transpose:y:0Glstm_111/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_111/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_111/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_111/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_111/strided_slice_2StridedSlicelstm_111/transpose:y:0'lstm_111/strided_slice_2/stack:output:0)lstm_111/strided_slice_2/stack_1:output:0)lstm_111/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskБ
,lstm_111/lstm_cell_342/MatMul/ReadVariableOpReadVariableOp5lstm_111_lstm_cell_342_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0│
lstm_111/lstm_cell_342/MatMulMatMul!lstm_111/strided_slice_2:output:04lstm_111/lstm_cell_342/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љД
.lstm_111/lstm_cell_342/MatMul_1/ReadVariableOpReadVariableOp7lstm_111_lstm_cell_342_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0Г
lstm_111/lstm_cell_342/MatMul_1MatMullstm_111/zeros:output:06lstm_111/lstm_cell_342/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љф
lstm_111/lstm_cell_342/addAddV2'lstm_111/lstm_cell_342/MatMul:product:0)lstm_111/lstm_cell_342/MatMul_1:product:0*
T0*(
_output_shapes
:         љА
-lstm_111/lstm_cell_342/BiasAdd/ReadVariableOpReadVariableOp6lstm_111_lstm_cell_342_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0│
lstm_111/lstm_cell_342/BiasAddBiasAddlstm_111/lstm_cell_342/add:z:05lstm_111/lstm_cell_342/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љh
&lstm_111/lstm_cell_342/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_111/lstm_cell_342/splitSplit/lstm_111/lstm_cell_342/split/split_dim:output:0'lstm_111/lstm_cell_342/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitѓ
lstm_111/lstm_cell_342/SigmoidSigmoid%lstm_111/lstm_cell_342/split:output:0*
T0*'
_output_shapes
:         dё
 lstm_111/lstm_cell_342/Sigmoid_1Sigmoid%lstm_111/lstm_cell_342/split:output:1*
T0*'
_output_shapes
:         dћ
lstm_111/lstm_cell_342/mulMul$lstm_111/lstm_cell_342/Sigmoid_1:y:0lstm_111/zeros_1:output:0*
T0*'
_output_shapes
:         d|
lstm_111/lstm_cell_342/ReluRelu%lstm_111/lstm_cell_342/split:output:2*
T0*'
_output_shapes
:         dц
lstm_111/lstm_cell_342/mul_1Mul"lstm_111/lstm_cell_342/Sigmoid:y:0)lstm_111/lstm_cell_342/Relu:activations:0*
T0*'
_output_shapes
:         dЎ
lstm_111/lstm_cell_342/add_1AddV2lstm_111/lstm_cell_342/mul:z:0 lstm_111/lstm_cell_342/mul_1:z:0*
T0*'
_output_shapes
:         dё
 lstm_111/lstm_cell_342/Sigmoid_2Sigmoid%lstm_111/lstm_cell_342/split:output:3*
T0*'
_output_shapes
:         dy
lstm_111/lstm_cell_342/Relu_1Relu lstm_111/lstm_cell_342/add_1:z:0*
T0*'
_output_shapes
:         dе
lstm_111/lstm_cell_342/mul_2Mul$lstm_111/lstm_cell_342/Sigmoid_2:y:0+lstm_111/lstm_cell_342/Relu_1:activations:0*
T0*'
_output_shapes
:         dw
&lstm_111/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
lstm_111/TensorArrayV2_1TensorListReserve/lstm_111/TensorArrayV2_1/element_shape:output:0!lstm_111/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_111/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_111/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_111/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_111/whileWhile$lstm_111/while/loop_counter:output:0*lstm_111/while/maximum_iterations:output:0lstm_111/time:output:0!lstm_111/TensorArrayV2_1:handle:0lstm_111/zeros:output:0lstm_111/zeros_1:output:0!lstm_111/strided_slice_1:output:0@lstm_111/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_111_lstm_cell_342_matmul_readvariableop_resource7lstm_111_lstm_cell_342_matmul_1_readvariableop_resource6lstm_111_lstm_cell_342_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_111_while_body_2083951*'
condR
lstm_111_while_cond_2083950*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations і
9lstm_111/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   П
+lstm_111/TensorArrayV2Stack/TensorListStackTensorListStacklstm_111/while:output:3Blstm_111/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0q
lstm_111/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_111/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_111/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_111/strided_slice_3StridedSlice4lstm_111/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_111/strided_slice_3/stack:output:0)lstm_111/strided_slice_3/stack_1:output:0)lstm_111/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskn
lstm_111/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_111/transpose_1	Transpose4lstm_111/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_111/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dd
lstm_111/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_112/ShapeShapelstm_111/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_112/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_112/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_112/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_112/strided_sliceStridedSlicelstm_112/Shape:output:0%lstm_112/strided_slice/stack:output:0'lstm_112/strided_slice/stack_1:output:0'lstm_112/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_112/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ј
lstm_112/zeros/packedPacklstm_112/strided_slice:output:0 lstm_112/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_112/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_112/zerosFilllstm_112/zeros/packed:output:0lstm_112/zeros/Const:output:0*
T0*'
_output_shapes
:         2[
lstm_112/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2њ
lstm_112/zeros_1/packedPacklstm_112/strided_slice:output:0"lstm_112/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_112/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_112/zeros_1Fill lstm_112/zeros_1/packed:output:0lstm_112/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2l
lstm_112/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_112/transpose	Transposelstm_111/transpose_1:y:0 lstm_112/transpose/perm:output:0*
T0*+
_output_shapes
:         dV
lstm_112/Shape_1Shapelstm_112/transpose:y:0*
T0*
_output_shapes
:h
lstm_112/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_112/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_112/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_112/strided_slice_1StridedSlicelstm_112/Shape_1:output:0'lstm_112/strided_slice_1/stack:output:0)lstm_112/strided_slice_1/stack_1:output:0)lstm_112/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_112/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_112/TensorArrayV2TensorListReserve-lstm_112/TensorArrayV2/element_shape:output:0!lstm_112/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_112/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ч
0lstm_112/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_112/transpose:y:0Glstm_112/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_112/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_112/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_112/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_112/strided_slice_2StridedSlicelstm_112/transpose:y:0'lstm_112/strided_slice_2/stack:output:0)lstm_112/strided_slice_2/stack_1:output:0)lstm_112/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskБ
,lstm_112/lstm_cell_343/MatMul/ReadVariableOpReadVariableOp5lstm_112_lstm_cell_343_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0│
lstm_112/lstm_cell_343/MatMulMatMul!lstm_112/strided_slice_2:output:04lstm_112/lstm_cell_343/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Д
.lstm_112/lstm_cell_343/MatMul_1/ReadVariableOpReadVariableOp7lstm_112_lstm_cell_343_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0Г
lstm_112/lstm_cell_343/MatMul_1MatMullstm_112/zeros:output:06lstm_112/lstm_cell_343/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ф
lstm_112/lstm_cell_343/addAddV2'lstm_112/lstm_cell_343/MatMul:product:0)lstm_112/lstm_cell_343/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚А
-lstm_112/lstm_cell_343/BiasAdd/ReadVariableOpReadVariableOp6lstm_112_lstm_cell_343_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0│
lstm_112/lstm_cell_343/BiasAddBiasAddlstm_112/lstm_cell_343/add:z:05lstm_112/lstm_cell_343/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚h
&lstm_112/lstm_cell_343/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_112/lstm_cell_343/splitSplit/lstm_112/lstm_cell_343/split/split_dim:output:0'lstm_112/lstm_cell_343/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitѓ
lstm_112/lstm_cell_343/SigmoidSigmoid%lstm_112/lstm_cell_343/split:output:0*
T0*'
_output_shapes
:         2ё
 lstm_112/lstm_cell_343/Sigmoid_1Sigmoid%lstm_112/lstm_cell_343/split:output:1*
T0*'
_output_shapes
:         2ћ
lstm_112/lstm_cell_343/mulMul$lstm_112/lstm_cell_343/Sigmoid_1:y:0lstm_112/zeros_1:output:0*
T0*'
_output_shapes
:         2|
lstm_112/lstm_cell_343/ReluRelu%lstm_112/lstm_cell_343/split:output:2*
T0*'
_output_shapes
:         2ц
lstm_112/lstm_cell_343/mul_1Mul"lstm_112/lstm_cell_343/Sigmoid:y:0)lstm_112/lstm_cell_343/Relu:activations:0*
T0*'
_output_shapes
:         2Ў
lstm_112/lstm_cell_343/add_1AddV2lstm_112/lstm_cell_343/mul:z:0 lstm_112/lstm_cell_343/mul_1:z:0*
T0*'
_output_shapes
:         2ё
 lstm_112/lstm_cell_343/Sigmoid_2Sigmoid%lstm_112/lstm_cell_343/split:output:3*
T0*'
_output_shapes
:         2y
lstm_112/lstm_cell_343/Relu_1Relu lstm_112/lstm_cell_343/add_1:z:0*
T0*'
_output_shapes
:         2е
lstm_112/lstm_cell_343/mul_2Mul$lstm_112/lstm_cell_343/Sigmoid_2:y:0+lstm_112/lstm_cell_343/Relu_1:activations:0*
T0*'
_output_shapes
:         2w
&lstm_112/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
lstm_112/TensorArrayV2_1TensorListReserve/lstm_112/TensorArrayV2_1/element_shape:output:0!lstm_112/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_112/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_112/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_112/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_112/whileWhile$lstm_112/while/loop_counter:output:0*lstm_112/while/maximum_iterations:output:0lstm_112/time:output:0!lstm_112/TensorArrayV2_1:handle:0lstm_112/zeros:output:0lstm_112/zeros_1:output:0!lstm_112/strided_slice_1:output:0@lstm_112/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_112_lstm_cell_343_matmul_readvariableop_resource7lstm_112_lstm_cell_343_matmul_1_readvariableop_resource6lstm_112_lstm_cell_343_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_112_while_body_2084090*'
condR
lstm_112_while_cond_2084089*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations і
9lstm_112/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   П
+lstm_112/TensorArrayV2Stack/TensorListStackTensorListStacklstm_112/while:output:3Blstm_112/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0q
lstm_112/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_112/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_112/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_112/strided_slice_3StridedSlice4lstm_112/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_112/strided_slice_3/stack:output:0)lstm_112/strided_slice_3/stack_1:output:0)lstm_112/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskn
lstm_112/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_112/transpose_1	Transpose4lstm_112/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_112/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2d
lstm_112/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_113/ShapeShapelstm_112/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_113/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_113/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_113/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_113/strided_sliceStridedSlicelstm_113/Shape:output:0%lstm_113/strided_slice/stack:output:0'lstm_113/strided_slice/stack_1:output:0'lstm_113/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_113/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ј
lstm_113/zeros/packedPacklstm_113/strided_slice:output:0 lstm_113/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_113/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_113/zerosFilllstm_113/zeros/packed:output:0lstm_113/zeros/Const:output:0*
T0*'
_output_shapes
:         
[
lstm_113/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
њ
lstm_113/zeros_1/packedPacklstm_113/strided_slice:output:0"lstm_113/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_113/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_113/zeros_1Fill lstm_113/zeros_1/packed:output:0lstm_113/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
l
lstm_113/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_113/transpose	Transposelstm_112/transpose_1:y:0 lstm_113/transpose/perm:output:0*
T0*+
_output_shapes
:         2V
lstm_113/Shape_1Shapelstm_113/transpose:y:0*
T0*
_output_shapes
:h
lstm_113/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_113/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_113/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_113/strided_slice_1StridedSlicelstm_113/Shape_1:output:0'lstm_113/strided_slice_1/stack:output:0)lstm_113/strided_slice_1/stack_1:output:0)lstm_113/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_113/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_113/TensorArrayV2TensorListReserve-lstm_113/TensorArrayV2/element_shape:output:0!lstm_113/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_113/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ч
0lstm_113/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_113/transpose:y:0Glstm_113/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_113/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_113/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_113/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_113/strided_slice_2StridedSlicelstm_113/transpose:y:0'lstm_113/strided_slice_2/stack:output:0)lstm_113/strided_slice_2/stack_1:output:0)lstm_113/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskб
,lstm_113/lstm_cell_344/MatMul/ReadVariableOpReadVariableOp5lstm_113_lstm_cell_344_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▓
lstm_113/lstm_cell_344/MatMulMatMul!lstm_113/strided_slice_2:output:04lstm_113/lstm_cell_344/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (д
.lstm_113/lstm_cell_344/MatMul_1/ReadVariableOpReadVariableOp7lstm_113_lstm_cell_344_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0г
lstm_113/lstm_cell_344/MatMul_1MatMullstm_113/zeros:output:06lstm_113/lstm_cell_344/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Е
lstm_113/lstm_cell_344/addAddV2'lstm_113/lstm_cell_344/MatMul:product:0)lstm_113/lstm_cell_344/MatMul_1:product:0*
T0*'
_output_shapes
:         (а
-lstm_113/lstm_cell_344/BiasAdd/ReadVariableOpReadVariableOp6lstm_113_lstm_cell_344_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▓
lstm_113/lstm_cell_344/BiasAddBiasAddlstm_113/lstm_cell_344/add:z:05lstm_113/lstm_cell_344/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (h
&lstm_113/lstm_cell_344/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_113/lstm_cell_344/splitSplit/lstm_113/lstm_cell_344/split/split_dim:output:0'lstm_113/lstm_cell_344/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitѓ
lstm_113/lstm_cell_344/SigmoidSigmoid%lstm_113/lstm_cell_344/split:output:0*
T0*'
_output_shapes
:         
ё
 lstm_113/lstm_cell_344/Sigmoid_1Sigmoid%lstm_113/lstm_cell_344/split:output:1*
T0*'
_output_shapes
:         
ћ
lstm_113/lstm_cell_344/mulMul$lstm_113/lstm_cell_344/Sigmoid_1:y:0lstm_113/zeros_1:output:0*
T0*'
_output_shapes
:         
|
lstm_113/lstm_cell_344/ReluRelu%lstm_113/lstm_cell_344/split:output:2*
T0*'
_output_shapes
:         
ц
lstm_113/lstm_cell_344/mul_1Mul"lstm_113/lstm_cell_344/Sigmoid:y:0)lstm_113/lstm_cell_344/Relu:activations:0*
T0*'
_output_shapes
:         
Ў
lstm_113/lstm_cell_344/add_1AddV2lstm_113/lstm_cell_344/mul:z:0 lstm_113/lstm_cell_344/mul_1:z:0*
T0*'
_output_shapes
:         
ё
 lstm_113/lstm_cell_344/Sigmoid_2Sigmoid%lstm_113/lstm_cell_344/split:output:3*
T0*'
_output_shapes
:         
y
lstm_113/lstm_cell_344/Relu_1Relu lstm_113/lstm_cell_344/add_1:z:0*
T0*'
_output_shapes
:         
е
lstm_113/lstm_cell_344/mul_2Mul$lstm_113/lstm_cell_344/Sigmoid_2:y:0+lstm_113/lstm_cell_344/Relu_1:activations:0*
T0*'
_output_shapes
:         
w
&lstm_113/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   М
lstm_113/TensorArrayV2_1TensorListReserve/lstm_113/TensorArrayV2_1/element_shape:output:0!lstm_113/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_113/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_113/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_113/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_113/whileWhile$lstm_113/while/loop_counter:output:0*lstm_113/while/maximum_iterations:output:0lstm_113/time:output:0!lstm_113/TensorArrayV2_1:handle:0lstm_113/zeros:output:0lstm_113/zeros_1:output:0!lstm_113/strided_slice_1:output:0@lstm_113/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_113_lstm_cell_344_matmul_readvariableop_resource7lstm_113_lstm_cell_344_matmul_1_readvariableop_resource6lstm_113_lstm_cell_344_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_113_while_body_2084229*'
condR
lstm_113_while_cond_2084228*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations і
9lstm_113/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   П
+lstm_113/TensorArrayV2Stack/TensorListStackTensorListStacklstm_113/while:output:3Blstm_113/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0q
lstm_113/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_113/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_113/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_113/strided_slice_3StridedSlice4lstm_113/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_113/strided_slice_3/stack:output:0)lstm_113/strided_slice_3/stack_1:output:0)lstm_113/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskn
lstm_113/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_113/transpose_1	Transpose4lstm_113/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_113/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
d
lstm_113/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    є
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0ќ
dense_37/MatMulMatMul!lstm_113/strided_slice_3:output:0&dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_37/BiasAddBiasAdddense_37/MatMul:product:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_37/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         В
NoOpNoOp ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp.^lstm_111/lstm_cell_342/BiasAdd/ReadVariableOp-^lstm_111/lstm_cell_342/MatMul/ReadVariableOp/^lstm_111/lstm_cell_342/MatMul_1/ReadVariableOp^lstm_111/while.^lstm_112/lstm_cell_343/BiasAdd/ReadVariableOp-^lstm_112/lstm_cell_343/MatMul/ReadVariableOp/^lstm_112/lstm_cell_343/MatMul_1/ReadVariableOp^lstm_112/while.^lstm_113/lstm_cell_344/BiasAdd/ReadVariableOp-^lstm_113/lstm_cell_344/MatMul/ReadVariableOp/^lstm_113/lstm_cell_344/MatMul_1/ReadVariableOp^lstm_113/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp2^
-lstm_111/lstm_cell_342/BiasAdd/ReadVariableOp-lstm_111/lstm_cell_342/BiasAdd/ReadVariableOp2\
,lstm_111/lstm_cell_342/MatMul/ReadVariableOp,lstm_111/lstm_cell_342/MatMul/ReadVariableOp2`
.lstm_111/lstm_cell_342/MatMul_1/ReadVariableOp.lstm_111/lstm_cell_342/MatMul_1/ReadVariableOp2 
lstm_111/whilelstm_111/while2^
-lstm_112/lstm_cell_343/BiasAdd/ReadVariableOp-lstm_112/lstm_cell_343/BiasAdd/ReadVariableOp2\
,lstm_112/lstm_cell_343/MatMul/ReadVariableOp,lstm_112/lstm_cell_343/MatMul/ReadVariableOp2`
.lstm_112/lstm_cell_343/MatMul_1/ReadVariableOp.lstm_112/lstm_cell_343/MatMul_1/ReadVariableOp2 
lstm_112/whilelstm_112/while2^
-lstm_113/lstm_cell_344/BiasAdd/ReadVariableOp-lstm_113/lstm_cell_344/BiasAdd/ReadVariableOp2\
,lstm_113/lstm_cell_344/MatMul/ReadVariableOp,lstm_113/lstm_cell_344/MatMul/ReadVariableOp2`
.lstm_113/lstm_cell_344/MatMul_1/ReadVariableOp.lstm_113/lstm_cell_344/MatMul_1/ReadVariableOp2 
lstm_113/whilelstm_113/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
РJ
Б
E__inference_lstm_112_layer_call_and_return_conditional_losses_2085408

inputs?
,lstm_cell_343_matmul_readvariableop_resource:	d╚A
.lstm_cell_343_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_343_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_343/BiasAdd/ReadVariableOpб#lstm_cell_343/MatMul/ReadVariableOpб%lstm_cell_343/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_343/MatMul/ReadVariableOpReadVariableOp,lstm_cell_343_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_343/MatMulMatMulstrided_slice_2:output:0+lstm_cell_343/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_343/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_343_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_343/MatMul_1MatMulzeros:output:0-lstm_cell_343/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_343/addAddV2lstm_cell_343/MatMul:product:0 lstm_cell_343/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_343/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_343_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_343/BiasAddBiasAddlstm_cell_343/add:z:0,lstm_cell_343/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_343/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_343/splitSplit&lstm_cell_343/split/split_dim:output:0lstm_cell_343/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_343/SigmoidSigmoidlstm_cell_343/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_343/Sigmoid_1Sigmoidlstm_cell_343/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_343/mulMullstm_cell_343/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_343/ReluRelulstm_cell_343/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_343/mul_1Mullstm_cell_343/Sigmoid:y:0 lstm_cell_343/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_343/add_1AddV2lstm_cell_343/mul:z:0lstm_cell_343/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_343/Sigmoid_2Sigmoidlstm_cell_343/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_343/Relu_1Relulstm_cell_343/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_343/mul_2Mullstm_cell_343/Sigmoid_2:y:0"lstm_cell_343/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_343_matmul_readvariableop_resource.lstm_cell_343_matmul_1_readvariableop_resource-lstm_cell_343_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2085324*
condR
while_cond_2085323*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         2├
NoOpNoOp%^lstm_cell_343/BiasAdd/ReadVariableOp$^lstm_cell_343/MatMul/ReadVariableOp&^lstm_cell_343/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_343/BiasAdd/ReadVariableOp$lstm_cell_343/BiasAdd/ReadVariableOp2J
#lstm_cell_343/MatMul/ReadVariableOp#lstm_cell_343/MatMul/ReadVariableOp2N
%lstm_cell_343/MatMul_1/ReadVariableOp%lstm_cell_343/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
║
╚
while_cond_2082781
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2082781___redundant_placeholder05
1while_while_cond_2082781___redundant_placeholder15
1while_while_cond_2082781___redundant_placeholder25
1while_while_cond_2082781___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
Ј#
ы
while_body_2081773
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_343_2081797_0:	d╚0
while_lstm_cell_343_2081799_0:	2╚,
while_lstm_cell_343_2081801_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_343_2081797:	d╚.
while_lstm_cell_343_2081799:	2╚*
while_lstm_cell_343_2081801:	╚ѕб+while/lstm_cell_343/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0╝
+while/lstm_cell_343/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_343_2081797_0while_lstm_cell_343_2081799_0while_lstm_cell_343_2081801_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_343_layer_call_and_return_conditional_losses_2081714П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_343/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_343/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         2Љ
while/Identity_5Identity4while/lstm_cell_343/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         2z

while/NoOpNoOp,^while/lstm_cell_343/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_343_2081797while_lstm_cell_343_2081797_0"<
while_lstm_cell_343_2081799while_lstm_cell_343_2081799_0"<
while_lstm_cell_343_2081801while_lstm_cell_343_2081801_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2Z
+while/lstm_cell_343/StatefulPartitionedCall+while/lstm_cell_343/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
РJ
Б
E__inference_lstm_111_layer_call_and_return_conditional_losses_2083196

inputs?
,lstm_cell_342_matmul_readvariableop_resource:	љA
.lstm_cell_342_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_342_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_342/BiasAdd/ReadVariableOpб#lstm_cell_342/MatMul/ReadVariableOpб%lstm_cell_342/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_342/MatMul/ReadVariableOpReadVariableOp,lstm_cell_342_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_342/MatMulMatMulstrided_slice_2:output:0+lstm_cell_342/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_342/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_342_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_342/MatMul_1MatMulzeros:output:0-lstm_cell_342/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_342/addAddV2lstm_cell_342/MatMul:product:0 lstm_cell_342/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_342/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_342_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_342/BiasAddBiasAddlstm_cell_342/add:z:0,lstm_cell_342/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_342/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_342/splitSplit&lstm_cell_342/split/split_dim:output:0lstm_cell_342/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_342/SigmoidSigmoidlstm_cell_342/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_342/Sigmoid_1Sigmoidlstm_cell_342/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_342/mulMullstm_cell_342/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_342/ReluRelulstm_cell_342/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_342/mul_1Mullstm_cell_342/Sigmoid:y:0 lstm_cell_342/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_342/add_1AddV2lstm_cell_342/mul:z:0lstm_cell_342/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_342/Sigmoid_2Sigmoidlstm_cell_342/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_342/Relu_1Relulstm_cell_342/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_342/mul_2Mullstm_cell_342/Sigmoid_2:y:0"lstm_cell_342/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_342_matmul_readvariableop_resource.lstm_cell_342_matmul_1_readvariableop_resource-lstm_cell_342_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2083112*
condR
while_cond_2083111*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         d├
NoOpNoOp%^lstm_cell_342/BiasAdd/ReadVariableOp$^lstm_cell_342/MatMul/ReadVariableOp&^lstm_cell_342/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_342/BiasAdd/ReadVariableOp$lstm_cell_342/BiasAdd/ReadVariableOp2J
#lstm_cell_342/MatMul/ReadVariableOp#lstm_cell_342/MatMul/ReadVariableOp2N
%lstm_cell_342/MatMul_1/ReadVariableOp%lstm_cell_342/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Э
┤
*__inference_lstm_113_layer_call_fn_2085595

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identityѕбStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_113_layer_call_and_return_conditional_losses_2082866o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
РJ
Б
E__inference_lstm_112_layer_call_and_return_conditional_losses_2082500

inputs?
,lstm_cell_343_matmul_readvariableop_resource:	d╚A
.lstm_cell_343_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_343_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_343/BiasAdd/ReadVariableOpб#lstm_cell_343/MatMul/ReadVariableOpб%lstm_cell_343/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_343/MatMul/ReadVariableOpReadVariableOp,lstm_cell_343_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_343/MatMulMatMulstrided_slice_2:output:0+lstm_cell_343/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_343/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_343_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_343/MatMul_1MatMulzeros:output:0-lstm_cell_343/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_343/addAddV2lstm_cell_343/MatMul:product:0 lstm_cell_343/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_343/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_343_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_343/BiasAddBiasAddlstm_cell_343/add:z:0,lstm_cell_343/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_343/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_343/splitSplit&lstm_cell_343/split/split_dim:output:0lstm_cell_343/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_343/SigmoidSigmoidlstm_cell_343/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_343/Sigmoid_1Sigmoidlstm_cell_343/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_343/mulMullstm_cell_343/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_343/ReluRelulstm_cell_343/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_343/mul_1Mullstm_cell_343/Sigmoid:y:0 lstm_cell_343/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_343/add_1AddV2lstm_cell_343/mul:z:0lstm_cell_343/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_343/Sigmoid_2Sigmoidlstm_cell_343/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_343/Relu_1Relulstm_cell_343/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_343/mul_2Mullstm_cell_343/Sigmoid_2:y:0"lstm_cell_343/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_343_matmul_readvariableop_resource.lstm_cell_343_matmul_1_readvariableop_resource-lstm_cell_343_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2082416*
condR
while_cond_2082415*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         2├
NoOpNoOp%^lstm_cell_343/BiasAdd/ReadVariableOp$^lstm_cell_343/MatMul/ReadVariableOp&^lstm_cell_343/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_343/BiasAdd/ReadVariableOp$lstm_cell_343/BiasAdd/ReadVariableOp2J
#lstm_cell_343/MatMul/ReadVariableOp#lstm_cell_343/MatMul/ReadVariableOp2N
%lstm_cell_343/MatMul_1/ReadVariableOp%lstm_cell_343/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
┐
ћ
)sequential_37_lstm_113_while_cond_2081060J
Fsequential_37_lstm_113_while_sequential_37_lstm_113_while_loop_counterP
Lsequential_37_lstm_113_while_sequential_37_lstm_113_while_maximum_iterations,
(sequential_37_lstm_113_while_placeholder.
*sequential_37_lstm_113_while_placeholder_1.
*sequential_37_lstm_113_while_placeholder_2.
*sequential_37_lstm_113_while_placeholder_3L
Hsequential_37_lstm_113_while_less_sequential_37_lstm_113_strided_slice_1c
_sequential_37_lstm_113_while_sequential_37_lstm_113_while_cond_2081060___redundant_placeholder0c
_sequential_37_lstm_113_while_sequential_37_lstm_113_while_cond_2081060___redundant_placeholder1c
_sequential_37_lstm_113_while_sequential_37_lstm_113_while_cond_2081060___redundant_placeholder2c
_sequential_37_lstm_113_while_sequential_37_lstm_113_while_cond_2081060___redundant_placeholder3)
%sequential_37_lstm_113_while_identity
Й
!sequential_37/lstm_113/while/LessLess(sequential_37_lstm_113_while_placeholderHsequential_37_lstm_113_while_less_sequential_37_lstm_113_strided_slice_1*
T0*
_output_shapes
: y
%sequential_37/lstm_113/while/IdentityIdentity%sequential_37/lstm_113/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_37_lstm_113_while_identity.sequential_37/lstm_113/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
─8
н
while_body_2082566
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_344_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_344_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_344_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_344_matmul_readvariableop_resource:2(F
4while_lstm_cell_344_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_344_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_344/BiasAdd/ReadVariableOpб)while/lstm_cell_344/MatMul/ReadVariableOpб+while/lstm_cell_344/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_344/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_344_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_344/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_344/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_344/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_344_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_344/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_344/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_344/addAddV2$while/lstm_cell_344/MatMul:product:0&while/lstm_cell_344/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_344/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_344_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_344/BiasAddBiasAddwhile/lstm_cell_344/add:z:02while/lstm_cell_344/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_344/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_344/splitSplit,while/lstm_cell_344/split/split_dim:output:0$while/lstm_cell_344/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_344/SigmoidSigmoid"while/lstm_cell_344/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_344/Sigmoid_1Sigmoid"while/lstm_cell_344/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_344/mulMul!while/lstm_cell_344/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_344/ReluRelu"while/lstm_cell_344/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_344/mul_1Mulwhile/lstm_cell_344/Sigmoid:y:0&while/lstm_cell_344/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_344/add_1AddV2while/lstm_cell_344/mul:z:0while/lstm_cell_344/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_344/Sigmoid_2Sigmoid"while/lstm_cell_344/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_344/Relu_1Reluwhile/lstm_cell_344/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_344/mul_2Mul!while/lstm_cell_344/Sigmoid_2:y:0(while/lstm_cell_344/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_344/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_344/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_344/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_344/BiasAdd/ReadVariableOp*^while/lstm_cell_344/MatMul/ReadVariableOp,^while/lstm_cell_344/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_344_biasadd_readvariableop_resource5while_lstm_cell_344_biasadd_readvariableop_resource_0"n
4while_lstm_cell_344_matmul_1_readvariableop_resource6while_lstm_cell_344_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_344_matmul_readvariableop_resource4while_lstm_cell_344_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_344/BiasAdd/ReadVariableOp*while/lstm_cell_344/BiasAdd/ReadVariableOp2V
)while/lstm_cell_344/MatMul/ReadVariableOp)while/lstm_cell_344/MatMul/ReadVariableOp2Z
+while/lstm_cell_344/MatMul_1/ReadVariableOp+while/lstm_cell_344/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
љ
Х
*__inference_lstm_113_layer_call_fn_2085573
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identityѕбStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_113_layer_call_and_return_conditional_losses_2082192o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
О
є
J__inference_lstm_cell_343_layer_call_and_return_conditional_losses_2081568

inputs

states
states_11
matmul_readvariableop_resource:	d╚3
 matmul_1_readvariableop_resource:	2╚.
biasadd_readvariableop_resource:	╚
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╚s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         2Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:OK
'
_output_shapes
:         2
 
_user_specified_namestates:OK
'
_output_shapes
:         2
 
_user_specified_namestates
─8
н
while_body_2086083
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_344_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_344_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_344_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_344_matmul_readvariableop_resource:2(F
4while_lstm_cell_344_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_344_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_344/BiasAdd/ReadVariableOpб)while/lstm_cell_344/MatMul/ReadVariableOpб+while/lstm_cell_344/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_344/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_344_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_344/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_344/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_344/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_344_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_344/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_344/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_344/addAddV2$while/lstm_cell_344/MatMul:product:0&while/lstm_cell_344/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_344/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_344_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_344/BiasAddBiasAddwhile/lstm_cell_344/add:z:02while/lstm_cell_344/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_344/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_344/splitSplit,while/lstm_cell_344/split/split_dim:output:0$while/lstm_cell_344/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_344/SigmoidSigmoid"while/lstm_cell_344/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_344/Sigmoid_1Sigmoid"while/lstm_cell_344/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_344/mulMul!while/lstm_cell_344/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_344/ReluRelu"while/lstm_cell_344/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_344/mul_1Mulwhile/lstm_cell_344/Sigmoid:y:0&while/lstm_cell_344/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_344/add_1AddV2while/lstm_cell_344/mul:z:0while/lstm_cell_344/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_344/Sigmoid_2Sigmoid"while/lstm_cell_344/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_344/Relu_1Reluwhile/lstm_cell_344/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_344/mul_2Mul!while/lstm_cell_344/Sigmoid_2:y:0(while/lstm_cell_344/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_344/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_344/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_344/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_344/BiasAdd/ReadVariableOp*^while/lstm_cell_344/MatMul/ReadVariableOp,^while/lstm_cell_344/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_344_biasadd_readvariableop_resource5while_lstm_cell_344_biasadd_readvariableop_resource_0"n
4while_lstm_cell_344_matmul_1_readvariableop_resource6while_lstm_cell_344_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_344_matmul_readvariableop_resource4while_lstm_cell_344_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_344/BiasAdd/ReadVariableOp*while/lstm_cell_344/BiasAdd/ReadVariableOp2V
)while/lstm_cell_344/MatMul/ReadVariableOp)while/lstm_cell_344/MatMul/ReadVariableOp2Z
+while/lstm_cell_344/MatMul_1/ReadVariableOp+while/lstm_cell_344/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_2085180
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2085180___redundant_placeholder05
1while_while_cond_2085180___redundant_placeholder15
1while_while_cond_2085180___redundant_placeholder25
1while_while_cond_2085180___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_2081581
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2081581___redundant_placeholder05
1while_while_cond_2081581___redundant_placeholder15
1while_while_cond_2081581___redundant_placeholder25
1while_while_cond_2081581___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
┐
ћ
)sequential_37_lstm_111_while_cond_2080782J
Fsequential_37_lstm_111_while_sequential_37_lstm_111_while_loop_counterP
Lsequential_37_lstm_111_while_sequential_37_lstm_111_while_maximum_iterations,
(sequential_37_lstm_111_while_placeholder.
*sequential_37_lstm_111_while_placeholder_1.
*sequential_37_lstm_111_while_placeholder_2.
*sequential_37_lstm_111_while_placeholder_3L
Hsequential_37_lstm_111_while_less_sequential_37_lstm_111_strided_slice_1c
_sequential_37_lstm_111_while_sequential_37_lstm_111_while_cond_2080782___redundant_placeholder0c
_sequential_37_lstm_111_while_sequential_37_lstm_111_while_cond_2080782___redundant_placeholder1c
_sequential_37_lstm_111_while_sequential_37_lstm_111_while_cond_2080782___redundant_placeholder2c
_sequential_37_lstm_111_while_sequential_37_lstm_111_while_cond_2080782___redundant_placeholder3)
%sequential_37_lstm_111_while_identity
Й
!sequential_37/lstm_111/while/LessLess(sequential_37_lstm_111_while_placeholderHsequential_37_lstm_111_while_less_sequential_37_lstm_111_strided_slice_1*
T0*
_output_shapes
: y
%sequential_37/lstm_111/while/IdentityIdentity%sequential_37/lstm_111/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_37_lstm_111_while_identity.sequential_37/lstm_111/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
№
Э
/__inference_lstm_cell_342_layer_call_fn_2086203

inputs
states_0
states_1
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_342_layer_call_and_return_conditional_losses_2081218o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         d
"
_user_specified_name
states/0:QM
'
_output_shapes
:         d
"
_user_specified_name
states/1
ПJ
а
E__inference_lstm_113_layer_call_and_return_conditional_losses_2082650

inputs>
,lstm_cell_344_matmul_readvariableop_resource:2(@
.lstm_cell_344_matmul_1_readvariableop_resource:
(;
-lstm_cell_344_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_344/BiasAdd/ReadVariableOpб#lstm_cell_344/MatMul/ReadVariableOpб%lstm_cell_344/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_344/MatMul/ReadVariableOpReadVariableOp,lstm_cell_344_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_344/MatMulMatMulstrided_slice_2:output:0+lstm_cell_344/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_344/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_344_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_344/MatMul_1MatMulzeros:output:0-lstm_cell_344/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_344/addAddV2lstm_cell_344/MatMul:product:0 lstm_cell_344/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_344/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_344_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_344/BiasAddBiasAddlstm_cell_344/add:z:0,lstm_cell_344/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_344/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_344/splitSplit&lstm_cell_344/split/split_dim:output:0lstm_cell_344/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_344/SigmoidSigmoidlstm_cell_344/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_344/Sigmoid_1Sigmoidlstm_cell_344/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_344/mulMullstm_cell_344/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_344/ReluRelulstm_cell_344/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_344/mul_1Mullstm_cell_344/Sigmoid:y:0 lstm_cell_344/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_344/add_1AddV2lstm_cell_344/mul:z:0lstm_cell_344/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_344/Sigmoid_2Sigmoidlstm_cell_344/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_344/Relu_1Relulstm_cell_344/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_344/mul_2Mullstm_cell_344/Sigmoid_2:y:0"lstm_cell_344/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_344_matmul_readvariableop_resource.lstm_cell_344_matmul_1_readvariableop_resource-lstm_cell_344_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2082566*
condR
while_cond_2082565*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         
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
:         
├
NoOpNoOp%^lstm_cell_344/BiasAdd/ReadVariableOp$^lstm_cell_344/MatMul/ReadVariableOp&^lstm_cell_344/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_344/BiasAdd/ReadVariableOp$lstm_cell_344/BiasAdd/ReadVariableOp2J
#lstm_cell_344/MatMul/ReadVariableOp#lstm_cell_344/MatMul/ReadVariableOp2N
%lstm_cell_344/MatMul_1/ReadVariableOp%lstm_cell_344/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
и

Ч
lstm_113_while_cond_2084228.
*lstm_113_while_lstm_113_while_loop_counter4
0lstm_113_while_lstm_113_while_maximum_iterations
lstm_113_while_placeholder 
lstm_113_while_placeholder_1 
lstm_113_while_placeholder_2 
lstm_113_while_placeholder_30
,lstm_113_while_less_lstm_113_strided_slice_1G
Clstm_113_while_lstm_113_while_cond_2084228___redundant_placeholder0G
Clstm_113_while_lstm_113_while_cond_2084228___redundant_placeholder1G
Clstm_113_while_lstm_113_while_cond_2084228___redundant_placeholder2G
Clstm_113_while_lstm_113_while_cond_2084228___redundant_placeholder3
lstm_113_while_identity
є
lstm_113/while/LessLesslstm_113_while_placeholder,lstm_113_while_less_lstm_113_strided_slice_1*
T0*
_output_shapes
: ]
lstm_113/while/IdentityIdentitylstm_113/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_113_while_identity lstm_113/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
оS
и
)sequential_37_lstm_113_while_body_2081061J
Fsequential_37_lstm_113_while_sequential_37_lstm_113_while_loop_counterP
Lsequential_37_lstm_113_while_sequential_37_lstm_113_while_maximum_iterations,
(sequential_37_lstm_113_while_placeholder.
*sequential_37_lstm_113_while_placeholder_1.
*sequential_37_lstm_113_while_placeholder_2.
*sequential_37_lstm_113_while_placeholder_3I
Esequential_37_lstm_113_while_sequential_37_lstm_113_strided_slice_1_0є
Ђsequential_37_lstm_113_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_113_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_37_lstm_113_while_lstm_cell_344_matmul_readvariableop_resource_0:2(_
Msequential_37_lstm_113_while_lstm_cell_344_matmul_1_readvariableop_resource_0:
(Z
Lsequential_37_lstm_113_while_lstm_cell_344_biasadd_readvariableop_resource_0:()
%sequential_37_lstm_113_while_identity+
'sequential_37_lstm_113_while_identity_1+
'sequential_37_lstm_113_while_identity_2+
'sequential_37_lstm_113_while_identity_3+
'sequential_37_lstm_113_while_identity_4+
'sequential_37_lstm_113_while_identity_5G
Csequential_37_lstm_113_while_sequential_37_lstm_113_strided_slice_1Ѓ
sequential_37_lstm_113_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_113_tensorarrayunstack_tensorlistfromtensor[
Isequential_37_lstm_113_while_lstm_cell_344_matmul_readvariableop_resource:2(]
Ksequential_37_lstm_113_while_lstm_cell_344_matmul_1_readvariableop_resource:
(X
Jsequential_37_lstm_113_while_lstm_cell_344_biasadd_readvariableop_resource:(ѕбAsequential_37/lstm_113/while/lstm_cell_344/BiasAdd/ReadVariableOpб@sequential_37/lstm_113/while/lstm_cell_344/MatMul/ReadVariableOpбBsequential_37/lstm_113/while/lstm_cell_344/MatMul_1/ReadVariableOpЪ
Nsequential_37/lstm_113/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   џ
@sequential_37/lstm_113/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЂsequential_37_lstm_113_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_113_tensorarrayunstack_tensorlistfromtensor_0(sequential_37_lstm_113_while_placeholderWsequential_37/lstm_113/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╠
@sequential_37/lstm_113/while/lstm_cell_344/MatMul/ReadVariableOpReadVariableOpKsequential_37_lstm_113_while_lstm_cell_344_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ђ
1sequential_37/lstm_113/while/lstm_cell_344/MatMulMatMulGsequential_37/lstm_113/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_37/lstm_113/while/lstm_cell_344/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (л
Bsequential_37/lstm_113/while/lstm_cell_344/MatMul_1/ReadVariableOpReadVariableOpMsequential_37_lstm_113_while_lstm_cell_344_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0у
3sequential_37/lstm_113/while/lstm_cell_344/MatMul_1MatMul*sequential_37_lstm_113_while_placeholder_2Jsequential_37/lstm_113/while/lstm_cell_344/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (т
.sequential_37/lstm_113/while/lstm_cell_344/addAddV2;sequential_37/lstm_113/while/lstm_cell_344/MatMul:product:0=sequential_37/lstm_113/while/lstm_cell_344/MatMul_1:product:0*
T0*'
_output_shapes
:         (╩
Asequential_37/lstm_113/while/lstm_cell_344/BiasAdd/ReadVariableOpReadVariableOpLsequential_37_lstm_113_while_lstm_cell_344_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ь
2sequential_37/lstm_113/while/lstm_cell_344/BiasAddBiasAdd2sequential_37/lstm_113/while/lstm_cell_344/add:z:0Isequential_37/lstm_113/while/lstm_cell_344/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (|
:sequential_37/lstm_113/while/lstm_cell_344/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
0sequential_37/lstm_113/while/lstm_cell_344/splitSplitCsequential_37/lstm_113/while/lstm_cell_344/split/split_dim:output:0;sequential_37/lstm_113/while/lstm_cell_344/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitф
2sequential_37/lstm_113/while/lstm_cell_344/SigmoidSigmoid9sequential_37/lstm_113/while/lstm_cell_344/split:output:0*
T0*'
_output_shapes
:         
г
4sequential_37/lstm_113/while/lstm_cell_344/Sigmoid_1Sigmoid9sequential_37/lstm_113/while/lstm_cell_344/split:output:1*
T0*'
_output_shapes
:         
═
.sequential_37/lstm_113/while/lstm_cell_344/mulMul8sequential_37/lstm_113/while/lstm_cell_344/Sigmoid_1:y:0*sequential_37_lstm_113_while_placeholder_3*
T0*'
_output_shapes
:         
ц
/sequential_37/lstm_113/while/lstm_cell_344/ReluRelu9sequential_37/lstm_113/while/lstm_cell_344/split:output:2*
T0*'
_output_shapes
:         
Я
0sequential_37/lstm_113/while/lstm_cell_344/mul_1Mul6sequential_37/lstm_113/while/lstm_cell_344/Sigmoid:y:0=sequential_37/lstm_113/while/lstm_cell_344/Relu:activations:0*
T0*'
_output_shapes
:         
Н
0sequential_37/lstm_113/while/lstm_cell_344/add_1AddV22sequential_37/lstm_113/while/lstm_cell_344/mul:z:04sequential_37/lstm_113/while/lstm_cell_344/mul_1:z:0*
T0*'
_output_shapes
:         
г
4sequential_37/lstm_113/while/lstm_cell_344/Sigmoid_2Sigmoid9sequential_37/lstm_113/while/lstm_cell_344/split:output:3*
T0*'
_output_shapes
:         
А
1sequential_37/lstm_113/while/lstm_cell_344/Relu_1Relu4sequential_37/lstm_113/while/lstm_cell_344/add_1:z:0*
T0*'
_output_shapes
:         
С
0sequential_37/lstm_113/while/lstm_cell_344/mul_2Mul8sequential_37/lstm_113/while/lstm_cell_344/Sigmoid_2:y:0?sequential_37/lstm_113/while/lstm_cell_344/Relu_1:activations:0*
T0*'
_output_shapes
:         
б
Asequential_37/lstm_113/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_37_lstm_113_while_placeholder_1(sequential_37_lstm_113_while_placeholder4sequential_37/lstm_113/while/lstm_cell_344/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмd
"sequential_37/lstm_113/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :А
 sequential_37/lstm_113/while/addAddV2(sequential_37_lstm_113_while_placeholder+sequential_37/lstm_113/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_37/lstm_113/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :├
"sequential_37/lstm_113/while/add_1AddV2Fsequential_37_lstm_113_while_sequential_37_lstm_113_while_loop_counter-sequential_37/lstm_113/while/add_1/y:output:0*
T0*
_output_shapes
: ъ
%sequential_37/lstm_113/while/IdentityIdentity&sequential_37/lstm_113/while/add_1:z:0"^sequential_37/lstm_113/while/NoOp*
T0*
_output_shapes
: к
'sequential_37/lstm_113/while/Identity_1IdentityLsequential_37_lstm_113_while_sequential_37_lstm_113_while_maximum_iterations"^sequential_37/lstm_113/while/NoOp*
T0*
_output_shapes
: ъ
'sequential_37/lstm_113/while/Identity_2Identity$sequential_37/lstm_113/while/add:z:0"^sequential_37/lstm_113/while/NoOp*
T0*
_output_shapes
: ╦
'sequential_37/lstm_113/while/Identity_3IdentityQsequential_37/lstm_113/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_37/lstm_113/while/NoOp*
T0*
_output_shapes
: ┐
'sequential_37/lstm_113/while/Identity_4Identity4sequential_37/lstm_113/while/lstm_cell_344/mul_2:z:0"^sequential_37/lstm_113/while/NoOp*
T0*'
_output_shapes
:         
┐
'sequential_37/lstm_113/while/Identity_5Identity4sequential_37/lstm_113/while/lstm_cell_344/add_1:z:0"^sequential_37/lstm_113/while/NoOp*
T0*'
_output_shapes
:         
»
!sequential_37/lstm_113/while/NoOpNoOpB^sequential_37/lstm_113/while/lstm_cell_344/BiasAdd/ReadVariableOpA^sequential_37/lstm_113/while/lstm_cell_344/MatMul/ReadVariableOpC^sequential_37/lstm_113/while/lstm_cell_344/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_37_lstm_113_while_identity.sequential_37/lstm_113/while/Identity:output:0"[
'sequential_37_lstm_113_while_identity_10sequential_37/lstm_113/while/Identity_1:output:0"[
'sequential_37_lstm_113_while_identity_20sequential_37/lstm_113/while/Identity_2:output:0"[
'sequential_37_lstm_113_while_identity_30sequential_37/lstm_113/while/Identity_3:output:0"[
'sequential_37_lstm_113_while_identity_40sequential_37/lstm_113/while/Identity_4:output:0"[
'sequential_37_lstm_113_while_identity_50sequential_37/lstm_113/while/Identity_5:output:0"џ
Jsequential_37_lstm_113_while_lstm_cell_344_biasadd_readvariableop_resourceLsequential_37_lstm_113_while_lstm_cell_344_biasadd_readvariableop_resource_0"ю
Ksequential_37_lstm_113_while_lstm_cell_344_matmul_1_readvariableop_resourceMsequential_37_lstm_113_while_lstm_cell_344_matmul_1_readvariableop_resource_0"ў
Isequential_37_lstm_113_while_lstm_cell_344_matmul_readvariableop_resourceKsequential_37_lstm_113_while_lstm_cell_344_matmul_readvariableop_resource_0"ї
Csequential_37_lstm_113_while_sequential_37_lstm_113_strided_slice_1Esequential_37_lstm_113_while_sequential_37_lstm_113_strided_slice_1_0"Ё
sequential_37_lstm_113_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_113_tensorarrayunstack_tensorlistfromtensorЂsequential_37_lstm_113_while_tensorarrayv2read_tensorlistgetitem_sequential_37_lstm_113_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2є
Asequential_37/lstm_113/while/lstm_cell_344/BiasAdd/ReadVariableOpAsequential_37/lstm_113/while/lstm_cell_344/BiasAdd/ReadVariableOp2ё
@sequential_37/lstm_113/while/lstm_cell_344/MatMul/ReadVariableOp@sequential_37/lstm_113/while/lstm_cell_344/MatMul/ReadVariableOp2ѕ
Bsequential_37/lstm_113/while/lstm_cell_344/MatMul_1/ReadVariableOpBsequential_37/lstm_113/while/lstm_cell_344/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
Л8
┌
while_body_2083112
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_342_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_342_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_342_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_342_matmul_readvariableop_resource:	љG
4while_lstm_cell_342_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_342_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_342/BiasAdd/ReadVariableOpб)while/lstm_cell_342/MatMul/ReadVariableOpб+while/lstm_cell_342/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_342/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_342_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_342/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_342/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_342/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_342_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_342/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_342/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_342/addAddV2$while/lstm_cell_342/MatMul:product:0&while/lstm_cell_342/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_342/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_342_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_342/BiasAddBiasAddwhile/lstm_cell_342/add:z:02while/lstm_cell_342/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_342/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_342/splitSplit,while/lstm_cell_342/split/split_dim:output:0$while/lstm_cell_342/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_342/SigmoidSigmoid"while/lstm_cell_342/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_342/Sigmoid_1Sigmoid"while/lstm_cell_342/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_342/mulMul!while/lstm_cell_342/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_342/ReluRelu"while/lstm_cell_342/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_342/mul_1Mulwhile/lstm_cell_342/Sigmoid:y:0&while/lstm_cell_342/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_342/add_1AddV2while/lstm_cell_342/mul:z:0while/lstm_cell_342/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_342/Sigmoid_2Sigmoid"while/lstm_cell_342/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_342/Relu_1Reluwhile/lstm_cell_342/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_342/mul_2Mul!while/lstm_cell_342/Sigmoid_2:y:0(while/lstm_cell_342/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_342/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_342/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_342/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_342/BiasAdd/ReadVariableOp*^while/lstm_cell_342/MatMul/ReadVariableOp,^while/lstm_cell_342/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_342_biasadd_readvariableop_resource5while_lstm_cell_342_biasadd_readvariableop_resource_0"n
4while_lstm_cell_342_matmul_1_readvariableop_resource6while_lstm_cell_342_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_342_matmul_readvariableop_resource4while_lstm_cell_342_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_342/BiasAdd/ReadVariableOp*while/lstm_cell_342/BiasAdd/ReadVariableOp2V
)while/lstm_cell_342/MatMul/ReadVariableOp)while/lstm_cell_342/MatMul/ReadVariableOp2Z
+while/lstm_cell_342/MatMul_1/ReadVariableOp+while/lstm_cell_342/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
АC
Щ

lstm_111_while_body_2083524.
*lstm_111_while_lstm_111_while_loop_counter4
0lstm_111_while_lstm_111_while_maximum_iterations
lstm_111_while_placeholder 
lstm_111_while_placeholder_1 
lstm_111_while_placeholder_2 
lstm_111_while_placeholder_3-
)lstm_111_while_lstm_111_strided_slice_1_0i
elstm_111_while_tensorarrayv2read_tensorlistgetitem_lstm_111_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_111_while_lstm_cell_342_matmul_readvariableop_resource_0:	љR
?lstm_111_while_lstm_cell_342_matmul_1_readvariableop_resource_0:	dљM
>lstm_111_while_lstm_cell_342_biasadd_readvariableop_resource_0:	љ
lstm_111_while_identity
lstm_111_while_identity_1
lstm_111_while_identity_2
lstm_111_while_identity_3
lstm_111_while_identity_4
lstm_111_while_identity_5+
'lstm_111_while_lstm_111_strided_slice_1g
clstm_111_while_tensorarrayv2read_tensorlistgetitem_lstm_111_tensorarrayunstack_tensorlistfromtensorN
;lstm_111_while_lstm_cell_342_matmul_readvariableop_resource:	љP
=lstm_111_while_lstm_cell_342_matmul_1_readvariableop_resource:	dљK
<lstm_111_while_lstm_cell_342_biasadd_readvariableop_resource:	љѕб3lstm_111/while/lstm_cell_342/BiasAdd/ReadVariableOpб2lstm_111/while/lstm_cell_342/MatMul/ReadVariableOpб4lstm_111/while/lstm_cell_342/MatMul_1/ReadVariableOpЉ
@lstm_111/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       М
2lstm_111/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_111_while_tensorarrayv2read_tensorlistgetitem_lstm_111_tensorarrayunstack_tensorlistfromtensor_0lstm_111_while_placeholderIlstm_111/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0▒
2lstm_111/while/lstm_cell_342/MatMul/ReadVariableOpReadVariableOp=lstm_111_while_lstm_cell_342_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0О
#lstm_111/while/lstm_cell_342/MatMulMatMul9lstm_111/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_111/while/lstm_cell_342/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љх
4lstm_111/while/lstm_cell_342/MatMul_1/ReadVariableOpReadVariableOp?lstm_111_while_lstm_cell_342_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Й
%lstm_111/while/lstm_cell_342/MatMul_1MatMullstm_111_while_placeholder_2<lstm_111/while/lstm_cell_342/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ╝
 lstm_111/while/lstm_cell_342/addAddV2-lstm_111/while/lstm_cell_342/MatMul:product:0/lstm_111/while/lstm_cell_342/MatMul_1:product:0*
T0*(
_output_shapes
:         љ»
3lstm_111/while/lstm_cell_342/BiasAdd/ReadVariableOpReadVariableOp>lstm_111_while_lstm_cell_342_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┼
$lstm_111/while/lstm_cell_342/BiasAddBiasAdd$lstm_111/while/lstm_cell_342/add:z:0;lstm_111/while/lstm_cell_342/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љn
,lstm_111/while/lstm_cell_342/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_111/while/lstm_cell_342/splitSplit5lstm_111/while/lstm_cell_342/split/split_dim:output:0-lstm_111/while/lstm_cell_342/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitј
$lstm_111/while/lstm_cell_342/SigmoidSigmoid+lstm_111/while/lstm_cell_342/split:output:0*
T0*'
_output_shapes
:         dљ
&lstm_111/while/lstm_cell_342/Sigmoid_1Sigmoid+lstm_111/while/lstm_cell_342/split:output:1*
T0*'
_output_shapes
:         dБ
 lstm_111/while/lstm_cell_342/mulMul*lstm_111/while/lstm_cell_342/Sigmoid_1:y:0lstm_111_while_placeholder_3*
T0*'
_output_shapes
:         dѕ
!lstm_111/while/lstm_cell_342/ReluRelu+lstm_111/while/lstm_cell_342/split:output:2*
T0*'
_output_shapes
:         dХ
"lstm_111/while/lstm_cell_342/mul_1Mul(lstm_111/while/lstm_cell_342/Sigmoid:y:0/lstm_111/while/lstm_cell_342/Relu:activations:0*
T0*'
_output_shapes
:         dФ
"lstm_111/while/lstm_cell_342/add_1AddV2$lstm_111/while/lstm_cell_342/mul:z:0&lstm_111/while/lstm_cell_342/mul_1:z:0*
T0*'
_output_shapes
:         dљ
&lstm_111/while/lstm_cell_342/Sigmoid_2Sigmoid+lstm_111/while/lstm_cell_342/split:output:3*
T0*'
_output_shapes
:         dЁ
#lstm_111/while/lstm_cell_342/Relu_1Relu&lstm_111/while/lstm_cell_342/add_1:z:0*
T0*'
_output_shapes
:         d║
"lstm_111/while/lstm_cell_342/mul_2Mul*lstm_111/while/lstm_cell_342/Sigmoid_2:y:01lstm_111/while/lstm_cell_342/Relu_1:activations:0*
T0*'
_output_shapes
:         dЖ
3lstm_111/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_111_while_placeholder_1lstm_111_while_placeholder&lstm_111/while/lstm_cell_342/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_111/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_111/while/addAddV2lstm_111_while_placeholderlstm_111/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_111/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_111/while/add_1AddV2*lstm_111_while_lstm_111_while_loop_counterlstm_111/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_111/while/IdentityIdentitylstm_111/while/add_1:z:0^lstm_111/while/NoOp*
T0*
_output_shapes
: ј
lstm_111/while/Identity_1Identity0lstm_111_while_lstm_111_while_maximum_iterations^lstm_111/while/NoOp*
T0*
_output_shapes
: t
lstm_111/while/Identity_2Identitylstm_111/while/add:z:0^lstm_111/while/NoOp*
T0*
_output_shapes
: А
lstm_111/while/Identity_3IdentityClstm_111/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_111/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_111/while/Identity_4Identity&lstm_111/while/lstm_cell_342/mul_2:z:0^lstm_111/while/NoOp*
T0*'
_output_shapes
:         dЋ
lstm_111/while/Identity_5Identity&lstm_111/while/lstm_cell_342/add_1:z:0^lstm_111/while/NoOp*
T0*'
_output_shapes
:         dэ
lstm_111/while/NoOpNoOp4^lstm_111/while/lstm_cell_342/BiasAdd/ReadVariableOp3^lstm_111/while/lstm_cell_342/MatMul/ReadVariableOp5^lstm_111/while/lstm_cell_342/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_111_while_identity lstm_111/while/Identity:output:0"?
lstm_111_while_identity_1"lstm_111/while/Identity_1:output:0"?
lstm_111_while_identity_2"lstm_111/while/Identity_2:output:0"?
lstm_111_while_identity_3"lstm_111/while/Identity_3:output:0"?
lstm_111_while_identity_4"lstm_111/while/Identity_4:output:0"?
lstm_111_while_identity_5"lstm_111/while/Identity_5:output:0"T
'lstm_111_while_lstm_111_strided_slice_1)lstm_111_while_lstm_111_strided_slice_1_0"~
<lstm_111_while_lstm_cell_342_biasadd_readvariableop_resource>lstm_111_while_lstm_cell_342_biasadd_readvariableop_resource_0"ђ
=lstm_111_while_lstm_cell_342_matmul_1_readvariableop_resource?lstm_111_while_lstm_cell_342_matmul_1_readvariableop_resource_0"|
;lstm_111_while_lstm_cell_342_matmul_readvariableop_resource=lstm_111_while_lstm_cell_342_matmul_readvariableop_resource_0"╠
clstm_111_while_tensorarrayv2read_tensorlistgetitem_lstm_111_tensorarrayunstack_tensorlistfromtensorelstm_111_while_tensorarrayv2read_tensorlistgetitem_lstm_111_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2j
3lstm_111/while/lstm_cell_342/BiasAdd/ReadVariableOp3lstm_111/while/lstm_cell_342/BiasAdd/ReadVariableOp2h
2lstm_111/while/lstm_cell_342/MatMul/ReadVariableOp2lstm_111/while/lstm_cell_342/MatMul/ReadVariableOp2l
4lstm_111/while/lstm_cell_342/MatMul_1/ReadVariableOp4lstm_111/while/lstm_cell_342/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
Ј#
ы
while_body_2081232
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_342_2081256_0:	љ0
while_lstm_cell_342_2081258_0:	dљ,
while_lstm_cell_342_2081260_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_342_2081256:	љ.
while_lstm_cell_342_2081258:	dљ*
while_lstm_cell_342_2081260:	љѕб+while/lstm_cell_342/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0╝
+while/lstm_cell_342/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_342_2081256_0while_lstm_cell_342_2081258_0while_lstm_cell_342_2081260_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_342_layer_call_and_return_conditional_losses_2081218П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_342/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_342/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dЉ
while/Identity_5Identity4while/lstm_cell_342/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dz

while/NoOpNoOp,^while/lstm_cell_342/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_342_2081256while_lstm_cell_342_2081256_0"<
while_lstm_cell_342_2081258while_lstm_cell_342_2081258_0"<
while_lstm_cell_342_2081260while_lstm_cell_342_2081260_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2Z
+while/lstm_cell_342/StatefulPartitionedCall+while/lstm_cell_342/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
РJ
Б
E__inference_lstm_111_layer_call_and_return_conditional_losses_2084935

inputs?
,lstm_cell_342_matmul_readvariableop_resource:	љA
.lstm_cell_342_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_342_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_342/BiasAdd/ReadVariableOpб#lstm_cell_342/MatMul/ReadVariableOpб%lstm_cell_342/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_342/MatMul/ReadVariableOpReadVariableOp,lstm_cell_342_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_342/MatMulMatMulstrided_slice_2:output:0+lstm_cell_342/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_342/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_342_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_342/MatMul_1MatMulzeros:output:0-lstm_cell_342/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_342/addAddV2lstm_cell_342/MatMul:product:0 lstm_cell_342/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_342/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_342_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_342/BiasAddBiasAddlstm_cell_342/add:z:0,lstm_cell_342/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_342/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_342/splitSplit&lstm_cell_342/split/split_dim:output:0lstm_cell_342/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_342/SigmoidSigmoidlstm_cell_342/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_342/Sigmoid_1Sigmoidlstm_cell_342/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_342/mulMullstm_cell_342/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_342/ReluRelulstm_cell_342/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_342/mul_1Mullstm_cell_342/Sigmoid:y:0 lstm_cell_342/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_342/add_1AddV2lstm_cell_342/mul:z:0lstm_cell_342/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_342/Sigmoid_2Sigmoidlstm_cell_342/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_342/Relu_1Relulstm_cell_342/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_342/mul_2Mullstm_cell_342/Sigmoid_2:y:0"lstm_cell_342/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_342_matmul_readvariableop_resource.lstm_cell_342_matmul_1_readvariableop_resource-lstm_cell_342_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2084851*
condR
while_cond_2084850*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         d├
NoOpNoOp%^lstm_cell_342/BiasAdd/ReadVariableOp$^lstm_cell_342/MatMul/ReadVariableOp&^lstm_cell_342/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_342/BiasAdd/ReadVariableOp$lstm_cell_342/BiasAdd/ReadVariableOp2J
#lstm_cell_342/MatMul/ReadVariableOp#lstm_cell_342/MatMul/ReadVariableOp2N
%lstm_cell_342/MatMul_1/ReadVariableOp%lstm_cell_342/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
В
ш
/__inference_lstm_cell_344_layer_call_fn_2086399

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_344_layer_call_and_return_conditional_losses_2081918o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         
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
?:         2:         
:         
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:QM
'
_output_shapes
:         

"
_user_specified_name
states/0:QM
'
_output_shapes
:         

"
_user_specified_name
states/1
╚	
Ш
E__inference_dense_37_layer_call_and_return_conditional_losses_2082668

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
Л8
┌
while_body_2085467
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_343_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_343_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_343_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_343_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_343_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_343_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_343/BiasAdd/ReadVariableOpб)while/lstm_cell_343/MatMul/ReadVariableOpб+while/lstm_cell_343/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_343/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_343_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_343/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_343/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_343/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_343_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_343/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_343/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_343/addAddV2$while/lstm_cell_343/MatMul:product:0&while/lstm_cell_343/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_343/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_343_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_343/BiasAddBiasAddwhile/lstm_cell_343/add:z:02while/lstm_cell_343/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_343/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_343/splitSplit,while/lstm_cell_343/split/split_dim:output:0$while/lstm_cell_343/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_343/SigmoidSigmoid"while/lstm_cell_343/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_343/Sigmoid_1Sigmoid"while/lstm_cell_343/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_343/mulMul!while/lstm_cell_343/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_343/ReluRelu"while/lstm_cell_343/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_343/mul_1Mulwhile/lstm_cell_343/Sigmoid:y:0&while/lstm_cell_343/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_343/add_1AddV2while/lstm_cell_343/mul:z:0while/lstm_cell_343/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_343/Sigmoid_2Sigmoid"while/lstm_cell_343/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_343/Relu_1Reluwhile/lstm_cell_343/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_343/mul_2Mul!while/lstm_cell_343/Sigmoid_2:y:0(while/lstm_cell_343/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_343/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_343/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_343/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_343/BiasAdd/ReadVariableOp*^while/lstm_cell_343/MatMul/ReadVariableOp,^while/lstm_cell_343/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_343_biasadd_readvariableop_resource5while_lstm_cell_343_biasadd_readvariableop_resource_0"n
4while_lstm_cell_343_matmul_1_readvariableop_resource6while_lstm_cell_343_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_343_matmul_readvariableop_resource4while_lstm_cell_343_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_343/BiasAdd/ReadVariableOp*while/lstm_cell_343/BiasAdd/ReadVariableOp2V
)while/lstm_cell_343/MatMul/ReadVariableOp)while/lstm_cell_343/MatMul/ReadVariableOp2Z
+while/lstm_cell_343/MatMul_1/ReadVariableOp+while/lstm_cell_343/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
Г
╣
*__inference_lstm_112_layer_call_fn_2084946
inputs_0
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_112_layer_call_and_return_conditional_losses_2081651|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
ПJ
а
E__inference_lstm_113_layer_call_and_return_conditional_losses_2086167

inputs>
,lstm_cell_344_matmul_readvariableop_resource:2(@
.lstm_cell_344_matmul_1_readvariableop_resource:
(;
-lstm_cell_344_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_344/BiasAdd/ReadVariableOpб#lstm_cell_344/MatMul/ReadVariableOpб%lstm_cell_344/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_344/MatMul/ReadVariableOpReadVariableOp,lstm_cell_344_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_344/MatMulMatMulstrided_slice_2:output:0+lstm_cell_344/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_344/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_344_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_344/MatMul_1MatMulzeros:output:0-lstm_cell_344/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_344/addAddV2lstm_cell_344/MatMul:product:0 lstm_cell_344/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_344/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_344_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_344/BiasAddBiasAddlstm_cell_344/add:z:0,lstm_cell_344/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_344/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_344/splitSplit&lstm_cell_344/split/split_dim:output:0lstm_cell_344/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_344/SigmoidSigmoidlstm_cell_344/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_344/Sigmoid_1Sigmoidlstm_cell_344/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_344/mulMullstm_cell_344/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_344/ReluRelulstm_cell_344/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_344/mul_1Mullstm_cell_344/Sigmoid:y:0 lstm_cell_344/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_344/add_1AddV2lstm_cell_344/mul:z:0lstm_cell_344/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_344/Sigmoid_2Sigmoidlstm_cell_344/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_344/Relu_1Relulstm_cell_344/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_344/mul_2Mullstm_cell_344/Sigmoid_2:y:0"lstm_cell_344/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_344_matmul_readvariableop_resource.lstm_cell_344_matmul_1_readvariableop_resource-lstm_cell_344_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2086083*
condR
while_cond_2086082*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         
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
:         
├
NoOpNoOp%^lstm_cell_344/BiasAdd/ReadVariableOp$^lstm_cell_344/MatMul/ReadVariableOp&^lstm_cell_344/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_344/BiasAdd/ReadVariableOp$lstm_cell_344/BiasAdd/ReadVariableOp2J
#lstm_cell_344/MatMul/ReadVariableOp#lstm_cell_344/MatMul/ReadVariableOp2N
%lstm_cell_344/MatMul_1/ReadVariableOp%lstm_cell_344/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs"ѓL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*й
serving_defaultЕ
M
lstm_111_input;
 serving_default_lstm_111_input:0         <
dense_370
StatefulPartitionedCall:0         tensorflow/serving/predict:шЛ
ф
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
ј__call__
+Ј&call_and_return_all_conditional_losses
љ_default_save_signature"
_tf_keras_sequential
Ж
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
Љ__call__
+њ&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
Ж
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
Њ__call__
+ћ&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
Ж
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
Ћ__call__
+ќ&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
Р

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
Ќ__call__
+ў&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3mђ4mЂ5mѓ!vЃ"vё-vЁ.vє/vЄ0vѕ1vЅ2vі3vІ4vї5vЇ"
	optimizer
-
Ўserving_default"
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
╬
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
ј__call__
љ_default_save_signature
+Ј&call_and_return_all_conditional_losses
'Ј"call_and_return_conditional_losses"
_generic_user_object
ѕ
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
џ__call__
+Џ&call_and_return_all_conditional_losses"
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
╝

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
Љ__call__
+њ&call_and_return_all_conditional_losses
'њ"call_and_return_conditional_losses"
_generic_user_object
ѕ
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
ю__call__
+Ю&call_and_return_all_conditional_losses"
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
╝

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
Њ__call__
+ћ&call_and_return_all_conditional_losses
'ћ"call_and_return_conditional_losses"
_generic_user_object
ѕ
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
ъ__call__
+Ъ&call_and_return_all_conditional_losses"
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
╝

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
Ћ__call__
+ќ&call_and_return_all_conditional_losses
'ќ"call_and_return_conditional_losses"
_generic_user_object
!:
2dense_37/kernel
:2dense_37/bias
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
░
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
$	variables
%trainable_variables
&regularization_losses
Ќ__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0:.	љ2lstm_111/lstm_cell_111/kernel
::8	dљ2'lstm_111/lstm_cell_111/recurrent_kernel
*:(љ2lstm_111/lstm_cell_111/bias
0:.	d╚2lstm_112/lstm_cell_112/kernel
::8	2╚2'lstm_112/lstm_cell_112/recurrent_kernel
*:(╚2lstm_112/lstm_cell_112/bias
/:-2(2lstm_113/lstm_cell_113/kernel
9:7
(2'lstm_113/lstm_cell_113/recurrent_kernel
):'(2lstm_113/lstm_cell_113/bias
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
░
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
=	variables
>trainable_variables
?regularization_losses
џ__call__
+Џ&call_and_return_all_conditional_losses
'Џ"call_and_return_conditional_losses"
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
░
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
ю__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
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
░
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
ъ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
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
2Adam/dense_37/kernel/m
 :2Adam/dense_37/bias/m
5:3	љ2$Adam/lstm_111/lstm_cell_111/kernel/m
?:=	dљ2.Adam/lstm_111/lstm_cell_111/recurrent_kernel/m
/:-љ2"Adam/lstm_111/lstm_cell_111/bias/m
5:3	d╚2$Adam/lstm_112/lstm_cell_112/kernel/m
?:=	2╚2.Adam/lstm_112/lstm_cell_112/recurrent_kernel/m
/:-╚2"Adam/lstm_112/lstm_cell_112/bias/m
4:22(2$Adam/lstm_113/lstm_cell_113/kernel/m
>:<
(2.Adam/lstm_113/lstm_cell_113/recurrent_kernel/m
.:,(2"Adam/lstm_113/lstm_cell_113/bias/m
&:$
2Adam/dense_37/kernel/v
 :2Adam/dense_37/bias/v
5:3	љ2$Adam/lstm_111/lstm_cell_111/kernel/v
?:=	dљ2.Adam/lstm_111/lstm_cell_111/recurrent_kernel/v
/:-љ2"Adam/lstm_111/lstm_cell_111/bias/v
5:3	d╚2$Adam/lstm_112/lstm_cell_112/kernel/v
?:=	2╚2.Adam/lstm_112/lstm_cell_112/recurrent_kernel/v
/:-╚2"Adam/lstm_112/lstm_cell_112/bias/v
4:22(2$Adam/lstm_113/lstm_cell_113/kernel/v
>:<
(2.Adam/lstm_113/lstm_cell_113/recurrent_kernel/v
.:,(2"Adam/lstm_113/lstm_cell_113/bias/v
і2Є
/__inference_sequential_37_layer_call_fn_2082700
/__inference_sequential_37_layer_call_fn_2083438
/__inference_sequential_37_layer_call_fn_2083465
/__inference_sequential_37_layer_call_fn_2083316└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Ш2з
J__inference_sequential_37_layer_call_and_return_conditional_losses_2083892
J__inference_sequential_37_layer_call_and_return_conditional_losses_2084319
J__inference_sequential_37_layer_call_and_return_conditional_losses_2083346
J__inference_sequential_37_layer_call_and_return_conditional_losses_2083376└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
нBЛ
"__inference__wrapped_model_2081151lstm_111_input"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
І2ѕ
*__inference_lstm_111_layer_call_fn_2084330
*__inference_lstm_111_layer_call_fn_2084341
*__inference_lstm_111_layer_call_fn_2084352
*__inference_lstm_111_layer_call_fn_2084363Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
э2З
E__inference_lstm_111_layer_call_and_return_conditional_losses_2084506
E__inference_lstm_111_layer_call_and_return_conditional_losses_2084649
E__inference_lstm_111_layer_call_and_return_conditional_losses_2084792
E__inference_lstm_111_layer_call_and_return_conditional_losses_2084935Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
І2ѕ
*__inference_lstm_112_layer_call_fn_2084946
*__inference_lstm_112_layer_call_fn_2084957
*__inference_lstm_112_layer_call_fn_2084968
*__inference_lstm_112_layer_call_fn_2084979Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
э2З
E__inference_lstm_112_layer_call_and_return_conditional_losses_2085122
E__inference_lstm_112_layer_call_and_return_conditional_losses_2085265
E__inference_lstm_112_layer_call_and_return_conditional_losses_2085408
E__inference_lstm_112_layer_call_and_return_conditional_losses_2085551Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
І2ѕ
*__inference_lstm_113_layer_call_fn_2085562
*__inference_lstm_113_layer_call_fn_2085573
*__inference_lstm_113_layer_call_fn_2085584
*__inference_lstm_113_layer_call_fn_2085595Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
э2З
E__inference_lstm_113_layer_call_and_return_conditional_losses_2085738
E__inference_lstm_113_layer_call_and_return_conditional_losses_2085881
E__inference_lstm_113_layer_call_and_return_conditional_losses_2086024
E__inference_lstm_113_layer_call_and_return_conditional_losses_2086167Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
н2Л
*__inference_dense_37_layer_call_fn_2086176б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№2В
E__inference_dense_37_layer_call_and_return_conditional_losses_2086186б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
МBл
%__inference_signature_wrapper_2083411lstm_111_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
д2Б
/__inference_lstm_cell_342_layer_call_fn_2086203
/__inference_lstm_cell_342_layer_call_fn_2086220Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
▄2┘
J__inference_lstm_cell_342_layer_call_and_return_conditional_losses_2086252
J__inference_lstm_cell_342_layer_call_and_return_conditional_losses_2086284Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
д2Б
/__inference_lstm_cell_343_layer_call_fn_2086301
/__inference_lstm_cell_343_layer_call_fn_2086318Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
▄2┘
J__inference_lstm_cell_343_layer_call_and_return_conditional_losses_2086350
J__inference_lstm_cell_343_layer_call_and_return_conditional_losses_2086382Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
д2Б
/__inference_lstm_cell_344_layer_call_fn_2086399
/__inference_lstm_cell_344_layer_call_fn_2086416Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
▄2┘
J__inference_lstm_cell_344_layer_call_and_return_conditional_losses_2086448
J__inference_lstm_cell_344_layer_call_and_return_conditional_losses_2086480Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 Ц
"__inference__wrapped_model_2081151-./012345!";б8
1б.
,і)
lstm_111_input         
ф "3ф0
.
dense_37"і
dense_37         Ц
E__inference_dense_37_layer_call_and_return_conditional_losses_2086186\!"/б,
%б"
 і
inputs         

ф "%б"
і
0         
џ }
*__inference_dense_37_layer_call_fn_2086176O!"/б,
%б"
 і
inputs         

ф "і         н
E__inference_lstm_111_layer_call_and_return_conditional_losses_2084506і-./OбL
EбB
4џ1
/і,
inputs/0                  

 
p 

 
ф "2б/
(і%
0                  d
џ н
E__inference_lstm_111_layer_call_and_return_conditional_losses_2084649і-./OбL
EбB
4џ1
/і,
inputs/0                  

 
p

 
ф "2б/
(і%
0                  d
џ ║
E__inference_lstm_111_layer_call_and_return_conditional_losses_2084792q-./?б<
5б2
$і!
inputs         

 
p 

 
ф ")б&
і
0         d
џ ║
E__inference_lstm_111_layer_call_and_return_conditional_losses_2084935q-./?б<
5б2
$і!
inputs         

 
p

 
ф ")б&
і
0         d
џ Ф
*__inference_lstm_111_layer_call_fn_2084330}-./OбL
EбB
4џ1
/і,
inputs/0                  

 
p 

 
ф "%і"                  dФ
*__inference_lstm_111_layer_call_fn_2084341}-./OбL
EбB
4џ1
/і,
inputs/0                  

 
p

 
ф "%і"                  dњ
*__inference_lstm_111_layer_call_fn_2084352d-./?б<
5б2
$і!
inputs         

 
p 

 
ф "і         dњ
*__inference_lstm_111_layer_call_fn_2084363d-./?б<
5б2
$і!
inputs         

 
p

 
ф "і         dн
E__inference_lstm_112_layer_call_and_return_conditional_losses_2085122і012OбL
EбB
4џ1
/і,
inputs/0                  d

 
p 

 
ф "2б/
(і%
0                  2
џ н
E__inference_lstm_112_layer_call_and_return_conditional_losses_2085265і012OбL
EбB
4џ1
/і,
inputs/0                  d

 
p

 
ф "2б/
(і%
0                  2
џ ║
E__inference_lstm_112_layer_call_and_return_conditional_losses_2085408q012?б<
5б2
$і!
inputs         d

 
p 

 
ф ")б&
і
0         2
џ ║
E__inference_lstm_112_layer_call_and_return_conditional_losses_2085551q012?б<
5б2
$і!
inputs         d

 
p

 
ф ")б&
і
0         2
џ Ф
*__inference_lstm_112_layer_call_fn_2084946}012OбL
EбB
4џ1
/і,
inputs/0                  d

 
p 

 
ф "%і"                  2Ф
*__inference_lstm_112_layer_call_fn_2084957}012OбL
EбB
4џ1
/і,
inputs/0                  d

 
p

 
ф "%і"                  2њ
*__inference_lstm_112_layer_call_fn_2084968d012?б<
5б2
$і!
inputs         d

 
p 

 
ф "і         2њ
*__inference_lstm_112_layer_call_fn_2084979d012?б<
5б2
$і!
inputs         d

 
p

 
ф "і         2к
E__inference_lstm_113_layer_call_and_return_conditional_losses_2085738}345OбL
EбB
4џ1
/і,
inputs/0                  2

 
p 

 
ф "%б"
і
0         

џ к
E__inference_lstm_113_layer_call_and_return_conditional_losses_2085881}345OбL
EбB
4џ1
/і,
inputs/0                  2

 
p

 
ф "%б"
і
0         

џ Х
E__inference_lstm_113_layer_call_and_return_conditional_losses_2086024m345?б<
5б2
$і!
inputs         2

 
p 

 
ф "%б"
і
0         

џ Х
E__inference_lstm_113_layer_call_and_return_conditional_losses_2086167m345?б<
5б2
$і!
inputs         2

 
p

 
ф "%б"
і
0         

џ ъ
*__inference_lstm_113_layer_call_fn_2085562p345OбL
EбB
4џ1
/і,
inputs/0                  2

 
p 

 
ф "і         
ъ
*__inference_lstm_113_layer_call_fn_2085573p345OбL
EбB
4џ1
/і,
inputs/0                  2

 
p

 
ф "і         
ј
*__inference_lstm_113_layer_call_fn_2085584`345?б<
5б2
$і!
inputs         2

 
p 

 
ф "і         
ј
*__inference_lstm_113_layer_call_fn_2085595`345?б<
5б2
$і!
inputs         2

 
p

 
ф "і         
╠
J__inference_lstm_cell_342_layer_call_and_return_conditional_losses_2086252§-./ђб}
vбs
 і
inputs         
KбH
"і
states/0         d
"і
states/1         d
p 
ф "sбp
iбf
і
0/0         d
EџB
і
0/1/0         d
і
0/1/1         d
џ ╠
J__inference_lstm_cell_342_layer_call_and_return_conditional_losses_2086284§-./ђб}
vбs
 і
inputs         
KбH
"і
states/0         d
"і
states/1         d
p
ф "sбp
iбf
і
0/0         d
EџB
і
0/1/0         d
і
0/1/1         d
џ А
/__inference_lstm_cell_342_layer_call_fn_2086203ь-./ђб}
vбs
 і
inputs         
KбH
"і
states/0         d
"і
states/1         d
p 
ф "cб`
і
0         d
Aџ>
і
1/0         d
і
1/1         dА
/__inference_lstm_cell_342_layer_call_fn_2086220ь-./ђб}
vбs
 і
inputs         
KбH
"і
states/0         d
"і
states/1         d
p
ф "cб`
і
0         d
Aџ>
і
1/0         d
і
1/1         d╠
J__inference_lstm_cell_343_layer_call_and_return_conditional_losses_2086350§012ђб}
vбs
 і
inputs         d
KбH
"і
states/0         2
"і
states/1         2
p 
ф "sбp
iбf
і
0/0         2
EџB
і
0/1/0         2
і
0/1/1         2
џ ╠
J__inference_lstm_cell_343_layer_call_and_return_conditional_losses_2086382§012ђб}
vбs
 і
inputs         d
KбH
"і
states/0         2
"і
states/1         2
p
ф "sбp
iбf
і
0/0         2
EџB
і
0/1/0         2
і
0/1/1         2
џ А
/__inference_lstm_cell_343_layer_call_fn_2086301ь012ђб}
vбs
 і
inputs         d
KбH
"і
states/0         2
"і
states/1         2
p 
ф "cб`
і
0         2
Aџ>
і
1/0         2
і
1/1         2А
/__inference_lstm_cell_343_layer_call_fn_2086318ь012ђб}
vбs
 і
inputs         d
KбH
"і
states/0         2
"і
states/1         2
p
ф "cб`
і
0         2
Aџ>
і
1/0         2
і
1/1         2╠
J__inference_lstm_cell_344_layer_call_and_return_conditional_losses_2086448§345ђб}
vбs
 і
inputs         2
KбH
"і
states/0         

"і
states/1         

p 
ф "sбp
iбf
і
0/0         

EџB
і
0/1/0         

і
0/1/1         

џ ╠
J__inference_lstm_cell_344_layer_call_and_return_conditional_losses_2086480§345ђб}
vбs
 і
inputs         2
KбH
"і
states/0         

"і
states/1         

p
ф "sбp
iбf
і
0/0         

EџB
і
0/1/0         

і
0/1/1         

џ А
/__inference_lstm_cell_344_layer_call_fn_2086399ь345ђб}
vбs
 і
inputs         2
KбH
"і
states/0         

"і
states/1         

p 
ф "cб`
і
0         

Aџ>
і
1/0         

і
1/1         
А
/__inference_lstm_cell_344_layer_call_fn_2086416ь345ђб}
vбs
 і
inputs         2
KбH
"і
states/0         

"і
states/1         

p
ф "cб`
і
0         

Aџ>
і
1/0         

і
1/1         
К
J__inference_sequential_37_layer_call_and_return_conditional_losses_2083346y-./012345!"Cб@
9б6
,і)
lstm_111_input         
p 

 
ф "%б"
і
0         
џ К
J__inference_sequential_37_layer_call_and_return_conditional_losses_2083376y-./012345!"Cб@
9б6
,і)
lstm_111_input         
p

 
ф "%б"
і
0         
џ ┐
J__inference_sequential_37_layer_call_and_return_conditional_losses_2083892q-./012345!";б8
1б.
$і!
inputs         
p 

 
ф "%б"
і
0         
џ ┐
J__inference_sequential_37_layer_call_and_return_conditional_losses_2084319q-./012345!";б8
1б.
$і!
inputs         
p

 
ф "%б"
і
0         
џ Ъ
/__inference_sequential_37_layer_call_fn_2082700l-./012345!"Cб@
9б6
,і)
lstm_111_input         
p 

 
ф "і         Ъ
/__inference_sequential_37_layer_call_fn_2083316l-./012345!"Cб@
9б6
,і)
lstm_111_input         
p

 
ф "і         Ќ
/__inference_sequential_37_layer_call_fn_2083438d-./012345!";б8
1б.
$і!
inputs         
p 

 
ф "і         Ќ
/__inference_sequential_37_layer_call_fn_2083465d-./012345!";б8
1б.
$і!
inputs         
p

 
ф "і         ╗
%__inference_signature_wrapper_2083411Љ-./012345!"MбJ
б 
Cф@
>
lstm_111_input,і)
lstm_111_input         "3ф0
.
dense_37"і
dense_37         
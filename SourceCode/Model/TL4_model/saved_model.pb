зе/
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
ѕ"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28№┐-
|
dense_277/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_277/kernel
u
$dense_277/kernel/Read/ReadVariableOpReadVariableOpdense_277/kernel*
_output_shapes

:
*
dtype0
t
dense_277/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_277/bias
m
"dense_277/bias/Read/ReadVariableOpReadVariableOpdense_277/bias*
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
lstm_831/lstm_cell_831/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*.
shared_namelstm_831/lstm_cell_831/kernel
љ
1lstm_831/lstm_cell_831/kernel/Read/ReadVariableOpReadVariableOplstm_831/lstm_cell_831/kernel*
_output_shapes
:	љ*
dtype0
Ф
'lstm_831/lstm_cell_831/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*8
shared_name)'lstm_831/lstm_cell_831/recurrent_kernel
ц
;lstm_831/lstm_cell_831/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_831/lstm_cell_831/recurrent_kernel*
_output_shapes
:	dљ*
dtype0
Ј
lstm_831/lstm_cell_831/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*,
shared_namelstm_831/lstm_cell_831/bias
ѕ
/lstm_831/lstm_cell_831/bias/Read/ReadVariableOpReadVariableOplstm_831/lstm_cell_831/bias*
_output_shapes	
:љ*
dtype0
Ќ
lstm_832/lstm_cell_832/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*.
shared_namelstm_832/lstm_cell_832/kernel
љ
1lstm_832/lstm_cell_832/kernel/Read/ReadVariableOpReadVariableOplstm_832/lstm_cell_832/kernel*
_output_shapes
:	d╚*
dtype0
Ф
'lstm_832/lstm_cell_832/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*8
shared_name)'lstm_832/lstm_cell_832/recurrent_kernel
ц
;lstm_832/lstm_cell_832/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_832/lstm_cell_832/recurrent_kernel*
_output_shapes
:	2╚*
dtype0
Ј
lstm_832/lstm_cell_832/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*,
shared_namelstm_832/lstm_cell_832/bias
ѕ
/lstm_832/lstm_cell_832/bias/Read/ReadVariableOpReadVariableOplstm_832/lstm_cell_832/bias*
_output_shapes	
:╚*
dtype0
ќ
lstm_833/lstm_cell_833/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_833/lstm_cell_833/kernel
Ј
1lstm_833/lstm_cell_833/kernel/Read/ReadVariableOpReadVariableOplstm_833/lstm_cell_833/kernel*
_output_shapes

:2(*
dtype0
ф
'lstm_833/lstm_cell_833/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_833/lstm_cell_833/recurrent_kernel
Б
;lstm_833/lstm_cell_833/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_833/lstm_cell_833/recurrent_kernel*
_output_shapes

:
(*
dtype0
ј
lstm_833/lstm_cell_833/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_833/lstm_cell_833/bias
Є
/lstm_833/lstm_cell_833/bias/Read/ReadVariableOpReadVariableOplstm_833/lstm_cell_833/bias*
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
і
Adam/dense_277/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_277/kernel/m
Ѓ
+Adam/dense_277/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_277/kernel/m*
_output_shapes

:
*
dtype0
ѓ
Adam/dense_277/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_277/bias/m
{
)Adam/dense_277/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_277/bias/m*
_output_shapes
:*
dtype0
Ц
$Adam/lstm_831/lstm_cell_831/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*5
shared_name&$Adam/lstm_831/lstm_cell_831/kernel/m
ъ
8Adam/lstm_831/lstm_cell_831/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_831/lstm_cell_831/kernel/m*
_output_shapes
:	љ*
dtype0
╣
.Adam/lstm_831/lstm_cell_831/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*?
shared_name0.Adam/lstm_831/lstm_cell_831/recurrent_kernel/m
▓
BAdam/lstm_831/lstm_cell_831/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_831/lstm_cell_831/recurrent_kernel/m*
_output_shapes
:	dљ*
dtype0
Ю
"Adam/lstm_831/lstm_cell_831/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*3
shared_name$"Adam/lstm_831/lstm_cell_831/bias/m
ќ
6Adam/lstm_831/lstm_cell_831/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_831/lstm_cell_831/bias/m*
_output_shapes	
:љ*
dtype0
Ц
$Adam/lstm_832/lstm_cell_832/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*5
shared_name&$Adam/lstm_832/lstm_cell_832/kernel/m
ъ
8Adam/lstm_832/lstm_cell_832/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_832/lstm_cell_832/kernel/m*
_output_shapes
:	d╚*
dtype0
╣
.Adam/lstm_832/lstm_cell_832/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*?
shared_name0.Adam/lstm_832/lstm_cell_832/recurrent_kernel/m
▓
BAdam/lstm_832/lstm_cell_832/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_832/lstm_cell_832/recurrent_kernel/m*
_output_shapes
:	2╚*
dtype0
Ю
"Adam/lstm_832/lstm_cell_832/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*3
shared_name$"Adam/lstm_832/lstm_cell_832/bias/m
ќ
6Adam/lstm_832/lstm_cell_832/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_832/lstm_cell_832/bias/m*
_output_shapes	
:╚*
dtype0
ц
$Adam/lstm_833/lstm_cell_833/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_833/lstm_cell_833/kernel/m
Ю
8Adam/lstm_833/lstm_cell_833/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_833/lstm_cell_833/kernel/m*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_833/lstm_cell_833/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_833/lstm_cell_833/recurrent_kernel/m
▒
BAdam/lstm_833/lstm_cell_833/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_833/lstm_cell_833/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
ю
"Adam/lstm_833/lstm_cell_833/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_833/lstm_cell_833/bias/m
Ћ
6Adam/lstm_833/lstm_cell_833/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_833/lstm_cell_833/bias/m*
_output_shapes
:(*
dtype0
і
Adam/dense_277/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_277/kernel/v
Ѓ
+Adam/dense_277/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_277/kernel/v*
_output_shapes

:
*
dtype0
ѓ
Adam/dense_277/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_277/bias/v
{
)Adam/dense_277/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_277/bias/v*
_output_shapes
:*
dtype0
Ц
$Adam/lstm_831/lstm_cell_831/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*5
shared_name&$Adam/lstm_831/lstm_cell_831/kernel/v
ъ
8Adam/lstm_831/lstm_cell_831/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_831/lstm_cell_831/kernel/v*
_output_shapes
:	љ*
dtype0
╣
.Adam/lstm_831/lstm_cell_831/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*?
shared_name0.Adam/lstm_831/lstm_cell_831/recurrent_kernel/v
▓
BAdam/lstm_831/lstm_cell_831/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_831/lstm_cell_831/recurrent_kernel/v*
_output_shapes
:	dљ*
dtype0
Ю
"Adam/lstm_831/lstm_cell_831/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*3
shared_name$"Adam/lstm_831/lstm_cell_831/bias/v
ќ
6Adam/lstm_831/lstm_cell_831/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_831/lstm_cell_831/bias/v*
_output_shapes	
:љ*
dtype0
Ц
$Adam/lstm_832/lstm_cell_832/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*5
shared_name&$Adam/lstm_832/lstm_cell_832/kernel/v
ъ
8Adam/lstm_832/lstm_cell_832/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_832/lstm_cell_832/kernel/v*
_output_shapes
:	d╚*
dtype0
╣
.Adam/lstm_832/lstm_cell_832/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*?
shared_name0.Adam/lstm_832/lstm_cell_832/recurrent_kernel/v
▓
BAdam/lstm_832/lstm_cell_832/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_832/lstm_cell_832/recurrent_kernel/v*
_output_shapes
:	2╚*
dtype0
Ю
"Adam/lstm_832/lstm_cell_832/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*3
shared_name$"Adam/lstm_832/lstm_cell_832/bias/v
ќ
6Adam/lstm_832/lstm_cell_832/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_832/lstm_cell_832/bias/v*
_output_shapes	
:╚*
dtype0
ц
$Adam/lstm_833/lstm_cell_833/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_833/lstm_cell_833/kernel/v
Ю
8Adam/lstm_833/lstm_cell_833/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_833/lstm_cell_833/kernel/v*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_833/lstm_cell_833/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_833/lstm_cell_833/recurrent_kernel/v
▒
BAdam/lstm_833/lstm_cell_833/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_833/lstm_cell_833/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
ю
"Adam/lstm_833/lstm_cell_833/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_833/lstm_cell_833/bias/v
Ћ
6Adam/lstm_833/lstm_cell_833/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_833/lstm_cell_833/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
А?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*▄>
valueм>B¤> B╚>
Ї
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
ї
#iter

$beta_1

%beta_2
	&decay
'learning_ratempmq(mr)ms*mt+mu,mv-mw.mx/my0mzv{v|(v})v~*v+vђ,vЂ-vѓ.vЃ/vё0vЁ
N
(0
)1
*2
+3
,4
-5
.6
/7
08
9
10
N
(0
)1
*2
+3
,4
-5
.6
/7
08
9
10
 
Г
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
 
ј
6
state_size

(kernel
)recurrent_kernel
*bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
 

(0
)1
*2

(0
)1
*2
 
╣

;states
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
ј
A
state_size

+kernel
,recurrent_kernel
-bias
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
 

+0
,1
-2

+0
,1
-2
 
╣

Fstates
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses
ј
L
state_size

.kernel
/recurrent_kernel
0bias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
 

.0
/1
02

.0
/1
02
 
╣

Qstates
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
regularization_losses
\Z
VARIABLE_VALUEdense_277/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_277/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
Г
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
 trainable_variables
!regularization_losses
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
VARIABLE_VALUElstm_831/lstm_cell_831/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_831/lstm_cell_831/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_831/lstm_cell_831/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_832/lstm_cell_832/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_832/lstm_cell_832/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_832/lstm_cell_832/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_833/lstm_cell_833/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_833/lstm_cell_833/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_833/lstm_cell_833/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

\0
 
 
 

(0
)1
*2

(0
)1
*2
 
Г
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
7	variables
8trainable_variables
9regularization_losses
 
 

0
 
 
 
 

+0
,1
-2

+0
,1
-2
 
Г
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
 
 

0
 
 
 
 

.0
/1
02

.0
/1
02
 
Г
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
 
 

0
 
 
 
 
 
 
 
 
4
	ltotal
	mcount
n	variables
o	keras_api
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
l0
m1

n	variables
}
VARIABLE_VALUEAdam/dense_277/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_277/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_831/lstm_cell_831/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_831/lstm_cell_831/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_831/lstm_cell_831/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_832/lstm_cell_832/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_832/lstm_cell_832/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_832/lstm_cell_832/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_833/lstm_cell_833/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_833/lstm_cell_833/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_833/lstm_cell_833/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_277/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_277/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_831/lstm_cell_831/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_831/lstm_cell_831/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_831/lstm_cell_831/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_832/lstm_cell_832/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_832/lstm_cell_832/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_832/lstm_cell_832/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_833/lstm_cell_833/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_833/lstm_cell_833/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_833/lstm_cell_833/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ѕ
serving_default_lstm_831_inputPlaceholder*+
_output_shapes
:         *
dtype0* 
shape:         
А
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_831_inputlstm_831/lstm_cell_831/kernel'lstm_831/lstm_cell_831/recurrent_kernellstm_831/lstm_cell_831/biaslstm_832/lstm_cell_832/kernel'lstm_832/lstm_cell_832/recurrent_kernellstm_832/lstm_cell_832/biaslstm_833/lstm_cell_833/kernel'lstm_833/lstm_cell_833/recurrent_kernellstm_833/lstm_cell_833/biasdense_277/kerneldense_277/bias*
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
%__inference_signature_wrapper_5025929
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
─
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_277/kernel/Read/ReadVariableOp"dense_277/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_831/lstm_cell_831/kernel/Read/ReadVariableOp;lstm_831/lstm_cell_831/recurrent_kernel/Read/ReadVariableOp/lstm_831/lstm_cell_831/bias/Read/ReadVariableOp1lstm_832/lstm_cell_832/kernel/Read/ReadVariableOp;lstm_832/lstm_cell_832/recurrent_kernel/Read/ReadVariableOp/lstm_832/lstm_cell_832/bias/Read/ReadVariableOp1lstm_833/lstm_cell_833/kernel/Read/ReadVariableOp;lstm_833/lstm_cell_833/recurrent_kernel/Read/ReadVariableOp/lstm_833/lstm_cell_833/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_277/kernel/m/Read/ReadVariableOp)Adam/dense_277/bias/m/Read/ReadVariableOp8Adam/lstm_831/lstm_cell_831/kernel/m/Read/ReadVariableOpBAdam/lstm_831/lstm_cell_831/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_831/lstm_cell_831/bias/m/Read/ReadVariableOp8Adam/lstm_832/lstm_cell_832/kernel/m/Read/ReadVariableOpBAdam/lstm_832/lstm_cell_832/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_832/lstm_cell_832/bias/m/Read/ReadVariableOp8Adam/lstm_833/lstm_cell_833/kernel/m/Read/ReadVariableOpBAdam/lstm_833/lstm_cell_833/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_833/lstm_cell_833/bias/m/Read/ReadVariableOp+Adam/dense_277/kernel/v/Read/ReadVariableOp)Adam/dense_277/bias/v/Read/ReadVariableOp8Adam/lstm_831/lstm_cell_831/kernel/v/Read/ReadVariableOpBAdam/lstm_831/lstm_cell_831/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_831/lstm_cell_831/bias/v/Read/ReadVariableOp8Adam/lstm_832/lstm_cell_832/kernel/v/Read/ReadVariableOpBAdam/lstm_832/lstm_cell_832/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_832/lstm_cell_832/bias/v/Read/ReadVariableOp8Adam/lstm_833/lstm_cell_833/kernel/v/Read/ReadVariableOpBAdam/lstm_833/lstm_cell_833/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_833/lstm_cell_833/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_5029141
Ъ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_277/kerneldense_277/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_831/lstm_cell_831/kernel'lstm_831/lstm_cell_831/recurrent_kernellstm_831/lstm_cell_831/biaslstm_832/lstm_cell_832/kernel'lstm_832/lstm_cell_832/recurrent_kernellstm_832/lstm_cell_832/biaslstm_833/lstm_cell_833/kernel'lstm_833/lstm_cell_833/recurrent_kernellstm_833/lstm_cell_833/biastotalcountAdam/dense_277/kernel/mAdam/dense_277/bias/m$Adam/lstm_831/lstm_cell_831/kernel/m.Adam/lstm_831/lstm_cell_831/recurrent_kernel/m"Adam/lstm_831/lstm_cell_831/bias/m$Adam/lstm_832/lstm_cell_832/kernel/m.Adam/lstm_832/lstm_cell_832/recurrent_kernel/m"Adam/lstm_832/lstm_cell_832/bias/m$Adam/lstm_833/lstm_cell_833/kernel/m.Adam/lstm_833/lstm_cell_833/recurrent_kernel/m"Adam/lstm_833/lstm_cell_833/bias/mAdam/dense_277/kernel/vAdam/dense_277/bias/v$Adam/lstm_831/lstm_cell_831/kernel/v.Adam/lstm_831/lstm_cell_831/recurrent_kernel/v"Adam/lstm_831/lstm_cell_831/bias/v$Adam/lstm_832/lstm_cell_832/kernel/v.Adam/lstm_832/lstm_cell_832/recurrent_kernel/v"Adam/lstm_832/lstm_cell_832/bias/v$Adam/lstm_833/lstm_cell_833/kernel/v.Adam/lstm_833/lstm_cell_833/recurrent_kernel/v"Adam/lstm_833/lstm_cell_833/bias/v*4
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
#__inference__traced_restore_5029271░■+
█
е
*sequential_277_lstm_833_while_cond_5023578L
Hsequential_277_lstm_833_while_sequential_277_lstm_833_while_loop_counterR
Nsequential_277_lstm_833_while_sequential_277_lstm_833_while_maximum_iterations-
)sequential_277_lstm_833_while_placeholder/
+sequential_277_lstm_833_while_placeholder_1/
+sequential_277_lstm_833_while_placeholder_2/
+sequential_277_lstm_833_while_placeholder_3N
Jsequential_277_lstm_833_while_less_sequential_277_lstm_833_strided_slice_1e
asequential_277_lstm_833_while_sequential_277_lstm_833_while_cond_5023578___redundant_placeholder0e
asequential_277_lstm_833_while_sequential_277_lstm_833_while_cond_5023578___redundant_placeholder1e
asequential_277_lstm_833_while_sequential_277_lstm_833_while_cond_5023578___redundant_placeholder2e
asequential_277_lstm_833_while_sequential_277_lstm_833_while_cond_5023578___redundant_placeholder3*
&sequential_277_lstm_833_while_identity
┬
"sequential_277/lstm_833/while/LessLess)sequential_277_lstm_833_while_placeholderJsequential_277_lstm_833_while_less_sequential_277_lstm_833_strided_slice_1*
T0*
_output_shapes
: {
&sequential_277/lstm_833/while/IdentityIdentity&sequential_277/lstm_833/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_277_lstm_833_while_identity/sequential_277/lstm_833/while/Identity:output:0*(
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
и

Ч
lstm_833_while_cond_5026319.
*lstm_833_while_lstm_833_while_loop_counter4
0lstm_833_while_lstm_833_while_maximum_iterations
lstm_833_while_placeholder 
lstm_833_while_placeholder_1 
lstm_833_while_placeholder_2 
lstm_833_while_placeholder_30
,lstm_833_while_less_lstm_833_strided_slice_1G
Clstm_833_while_lstm_833_while_cond_5026319___redundant_placeholder0G
Clstm_833_while_lstm_833_while_cond_5026319___redundant_placeholder1G
Clstm_833_while_lstm_833_while_cond_5026319___redundant_placeholder2G
Clstm_833_while_lstm_833_while_cond_5026319___redundant_placeholder3
lstm_833_while_identity
є
lstm_833/while/LessLesslstm_833_while_placeholder,lstm_833_while_less_lstm_833_strided_slice_1*
T0*
_output_shapes
: ]
lstm_833/while/IdentityIdentitylstm_833/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_833_while_identity lstm_833/while/Identity:output:0*(
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
*__inference_lstm_831_layer_call_fn_5026870

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
E__inference_lstm_831_layer_call_and_return_conditional_losses_5024868s
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
█
е
*sequential_277_lstm_832_while_cond_5023439L
Hsequential_277_lstm_832_while_sequential_277_lstm_832_while_loop_counterR
Nsequential_277_lstm_832_while_sequential_277_lstm_832_while_maximum_iterations-
)sequential_277_lstm_832_while_placeholder/
+sequential_277_lstm_832_while_placeholder_1/
+sequential_277_lstm_832_while_placeholder_2/
+sequential_277_lstm_832_while_placeholder_3N
Jsequential_277_lstm_832_while_less_sequential_277_lstm_832_strided_slice_1e
asequential_277_lstm_832_while_sequential_277_lstm_832_while_cond_5023439___redundant_placeholder0e
asequential_277_lstm_832_while_sequential_277_lstm_832_while_cond_5023439___redundant_placeholder1e
asequential_277_lstm_832_while_sequential_277_lstm_832_while_cond_5023439___redundant_placeholder2e
asequential_277_lstm_832_while_sequential_277_lstm_832_while_cond_5023439___redundant_placeholder3*
&sequential_277_lstm_832_while_identity
┬
"sequential_277/lstm_832/while/LessLess)sequential_277_lstm_832_while_placeholderJsequential_277_lstm_832_while_less_sequential_277_lstm_832_strided_slice_1*
T0*
_output_shapes
: {
&sequential_277/lstm_832/while/IdentityIdentity&sequential_277/lstm_832/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_277_lstm_832_while_identity/sequential_277/lstm_832/while/Identity:output:0*(
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
О
є
J__inference_lstm_cell_832_layer_call_and_return_conditional_losses_5024232

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
║
╚
while_cond_5027698
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5027698___redundant_placeholder05
1while_while_cond_5027698___redundant_placeholder15
1while_while_cond_5027698___redundant_placeholder25
1while_while_cond_5027698___redundant_placeholder3
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
Э
┤
*__inference_lstm_833_layer_call_fn_5028113

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
E__inference_lstm_833_layer_call_and_return_conditional_losses_5025384o
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
АC
Щ

lstm_832_while_body_5026608.
*lstm_832_while_lstm_832_while_loop_counter4
0lstm_832_while_lstm_832_while_maximum_iterations
lstm_832_while_placeholder 
lstm_832_while_placeholder_1 
lstm_832_while_placeholder_2 
lstm_832_while_placeholder_3-
)lstm_832_while_lstm_832_strided_slice_1_0i
elstm_832_while_tensorarrayv2read_tensorlistgetitem_lstm_832_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_832_while_lstm_cell_832_matmul_readvariableop_resource_0:	d╚R
?lstm_832_while_lstm_cell_832_matmul_1_readvariableop_resource_0:	2╚M
>lstm_832_while_lstm_cell_832_biasadd_readvariableop_resource_0:	╚
lstm_832_while_identity
lstm_832_while_identity_1
lstm_832_while_identity_2
lstm_832_while_identity_3
lstm_832_while_identity_4
lstm_832_while_identity_5+
'lstm_832_while_lstm_832_strided_slice_1g
clstm_832_while_tensorarrayv2read_tensorlistgetitem_lstm_832_tensorarrayunstack_tensorlistfromtensorN
;lstm_832_while_lstm_cell_832_matmul_readvariableop_resource:	d╚P
=lstm_832_while_lstm_cell_832_matmul_1_readvariableop_resource:	2╚K
<lstm_832_while_lstm_cell_832_biasadd_readvariableop_resource:	╚ѕб3lstm_832/while/lstm_cell_832/BiasAdd/ReadVariableOpб2lstm_832/while/lstm_cell_832/MatMul/ReadVariableOpб4lstm_832/while/lstm_cell_832/MatMul_1/ReadVariableOpЉ
@lstm_832/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
2lstm_832/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_832_while_tensorarrayv2read_tensorlistgetitem_lstm_832_tensorarrayunstack_tensorlistfromtensor_0lstm_832_while_placeholderIlstm_832/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0▒
2lstm_832/while/lstm_cell_832/MatMul/ReadVariableOpReadVariableOp=lstm_832_while_lstm_cell_832_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0О
#lstm_832/while/lstm_cell_832/MatMulMatMul9lstm_832/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_832/while/lstm_cell_832/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚х
4lstm_832/while/lstm_cell_832/MatMul_1/ReadVariableOpReadVariableOp?lstm_832_while_lstm_cell_832_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Й
%lstm_832/while/lstm_cell_832/MatMul_1MatMullstm_832_while_placeholder_2<lstm_832/while/lstm_cell_832/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚╝
 lstm_832/while/lstm_cell_832/addAddV2-lstm_832/while/lstm_cell_832/MatMul:product:0/lstm_832/while/lstm_cell_832/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚»
3lstm_832/while/lstm_cell_832/BiasAdd/ReadVariableOpReadVariableOp>lstm_832_while_lstm_cell_832_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0┼
$lstm_832/while/lstm_cell_832/BiasAddBiasAdd$lstm_832/while/lstm_cell_832/add:z:0;lstm_832/while/lstm_cell_832/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚n
,lstm_832/while/lstm_cell_832/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_832/while/lstm_cell_832/splitSplit5lstm_832/while/lstm_cell_832/split/split_dim:output:0-lstm_832/while/lstm_cell_832/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitј
$lstm_832/while/lstm_cell_832/SigmoidSigmoid+lstm_832/while/lstm_cell_832/split:output:0*
T0*'
_output_shapes
:         2љ
&lstm_832/while/lstm_cell_832/Sigmoid_1Sigmoid+lstm_832/while/lstm_cell_832/split:output:1*
T0*'
_output_shapes
:         2Б
 lstm_832/while/lstm_cell_832/mulMul*lstm_832/while/lstm_cell_832/Sigmoid_1:y:0lstm_832_while_placeholder_3*
T0*'
_output_shapes
:         2ѕ
!lstm_832/while/lstm_cell_832/ReluRelu+lstm_832/while/lstm_cell_832/split:output:2*
T0*'
_output_shapes
:         2Х
"lstm_832/while/lstm_cell_832/mul_1Mul(lstm_832/while/lstm_cell_832/Sigmoid:y:0/lstm_832/while/lstm_cell_832/Relu:activations:0*
T0*'
_output_shapes
:         2Ф
"lstm_832/while/lstm_cell_832/add_1AddV2$lstm_832/while/lstm_cell_832/mul:z:0&lstm_832/while/lstm_cell_832/mul_1:z:0*
T0*'
_output_shapes
:         2љ
&lstm_832/while/lstm_cell_832/Sigmoid_2Sigmoid+lstm_832/while/lstm_cell_832/split:output:3*
T0*'
_output_shapes
:         2Ё
#lstm_832/while/lstm_cell_832/Relu_1Relu&lstm_832/while/lstm_cell_832/add_1:z:0*
T0*'
_output_shapes
:         2║
"lstm_832/while/lstm_cell_832/mul_2Mul*lstm_832/while/lstm_cell_832/Sigmoid_2:y:01lstm_832/while/lstm_cell_832/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ж
3lstm_832/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_832_while_placeholder_1lstm_832_while_placeholder&lstm_832/while/lstm_cell_832/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_832/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_832/while/addAddV2lstm_832_while_placeholderlstm_832/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_832/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_832/while/add_1AddV2*lstm_832_while_lstm_832_while_loop_counterlstm_832/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_832/while/IdentityIdentitylstm_832/while/add_1:z:0^lstm_832/while/NoOp*
T0*
_output_shapes
: ј
lstm_832/while/Identity_1Identity0lstm_832_while_lstm_832_while_maximum_iterations^lstm_832/while/NoOp*
T0*
_output_shapes
: t
lstm_832/while/Identity_2Identitylstm_832/while/add:z:0^lstm_832/while/NoOp*
T0*
_output_shapes
: А
lstm_832/while/Identity_3IdentityClstm_832/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_832/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_832/while/Identity_4Identity&lstm_832/while/lstm_cell_832/mul_2:z:0^lstm_832/while/NoOp*
T0*'
_output_shapes
:         2Ћ
lstm_832/while/Identity_5Identity&lstm_832/while/lstm_cell_832/add_1:z:0^lstm_832/while/NoOp*
T0*'
_output_shapes
:         2э
lstm_832/while/NoOpNoOp4^lstm_832/while/lstm_cell_832/BiasAdd/ReadVariableOp3^lstm_832/while/lstm_cell_832/MatMul/ReadVariableOp5^lstm_832/while/lstm_cell_832/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_832_while_identity lstm_832/while/Identity:output:0"?
lstm_832_while_identity_1"lstm_832/while/Identity_1:output:0"?
lstm_832_while_identity_2"lstm_832/while/Identity_2:output:0"?
lstm_832_while_identity_3"lstm_832/while/Identity_3:output:0"?
lstm_832_while_identity_4"lstm_832/while/Identity_4:output:0"?
lstm_832_while_identity_5"lstm_832/while/Identity_5:output:0"T
'lstm_832_while_lstm_832_strided_slice_1)lstm_832_while_lstm_832_strided_slice_1_0"~
<lstm_832_while_lstm_cell_832_biasadd_readvariableop_resource>lstm_832_while_lstm_cell_832_biasadd_readvariableop_resource_0"ђ
=lstm_832_while_lstm_cell_832_matmul_1_readvariableop_resource?lstm_832_while_lstm_cell_832_matmul_1_readvariableop_resource_0"|
;lstm_832_while_lstm_cell_832_matmul_readvariableop_resource=lstm_832_while_lstm_cell_832_matmul_readvariableop_resource_0"╠
clstm_832_while_tensorarrayv2read_tensorlistgetitem_lstm_832_tensorarrayunstack_tensorlistfromtensorelstm_832_while_tensorarrayv2read_tensorlistgetitem_lstm_832_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2j
3lstm_832/while/lstm_cell_832/BiasAdd/ReadVariableOp3lstm_832/while/lstm_cell_832/BiasAdd/ReadVariableOp2h
2lstm_832/while/lstm_cell_832/MatMul/ReadVariableOp2lstm_832/while/lstm_cell_832/MatMul/ReadVariableOp2l
4lstm_832/while/lstm_cell_832/MatMul_1/ReadVariableOp4lstm_832/while/lstm_cell_832/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
─8
н
while_body_5028601
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_833_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_833_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_833_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_833_matmul_readvariableop_resource:2(F
4while_lstm_cell_833_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_833_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_833/BiasAdd/ReadVariableOpб)while/lstm_cell_833/MatMul/ReadVariableOpб+while/lstm_cell_833/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_833/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_833_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_833/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_833/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_833/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_833_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_833/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_833/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_833/addAddV2$while/lstm_cell_833/MatMul:product:0&while/lstm_cell_833/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_833/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_833_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_833/BiasAddBiasAddwhile/lstm_cell_833/add:z:02while/lstm_cell_833/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_833/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_833/splitSplit,while/lstm_cell_833/split/split_dim:output:0$while/lstm_cell_833/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_833/SigmoidSigmoid"while/lstm_cell_833/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_833/Sigmoid_1Sigmoid"while/lstm_cell_833/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_833/mulMul!while/lstm_cell_833/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_833/ReluRelu"while/lstm_cell_833/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_833/mul_1Mulwhile/lstm_cell_833/Sigmoid:y:0&while/lstm_cell_833/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_833/add_1AddV2while/lstm_cell_833/mul:z:0while/lstm_cell_833/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_833/Sigmoid_2Sigmoid"while/lstm_cell_833/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_833/Relu_1Reluwhile/lstm_cell_833/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_833/mul_2Mul!while/lstm_cell_833/Sigmoid_2:y:0(while/lstm_cell_833/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_833/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_833/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_833/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_833/BiasAdd/ReadVariableOp*^while/lstm_cell_833/MatMul/ReadVariableOp,^while/lstm_cell_833/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_833_biasadd_readvariableop_resource5while_lstm_cell_833_biasadd_readvariableop_resource_0"n
4while_lstm_cell_833_matmul_1_readvariableop_resource6while_lstm_cell_833_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_833_matmul_readvariableop_resource4while_lstm_cell_833_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_833/BiasAdd/ReadVariableOp*while/lstm_cell_833/BiasAdd/ReadVariableOp2V
)while/lstm_cell_833/MatMul/ReadVariableOp)while/lstm_cell_833/MatMul/ReadVariableOp2Z
+while/lstm_cell_833/MatMul_1/ReadVariableOp+while/lstm_cell_833/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
О
є
J__inference_lstm_cell_831_layer_call_and_return_conditional_losses_5023882

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
Г
╣
*__inference_lstm_832_layer_call_fn_5027464
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
E__inference_lstm_832_layer_call_and_return_conditional_losses_5024169|
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
─8
н
while_body_5025084
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_833_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_833_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_833_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_833_matmul_readvariableop_resource:2(F
4while_lstm_cell_833_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_833_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_833/BiasAdd/ReadVariableOpб)while/lstm_cell_833/MatMul/ReadVariableOpб+while/lstm_cell_833/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_833/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_833_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_833/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_833/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_833/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_833_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_833/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_833/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_833/addAddV2$while/lstm_cell_833/MatMul:product:0&while/lstm_cell_833/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_833/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_833_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_833/BiasAddBiasAddwhile/lstm_cell_833/add:z:02while/lstm_cell_833/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_833/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_833/splitSplit,while/lstm_cell_833/split/split_dim:output:0$while/lstm_cell_833/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_833/SigmoidSigmoid"while/lstm_cell_833/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_833/Sigmoid_1Sigmoid"while/lstm_cell_833/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_833/mulMul!while/lstm_cell_833/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_833/ReluRelu"while/lstm_cell_833/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_833/mul_1Mulwhile/lstm_cell_833/Sigmoid:y:0&while/lstm_cell_833/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_833/add_1AddV2while/lstm_cell_833/mul:z:0while/lstm_cell_833/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_833/Sigmoid_2Sigmoid"while/lstm_cell_833/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_833/Relu_1Reluwhile/lstm_cell_833/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_833/mul_2Mul!while/lstm_cell_833/Sigmoid_2:y:0(while/lstm_cell_833/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_833/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_833/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_833/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_833/BiasAdd/ReadVariableOp*^while/lstm_cell_833/MatMul/ReadVariableOp,^while/lstm_cell_833/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_833_biasadd_readvariableop_resource5while_lstm_cell_833_biasadd_readvariableop_resource_0"n
4while_lstm_cell_833_matmul_1_readvariableop_resource6while_lstm_cell_833_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_833_matmul_readvariableop_resource4while_lstm_cell_833_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_833/BiasAdd/ReadVariableOp*while/lstm_cell_833/BiasAdd/ReadVariableOp2V
)while/lstm_cell_833/MatMul/ReadVariableOp)while/lstm_cell_833/MatMul/ReadVariableOp2Z
+while/lstm_cell_833/MatMul_1/ReadVariableOp+while/lstm_cell_833/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ПJ
а
E__inference_lstm_833_layer_call_and_return_conditional_losses_5025168

inputs>
,lstm_cell_833_matmul_readvariableop_resource:2(@
.lstm_cell_833_matmul_1_readvariableop_resource:
(;
-lstm_cell_833_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_833/BiasAdd/ReadVariableOpб#lstm_cell_833/MatMul/ReadVariableOpб%lstm_cell_833/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_833/MatMul/ReadVariableOpReadVariableOp,lstm_cell_833_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_833/MatMulMatMulstrided_slice_2:output:0+lstm_cell_833/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_833/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_833_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_833/MatMul_1MatMulzeros:output:0-lstm_cell_833/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_833/addAddV2lstm_cell_833/MatMul:product:0 lstm_cell_833/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_833/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_833_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_833/BiasAddBiasAddlstm_cell_833/add:z:0,lstm_cell_833/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_833/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_833/splitSplit&lstm_cell_833/split/split_dim:output:0lstm_cell_833/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_833/SigmoidSigmoidlstm_cell_833/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_833/Sigmoid_1Sigmoidlstm_cell_833/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_833/mulMullstm_cell_833/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_833/ReluRelulstm_cell_833/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_833/mul_1Mullstm_cell_833/Sigmoid:y:0 lstm_cell_833/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_833/add_1AddV2lstm_cell_833/mul:z:0lstm_cell_833/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_833/Sigmoid_2Sigmoidlstm_cell_833/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_833/Relu_1Relulstm_cell_833/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_833/mul_2Mullstm_cell_833/Sigmoid_2:y:0"lstm_cell_833/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_833_matmul_readvariableop_resource.lstm_cell_833_matmul_1_readvariableop_resource-lstm_cell_833_biasadd_readvariableop_resource*
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
while_body_5025084*
condR
while_cond_5025083*K
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
NoOpNoOp%^lstm_cell_833/BiasAdd/ReadVariableOp$^lstm_cell_833/MatMul/ReadVariableOp&^lstm_cell_833/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_833/BiasAdd/ReadVariableOp$lstm_cell_833/BiasAdd/ReadVariableOp2J
#lstm_cell_833/MatMul/ReadVariableOp#lstm_cell_833/MatMul/ReadVariableOp2N
%lstm_cell_833/MatMul_1/ReadVariableOp%lstm_cell_833/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
║
╚
while_cond_5027368
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5027368___redundant_placeholder05
1while_while_cond_5027368___redundant_placeholder15
1while_while_cond_5027368___redundant_placeholder25
1while_while_cond_5027368___redundant_placeholder3
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
м
ч
K__inference_sequential_277_layer_call_and_return_conditional_losses_5025782

inputs#
lstm_831_5025755:	љ#
lstm_831_5025757:	dљ
lstm_831_5025759:	љ#
lstm_832_5025762:	d╚#
lstm_832_5025764:	2╚
lstm_832_5025766:	╚"
lstm_833_5025769:2("
lstm_833_5025771:
(
lstm_833_5025773:(#
dense_277_5025776:

dense_277_5025778:
identityѕб!dense_277/StatefulPartitionedCallб lstm_831/StatefulPartitionedCallб lstm_832/StatefulPartitionedCallб lstm_833/StatefulPartitionedCallІ
 lstm_831/StatefulPartitionedCallStatefulPartitionedCallinputslstm_831_5025755lstm_831_5025757lstm_831_5025759*
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
E__inference_lstm_831_layer_call_and_return_conditional_losses_5025714«
 lstm_832/StatefulPartitionedCallStatefulPartitionedCall)lstm_831/StatefulPartitionedCall:output:0lstm_832_5025762lstm_832_5025764lstm_832_5025766*
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
E__inference_lstm_832_layer_call_and_return_conditional_losses_5025549ф
 lstm_833/StatefulPartitionedCallStatefulPartitionedCall)lstm_832/StatefulPartitionedCall:output:0lstm_833_5025769lstm_833_5025771lstm_833_5025773*
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
E__inference_lstm_833_layer_call_and_return_conditional_losses_5025384џ
!dense_277/StatefulPartitionedCallStatefulPartitionedCall)lstm_833/StatefulPartitionedCall:output:0dense_277_5025776dense_277_5025778*
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
GPU 2J 8ѓ *O
fJRH
F__inference_dense_277_layer_call_and_return_conditional_losses_5025186y
IdentityIdentity*dense_277/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp"^dense_277/StatefulPartitionedCall!^lstm_831/StatefulPartitionedCall!^lstm_832/StatefulPartitionedCall!^lstm_833/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2F
!dense_277/StatefulPartitionedCall!dense_277/StatefulPartitionedCall2D
 lstm_831/StatefulPartitionedCall lstm_831/StatefulPartitionedCall2D
 lstm_832/StatefulPartitionedCall lstm_832/StatefulPartitionedCall2D
 lstm_833/StatefulPartitionedCall lstm_833/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
АC
Щ

lstm_831_while_body_5026042.
*lstm_831_while_lstm_831_while_loop_counter4
0lstm_831_while_lstm_831_while_maximum_iterations
lstm_831_while_placeholder 
lstm_831_while_placeholder_1 
lstm_831_while_placeholder_2 
lstm_831_while_placeholder_3-
)lstm_831_while_lstm_831_strided_slice_1_0i
elstm_831_while_tensorarrayv2read_tensorlistgetitem_lstm_831_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_831_while_lstm_cell_831_matmul_readvariableop_resource_0:	љR
?lstm_831_while_lstm_cell_831_matmul_1_readvariableop_resource_0:	dљM
>lstm_831_while_lstm_cell_831_biasadd_readvariableop_resource_0:	љ
lstm_831_while_identity
lstm_831_while_identity_1
lstm_831_while_identity_2
lstm_831_while_identity_3
lstm_831_while_identity_4
lstm_831_while_identity_5+
'lstm_831_while_lstm_831_strided_slice_1g
clstm_831_while_tensorarrayv2read_tensorlistgetitem_lstm_831_tensorarrayunstack_tensorlistfromtensorN
;lstm_831_while_lstm_cell_831_matmul_readvariableop_resource:	љP
=lstm_831_while_lstm_cell_831_matmul_1_readvariableop_resource:	dљK
<lstm_831_while_lstm_cell_831_biasadd_readvariableop_resource:	љѕб3lstm_831/while/lstm_cell_831/BiasAdd/ReadVariableOpб2lstm_831/while/lstm_cell_831/MatMul/ReadVariableOpб4lstm_831/while/lstm_cell_831/MatMul_1/ReadVariableOpЉ
@lstm_831/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       М
2lstm_831/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_831_while_tensorarrayv2read_tensorlistgetitem_lstm_831_tensorarrayunstack_tensorlistfromtensor_0lstm_831_while_placeholderIlstm_831/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0▒
2lstm_831/while/lstm_cell_831/MatMul/ReadVariableOpReadVariableOp=lstm_831_while_lstm_cell_831_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0О
#lstm_831/while/lstm_cell_831/MatMulMatMul9lstm_831/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_831/while/lstm_cell_831/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љх
4lstm_831/while/lstm_cell_831/MatMul_1/ReadVariableOpReadVariableOp?lstm_831_while_lstm_cell_831_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Й
%lstm_831/while/lstm_cell_831/MatMul_1MatMullstm_831_while_placeholder_2<lstm_831/while/lstm_cell_831/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ╝
 lstm_831/while/lstm_cell_831/addAddV2-lstm_831/while/lstm_cell_831/MatMul:product:0/lstm_831/while/lstm_cell_831/MatMul_1:product:0*
T0*(
_output_shapes
:         љ»
3lstm_831/while/lstm_cell_831/BiasAdd/ReadVariableOpReadVariableOp>lstm_831_while_lstm_cell_831_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┼
$lstm_831/while/lstm_cell_831/BiasAddBiasAdd$lstm_831/while/lstm_cell_831/add:z:0;lstm_831/while/lstm_cell_831/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љn
,lstm_831/while/lstm_cell_831/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_831/while/lstm_cell_831/splitSplit5lstm_831/while/lstm_cell_831/split/split_dim:output:0-lstm_831/while/lstm_cell_831/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitј
$lstm_831/while/lstm_cell_831/SigmoidSigmoid+lstm_831/while/lstm_cell_831/split:output:0*
T0*'
_output_shapes
:         dљ
&lstm_831/while/lstm_cell_831/Sigmoid_1Sigmoid+lstm_831/while/lstm_cell_831/split:output:1*
T0*'
_output_shapes
:         dБ
 lstm_831/while/lstm_cell_831/mulMul*lstm_831/while/lstm_cell_831/Sigmoid_1:y:0lstm_831_while_placeholder_3*
T0*'
_output_shapes
:         dѕ
!lstm_831/while/lstm_cell_831/ReluRelu+lstm_831/while/lstm_cell_831/split:output:2*
T0*'
_output_shapes
:         dХ
"lstm_831/while/lstm_cell_831/mul_1Mul(lstm_831/while/lstm_cell_831/Sigmoid:y:0/lstm_831/while/lstm_cell_831/Relu:activations:0*
T0*'
_output_shapes
:         dФ
"lstm_831/while/lstm_cell_831/add_1AddV2$lstm_831/while/lstm_cell_831/mul:z:0&lstm_831/while/lstm_cell_831/mul_1:z:0*
T0*'
_output_shapes
:         dљ
&lstm_831/while/lstm_cell_831/Sigmoid_2Sigmoid+lstm_831/while/lstm_cell_831/split:output:3*
T0*'
_output_shapes
:         dЁ
#lstm_831/while/lstm_cell_831/Relu_1Relu&lstm_831/while/lstm_cell_831/add_1:z:0*
T0*'
_output_shapes
:         d║
"lstm_831/while/lstm_cell_831/mul_2Mul*lstm_831/while/lstm_cell_831/Sigmoid_2:y:01lstm_831/while/lstm_cell_831/Relu_1:activations:0*
T0*'
_output_shapes
:         dЖ
3lstm_831/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_831_while_placeholder_1lstm_831_while_placeholder&lstm_831/while/lstm_cell_831/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_831/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_831/while/addAddV2lstm_831_while_placeholderlstm_831/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_831/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_831/while/add_1AddV2*lstm_831_while_lstm_831_while_loop_counterlstm_831/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_831/while/IdentityIdentitylstm_831/while/add_1:z:0^lstm_831/while/NoOp*
T0*
_output_shapes
: ј
lstm_831/while/Identity_1Identity0lstm_831_while_lstm_831_while_maximum_iterations^lstm_831/while/NoOp*
T0*
_output_shapes
: t
lstm_831/while/Identity_2Identitylstm_831/while/add:z:0^lstm_831/while/NoOp*
T0*
_output_shapes
: А
lstm_831/while/Identity_3IdentityClstm_831/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_831/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_831/while/Identity_4Identity&lstm_831/while/lstm_cell_831/mul_2:z:0^lstm_831/while/NoOp*
T0*'
_output_shapes
:         dЋ
lstm_831/while/Identity_5Identity&lstm_831/while/lstm_cell_831/add_1:z:0^lstm_831/while/NoOp*
T0*'
_output_shapes
:         dэ
lstm_831/while/NoOpNoOp4^lstm_831/while/lstm_cell_831/BiasAdd/ReadVariableOp3^lstm_831/while/lstm_cell_831/MatMul/ReadVariableOp5^lstm_831/while/lstm_cell_831/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_831_while_identity lstm_831/while/Identity:output:0"?
lstm_831_while_identity_1"lstm_831/while/Identity_1:output:0"?
lstm_831_while_identity_2"lstm_831/while/Identity_2:output:0"?
lstm_831_while_identity_3"lstm_831/while/Identity_3:output:0"?
lstm_831_while_identity_4"lstm_831/while/Identity_4:output:0"?
lstm_831_while_identity_5"lstm_831/while/Identity_5:output:0"T
'lstm_831_while_lstm_831_strided_slice_1)lstm_831_while_lstm_831_strided_slice_1_0"~
<lstm_831_while_lstm_cell_831_biasadd_readvariableop_resource>lstm_831_while_lstm_cell_831_biasadd_readvariableop_resource_0"ђ
=lstm_831_while_lstm_cell_831_matmul_1_readvariableop_resource?lstm_831_while_lstm_cell_831_matmul_1_readvariableop_resource_0"|
;lstm_831_while_lstm_cell_831_matmul_readvariableop_resource=lstm_831_while_lstm_cell_831_matmul_readvariableop_resource_0"╠
clstm_831_while_tensorarrayv2read_tensorlistgetitem_lstm_831_tensorarrayunstack_tensorlistfromtensorelstm_831_while_tensorarrayv2read_tensorlistgetitem_lstm_831_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2j
3lstm_831/while/lstm_cell_831/BiasAdd/ReadVariableOp3lstm_831/while/lstm_cell_831/BiasAdd/ReadVariableOp2h
2lstm_831/while/lstm_cell_831/MatMul/ReadVariableOp2lstm_831/while/lstm_cell_831/MatMul/ReadVariableOp2l
4lstm_831/while/lstm_cell_831/MatMul_1/ReadVariableOp4lstm_831/while/lstm_cell_831/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
я

ю
0__inference_sequential_277_layer_call_fn_5025956

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
identityѕбStatefulPartitionedCallН
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
GPU 2J 8ѓ *T
fORM
K__inference_sequential_277_layer_call_and_return_conditional_losses_5025193o
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
Ж
Ѓ
K__inference_sequential_277_layer_call_and_return_conditional_losses_5025864
lstm_831_input#
lstm_831_5025837:	љ#
lstm_831_5025839:	dљ
lstm_831_5025841:	љ#
lstm_832_5025844:	d╚#
lstm_832_5025846:	2╚
lstm_832_5025848:	╚"
lstm_833_5025851:2("
lstm_833_5025853:
(
lstm_833_5025855:(#
dense_277_5025858:

dense_277_5025860:
identityѕб!dense_277/StatefulPartitionedCallб lstm_831/StatefulPartitionedCallб lstm_832/StatefulPartitionedCallб lstm_833/StatefulPartitionedCallЊ
 lstm_831/StatefulPartitionedCallStatefulPartitionedCalllstm_831_inputlstm_831_5025837lstm_831_5025839lstm_831_5025841*
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
E__inference_lstm_831_layer_call_and_return_conditional_losses_5024868«
 lstm_832/StatefulPartitionedCallStatefulPartitionedCall)lstm_831/StatefulPartitionedCall:output:0lstm_832_5025844lstm_832_5025846lstm_832_5025848*
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
E__inference_lstm_832_layer_call_and_return_conditional_losses_5025018ф
 lstm_833/StatefulPartitionedCallStatefulPartitionedCall)lstm_832/StatefulPartitionedCall:output:0lstm_833_5025851lstm_833_5025853lstm_833_5025855*
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
E__inference_lstm_833_layer_call_and_return_conditional_losses_5025168џ
!dense_277/StatefulPartitionedCallStatefulPartitionedCall)lstm_833/StatefulPartitionedCall:output:0dense_277_5025858dense_277_5025860*
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
GPU 2J 8ѓ *O
fJRH
F__inference_dense_277_layer_call_and_return_conditional_losses_5025186y
IdentityIdentity*dense_277/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp"^dense_277/StatefulPartitionedCall!^lstm_831/StatefulPartitionedCall!^lstm_832/StatefulPartitionedCall!^lstm_833/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2F
!dense_277/StatefulPartitionedCall!dense_277/StatefulPartitionedCall2D
 lstm_831/StatefulPartitionedCall lstm_831/StatefulPartitionedCall2D
 lstm_832/StatefulPartitionedCall lstm_832/StatefulPartitionedCall2D
 lstm_833/StatefulPartitionedCall lstm_833/StatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_831_input
║
╚
while_cond_5023749
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5023749___redundant_placeholder05
1while_while_cond_5023749___redundant_placeholder15
1while_while_cond_5023749___redundant_placeholder25
1while_while_cond_5023749___redundant_placeholder3
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
Ј#
ы
while_body_5023750
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_831_5023774_0:	љ0
while_lstm_cell_831_5023776_0:	dљ,
while_lstm_cell_831_5023778_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_831_5023774:	љ.
while_lstm_cell_831_5023776:	dљ*
while_lstm_cell_831_5023778:	љѕб+while/lstm_cell_831/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0╝
+while/lstm_cell_831/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_831_5023774_0while_lstm_cell_831_5023776_0while_lstm_cell_831_5023778_0*
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
J__inference_lstm_cell_831_layer_call_and_return_conditional_losses_5023736П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_831/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_831/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dЉ
while/Identity_5Identity4while/lstm_cell_831/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dz

while/NoOpNoOp,^while/lstm_cell_831/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_831_5023774while_lstm_cell_831_5023774_0"<
while_lstm_cell_831_5023776while_lstm_cell_831_5023776_0"<
while_lstm_cell_831_5023778while_lstm_cell_831_5023778_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2Z
+while/lstm_cell_831/StatefulPartitionedCall+while/lstm_cell_831/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_833_layer_call_fn_5028080
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
E__inference_lstm_833_layer_call_and_return_conditional_losses_5024519o
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
Л8
┌
while_body_5027369
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_831_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_831_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_831_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_831_matmul_readvariableop_resource:	љG
4while_lstm_cell_831_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_831_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_831/BiasAdd/ReadVariableOpб)while/lstm_cell_831/MatMul/ReadVariableOpб+while/lstm_cell_831/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_831/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_831_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_831/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_831/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_831/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_831_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_831/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_831/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_831/addAddV2$while/lstm_cell_831/MatMul:product:0&while/lstm_cell_831/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_831/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_831_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_831/BiasAddBiasAddwhile/lstm_cell_831/add:z:02while/lstm_cell_831/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_831/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_831/splitSplit,while/lstm_cell_831/split/split_dim:output:0$while/lstm_cell_831/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_831/SigmoidSigmoid"while/lstm_cell_831/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_831/Sigmoid_1Sigmoid"while/lstm_cell_831/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_831/mulMul!while/lstm_cell_831/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_831/ReluRelu"while/lstm_cell_831/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_831/mul_1Mulwhile/lstm_cell_831/Sigmoid:y:0&while/lstm_cell_831/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_831/add_1AddV2while/lstm_cell_831/mul:z:0while/lstm_cell_831/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_831/Sigmoid_2Sigmoid"while/lstm_cell_831/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_831/Relu_1Reluwhile/lstm_cell_831/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_831/mul_2Mul!while/lstm_cell_831/Sigmoid_2:y:0(while/lstm_cell_831/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_831/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_831/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_831/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_831/BiasAdd/ReadVariableOp*^while/lstm_cell_831/MatMul/ReadVariableOp,^while/lstm_cell_831/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_831_biasadd_readvariableop_resource5while_lstm_cell_831_biasadd_readvariableop_resource_0"n
4while_lstm_cell_831_matmul_1_readvariableop_resource6while_lstm_cell_831_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_831_matmul_readvariableop_resource4while_lstm_cell_831_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_831/BiasAdd/ReadVariableOp*while/lstm_cell_831/BiasAdd/ReadVariableOp2V
)while/lstm_cell_831/MatMul/ReadVariableOp)while/lstm_cell_831/MatMul/ReadVariableOp2Z
+while/lstm_cell_831/MatMul_1/ReadVariableOp+while/lstm_cell_831/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
№
Э
/__inference_lstm_cell_831_layer_call_fn_5028738

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
J__inference_lstm_cell_831_layer_call_and_return_conditional_losses_5023882o
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
№
Э
/__inference_lstm_cell_832_layer_call_fn_5028819

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
J__inference_lstm_cell_832_layer_call_and_return_conditional_losses_5024086o
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
║
╚
while_cond_5027082
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5027082___redundant_placeholder05
1while_while_cond_5027082___redundant_placeholder15
1while_while_cond_5027082___redundant_placeholder25
1while_while_cond_5027082___redundant_placeholder3
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
while_body_5027083
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_831_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_831_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_831_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_831_matmul_readvariableop_resource:	љG
4while_lstm_cell_831_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_831_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_831/BiasAdd/ReadVariableOpб)while/lstm_cell_831/MatMul/ReadVariableOpб+while/lstm_cell_831/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_831/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_831_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_831/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_831/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_831/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_831_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_831/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_831/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_831/addAddV2$while/lstm_cell_831/MatMul:product:0&while/lstm_cell_831/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_831/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_831_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_831/BiasAddBiasAddwhile/lstm_cell_831/add:z:02while/lstm_cell_831/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_831/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_831/splitSplit,while/lstm_cell_831/split/split_dim:output:0$while/lstm_cell_831/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_831/SigmoidSigmoid"while/lstm_cell_831/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_831/Sigmoid_1Sigmoid"while/lstm_cell_831/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_831/mulMul!while/lstm_cell_831/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_831/ReluRelu"while/lstm_cell_831/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_831/mul_1Mulwhile/lstm_cell_831/Sigmoid:y:0&while/lstm_cell_831/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_831/add_1AddV2while/lstm_cell_831/mul:z:0while/lstm_cell_831/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_831/Sigmoid_2Sigmoid"while/lstm_cell_831/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_831/Relu_1Reluwhile/lstm_cell_831/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_831/mul_2Mul!while/lstm_cell_831/Sigmoid_2:y:0(while/lstm_cell_831/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_831/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_831/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_831/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_831/BiasAdd/ReadVariableOp*^while/lstm_cell_831/MatMul/ReadVariableOp,^while/lstm_cell_831/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_831_biasadd_readvariableop_resource5while_lstm_cell_831_biasadd_readvariableop_resource_0"n
4while_lstm_cell_831_matmul_1_readvariableop_resource6while_lstm_cell_831_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_831_matmul_readvariableop_resource4while_lstm_cell_831_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_831/BiasAdd/ReadVariableOp*while/lstm_cell_831/BiasAdd/ReadVariableOp2V
)while/lstm_cell_831/MatMul/ReadVariableOp)while/lstm_cell_831/MatMul/ReadVariableOp2Z
+while/lstm_cell_831/MatMul_1/ReadVariableOp+while/lstm_cell_831/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
»8
ј
E__inference_lstm_832_layer_call_and_return_conditional_losses_5024360

inputs(
lstm_cell_832_5024278:	d╚(
lstm_cell_832_5024280:	2╚$
lstm_cell_832_5024282:	╚
identityѕб%lstm_cell_832/StatefulPartitionedCallбwhile;
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
%lstm_cell_832/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_832_5024278lstm_cell_832_5024280lstm_cell_832_5024282*
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
J__inference_lstm_cell_832_layer_call_and_return_conditional_losses_5024232n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_832_5024278lstm_cell_832_5024280lstm_cell_832_5024282*
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
while_body_5024291*
condR
while_cond_5024290*K
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
NoOpNoOp&^lstm_cell_832/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2N
%lstm_cell_832/StatefulPartitionedCall%lstm_cell_832/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
Н
Ё
J__inference_lstm_cell_833_layer_call_and_return_conditional_losses_5028966

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
аK
Ц
E__inference_lstm_832_layer_call_and_return_conditional_losses_5027640
inputs_0?
,lstm_cell_832_matmul_readvariableop_resource:	d╚A
.lstm_cell_832_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_832_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_832/BiasAdd/ReadVariableOpб#lstm_cell_832/MatMul/ReadVariableOpб%lstm_cell_832/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_832/MatMul/ReadVariableOpReadVariableOp,lstm_cell_832_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_832/MatMulMatMulstrided_slice_2:output:0+lstm_cell_832/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_832/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_832_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_832/MatMul_1MatMulzeros:output:0-lstm_cell_832/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_832/addAddV2lstm_cell_832/MatMul:product:0 lstm_cell_832/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_832/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_832_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_832/BiasAddBiasAddlstm_cell_832/add:z:0,lstm_cell_832/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_832/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_832/splitSplit&lstm_cell_832/split/split_dim:output:0lstm_cell_832/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_832/SigmoidSigmoidlstm_cell_832/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_832/Sigmoid_1Sigmoidlstm_cell_832/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_832/mulMullstm_cell_832/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_832/ReluRelulstm_cell_832/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_832/mul_1Mullstm_cell_832/Sigmoid:y:0 lstm_cell_832/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_832/add_1AddV2lstm_cell_832/mul:z:0lstm_cell_832/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_832/Sigmoid_2Sigmoidlstm_cell_832/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_832/Relu_1Relulstm_cell_832/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_832/mul_2Mullstm_cell_832/Sigmoid_2:y:0"lstm_cell_832/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_832_matmul_readvariableop_resource.lstm_cell_832_matmul_1_readvariableop_resource-lstm_cell_832_biasadd_readvariableop_resource*
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
while_body_5027556*
condR
while_cond_5027555*K
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
NoOpNoOp%^lstm_cell_832/BiasAdd/ReadVariableOp$^lstm_cell_832/MatMul/ReadVariableOp&^lstm_cell_832/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_832/BiasAdd/ReadVariableOp$lstm_cell_832/BiasAdd/ReadVariableOp2J
#lstm_cell_832/MatMul/ReadVariableOp#lstm_cell_832/MatMul/ReadVariableOp2N
%lstm_cell_832/MatMul_1/ReadVariableOp%lstm_cell_832/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
Ѓ
и
*__inference_lstm_831_layer_call_fn_5026881

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
E__inference_lstm_831_layer_call_and_return_conditional_losses_5025714s
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
Ш

ц
0__inference_sequential_277_layer_call_fn_5025218
lstm_831_input
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
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCalllstm_831_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8ѓ *T
fORM
K__inference_sequential_277_layer_call_and_return_conditional_losses_5025193o
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
_user_specified_namelstm_831_input
Ш

ц
0__inference_sequential_277_layer_call_fn_5025834
lstm_831_input
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
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCalllstm_831_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8ѓ *T
fORM
K__inference_sequential_277_layer_call_and_return_conditional_losses_5025782o
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
_user_specified_namelstm_831_input
Ж
Ѓ
K__inference_sequential_277_layer_call_and_return_conditional_losses_5025894
lstm_831_input#
lstm_831_5025867:	љ#
lstm_831_5025869:	dљ
lstm_831_5025871:	љ#
lstm_832_5025874:	d╚#
lstm_832_5025876:	2╚
lstm_832_5025878:	╚"
lstm_833_5025881:2("
lstm_833_5025883:
(
lstm_833_5025885:(#
dense_277_5025888:

dense_277_5025890:
identityѕб!dense_277/StatefulPartitionedCallб lstm_831/StatefulPartitionedCallб lstm_832/StatefulPartitionedCallб lstm_833/StatefulPartitionedCallЊ
 lstm_831/StatefulPartitionedCallStatefulPartitionedCalllstm_831_inputlstm_831_5025867lstm_831_5025869lstm_831_5025871*
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
E__inference_lstm_831_layer_call_and_return_conditional_losses_5025714«
 lstm_832/StatefulPartitionedCallStatefulPartitionedCall)lstm_831/StatefulPartitionedCall:output:0lstm_832_5025874lstm_832_5025876lstm_832_5025878*
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
E__inference_lstm_832_layer_call_and_return_conditional_losses_5025549ф
 lstm_833/StatefulPartitionedCallStatefulPartitionedCall)lstm_832/StatefulPartitionedCall:output:0lstm_833_5025881lstm_833_5025883lstm_833_5025885*
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
E__inference_lstm_833_layer_call_and_return_conditional_losses_5025384џ
!dense_277/StatefulPartitionedCallStatefulPartitionedCall)lstm_833/StatefulPartitionedCall:output:0dense_277_5025888dense_277_5025890*
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
GPU 2J 8ѓ *O
fJRH
F__inference_dense_277_layer_call_and_return_conditional_losses_5025186y
IdentityIdentity*dense_277/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp"^dense_277/StatefulPartitionedCall!^lstm_831/StatefulPartitionedCall!^lstm_832/StatefulPartitionedCall!^lstm_833/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2F
!dense_277/StatefulPartitionedCall!dense_277/StatefulPartitionedCall2D
 lstm_831/StatefulPartitionedCall lstm_831/StatefulPartitionedCall2D
 lstm_832/StatefulPartitionedCall lstm_832/StatefulPartitionedCall2D
 lstm_833/StatefulPartitionedCall lstm_833/StatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_831_input
ЬW
Ц
 __inference__traced_save_5029141
file_prefix/
+savev2_dense_277_kernel_read_readvariableop-
)savev2_dense_277_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_831_lstm_cell_831_kernel_read_readvariableopF
Bsavev2_lstm_831_lstm_cell_831_recurrent_kernel_read_readvariableop:
6savev2_lstm_831_lstm_cell_831_bias_read_readvariableop<
8savev2_lstm_832_lstm_cell_832_kernel_read_readvariableopF
Bsavev2_lstm_832_lstm_cell_832_recurrent_kernel_read_readvariableop:
6savev2_lstm_832_lstm_cell_832_bias_read_readvariableop<
8savev2_lstm_833_lstm_cell_833_kernel_read_readvariableopF
Bsavev2_lstm_833_lstm_cell_833_recurrent_kernel_read_readvariableop:
6savev2_lstm_833_lstm_cell_833_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_277_kernel_m_read_readvariableop4
0savev2_adam_dense_277_bias_m_read_readvariableopC
?savev2_adam_lstm_831_lstm_cell_831_kernel_m_read_readvariableopM
Isavev2_adam_lstm_831_lstm_cell_831_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_831_lstm_cell_831_bias_m_read_readvariableopC
?savev2_adam_lstm_832_lstm_cell_832_kernel_m_read_readvariableopM
Isavev2_adam_lstm_832_lstm_cell_832_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_832_lstm_cell_832_bias_m_read_readvariableopC
?savev2_adam_lstm_833_lstm_cell_833_kernel_m_read_readvariableopM
Isavev2_adam_lstm_833_lstm_cell_833_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_833_lstm_cell_833_bias_m_read_readvariableop6
2savev2_adam_dense_277_kernel_v_read_readvariableop4
0savev2_adam_dense_277_bias_v_read_readvariableopC
?savev2_adam_lstm_831_lstm_cell_831_kernel_v_read_readvariableopM
Isavev2_adam_lstm_831_lstm_cell_831_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_831_lstm_cell_831_bias_v_read_readvariableopC
?savev2_adam_lstm_832_lstm_cell_832_kernel_v_read_readvariableopM
Isavev2_adam_lstm_832_lstm_cell_832_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_832_lstm_cell_832_bias_v_read_readvariableopC
?savev2_adam_lstm_833_lstm_cell_833_kernel_v_read_readvariableopM
Isavev2_adam_lstm_833_lstm_cell_833_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_833_lstm_cell_833_bias_v_read_readvariableop
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
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ­
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_277_kernel_read_readvariableop)savev2_dense_277_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_831_lstm_cell_831_kernel_read_readvariableopBsavev2_lstm_831_lstm_cell_831_recurrent_kernel_read_readvariableop6savev2_lstm_831_lstm_cell_831_bias_read_readvariableop8savev2_lstm_832_lstm_cell_832_kernel_read_readvariableopBsavev2_lstm_832_lstm_cell_832_recurrent_kernel_read_readvariableop6savev2_lstm_832_lstm_cell_832_bias_read_readvariableop8savev2_lstm_833_lstm_cell_833_kernel_read_readvariableopBsavev2_lstm_833_lstm_cell_833_recurrent_kernel_read_readvariableop6savev2_lstm_833_lstm_cell_833_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_277_kernel_m_read_readvariableop0savev2_adam_dense_277_bias_m_read_readvariableop?savev2_adam_lstm_831_lstm_cell_831_kernel_m_read_readvariableopIsavev2_adam_lstm_831_lstm_cell_831_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_831_lstm_cell_831_bias_m_read_readvariableop?savev2_adam_lstm_832_lstm_cell_832_kernel_m_read_readvariableopIsavev2_adam_lstm_832_lstm_cell_832_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_832_lstm_cell_832_bias_m_read_readvariableop?savev2_adam_lstm_833_lstm_cell_833_kernel_m_read_readvariableopIsavev2_adam_lstm_833_lstm_cell_833_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_833_lstm_cell_833_bias_m_read_readvariableop2savev2_adam_dense_277_kernel_v_read_readvariableop0savev2_adam_dense_277_bias_v_read_readvariableop?savev2_adam_lstm_831_lstm_cell_831_kernel_v_read_readvariableopIsavev2_adam_lstm_831_lstm_cell_831_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_831_lstm_cell_831_bias_v_read_readvariableop?savev2_adam_lstm_832_lstm_cell_832_kernel_v_read_readvariableopIsavev2_adam_lstm_832_lstm_cell_832_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_832_lstm_cell_832_bias_v_read_readvariableop?savev2_adam_lstm_833_lstm_cell_833_kernel_v_read_readvariableopIsavev2_adam_lstm_833_lstm_cell_833_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_833_lstm_cell_833_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
║
╚
while_cond_5025464
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5025464___redundant_placeholder05
1while_while_cond_5025464___redundant_placeholder15
1while_while_cond_5025464___redundant_placeholder25
1while_while_cond_5025464___redundant_placeholder3
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
Ј#
ы
while_body_5023941
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_831_5023965_0:	љ0
while_lstm_cell_831_5023967_0:	dљ,
while_lstm_cell_831_5023969_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_831_5023965:	љ.
while_lstm_cell_831_5023967:	dљ*
while_lstm_cell_831_5023969:	љѕб+while/lstm_cell_831/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0╝
+while/lstm_cell_831/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_831_5023965_0while_lstm_cell_831_5023967_0while_lstm_cell_831_5023969_0*
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
J__inference_lstm_cell_831_layer_call_and_return_conditional_losses_5023882П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_831/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_831/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dЉ
while/Identity_5Identity4while/lstm_cell_831/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dz

while/NoOpNoOp,^while/lstm_cell_831/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_831_5023965while_lstm_cell_831_5023965_0"<
while_lstm_cell_831_5023967while_lstm_cell_831_5023967_0"<
while_lstm_cell_831_5023969while_lstm_cell_831_5023969_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2Z
+while/lstm_cell_831/StatefulPartitionedCall+while/lstm_cell_831/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_5026939
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5026939___redundant_placeholder05
1while_while_cond_5026939___redundant_placeholder15
1while_while_cond_5026939___redundant_placeholder25
1while_while_cond_5026939___redundant_placeholder3
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
е8
І
E__inference_lstm_833_layer_call_and_return_conditional_losses_5024710

inputs'
lstm_cell_833_5024628:2('
lstm_cell_833_5024630:
(#
lstm_cell_833_5024632:(
identityѕб%lstm_cell_833/StatefulPartitionedCallбwhile;
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
%lstm_cell_833/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_833_5024628lstm_cell_833_5024630lstm_cell_833_5024632*
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
J__inference_lstm_cell_833_layer_call_and_return_conditional_losses_5024582n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_833_5024628lstm_cell_833_5024630lstm_cell_833_5024632*
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
while_body_5024641*
condR
while_cond_5024640*K
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
NoOpNoOp&^lstm_cell_833/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2N
%lstm_cell_833/StatefulPartitionedCall%lstm_cell_833/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  2
 
_user_specified_nameinputs
Ѕ#
в
while_body_5024450
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_833_5024474_0:2(/
while_lstm_cell_833_5024476_0:
(+
while_lstm_cell_833_5024478_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_833_5024474:2(-
while_lstm_cell_833_5024476:
()
while_lstm_cell_833_5024478:(ѕб+while/lstm_cell_833/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╝
+while/lstm_cell_833/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_833_5024474_0while_lstm_cell_833_5024476_0while_lstm_cell_833_5024478_0*
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
J__inference_lstm_cell_833_layer_call_and_return_conditional_losses_5024436П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_833/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_833/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         
Љ
while/Identity_5Identity4while/lstm_cell_833/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         
z

while/NoOpNoOp,^while/lstm_cell_833/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_833_5024474while_lstm_cell_833_5024474_0"<
while_lstm_cell_833_5024476while_lstm_cell_833_5024476_0"<
while_lstm_cell_833_5024478while_lstm_cell_833_5024478_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2Z
+while/lstm_cell_833/StatefulPartitionedCall+while/lstm_cell_833/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
Ј#
ы
while_body_5024100
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_832_5024124_0:	d╚0
while_lstm_cell_832_5024126_0:	2╚,
while_lstm_cell_832_5024128_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_832_5024124:	d╚.
while_lstm_cell_832_5024126:	2╚*
while_lstm_cell_832_5024128:	╚ѕб+while/lstm_cell_832/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0╝
+while/lstm_cell_832/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_832_5024124_0while_lstm_cell_832_5024126_0while_lstm_cell_832_5024128_0*
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
J__inference_lstm_cell_832_layer_call_and_return_conditional_losses_5024086П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_832/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_832/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         2Љ
while/Identity_5Identity4while/lstm_cell_832/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         2z

while/NoOpNoOp,^while/lstm_cell_832/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_832_5024124while_lstm_cell_832_5024124_0"<
while_lstm_cell_832_5024126while_lstm_cell_832_5024126_0"<
while_lstm_cell_832_5024128while_lstm_cell_832_5024128_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2Z
+while/lstm_cell_832/StatefulPartitionedCall+while/lstm_cell_832/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
─8
н
while_body_5028172
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_833_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_833_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_833_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_833_matmul_readvariableop_resource:2(F
4while_lstm_cell_833_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_833_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_833/BiasAdd/ReadVariableOpб)while/lstm_cell_833/MatMul/ReadVariableOpб+while/lstm_cell_833/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_833/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_833_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_833/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_833/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_833/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_833_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_833/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_833/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_833/addAddV2$while/lstm_cell_833/MatMul:product:0&while/lstm_cell_833/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_833/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_833_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_833/BiasAddBiasAddwhile/lstm_cell_833/add:z:02while/lstm_cell_833/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_833/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_833/splitSplit,while/lstm_cell_833/split/split_dim:output:0$while/lstm_cell_833/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_833/SigmoidSigmoid"while/lstm_cell_833/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_833/Sigmoid_1Sigmoid"while/lstm_cell_833/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_833/mulMul!while/lstm_cell_833/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_833/ReluRelu"while/lstm_cell_833/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_833/mul_1Mulwhile/lstm_cell_833/Sigmoid:y:0&while/lstm_cell_833/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_833/add_1AddV2while/lstm_cell_833/mul:z:0while/lstm_cell_833/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_833/Sigmoid_2Sigmoid"while/lstm_cell_833/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_833/Relu_1Reluwhile/lstm_cell_833/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_833/mul_2Mul!while/lstm_cell_833/Sigmoid_2:y:0(while/lstm_cell_833/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_833/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_833/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_833/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_833/BiasAdd/ReadVariableOp*^while/lstm_cell_833/MatMul/ReadVariableOp,^while/lstm_cell_833/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_833_biasadd_readvariableop_resource5while_lstm_cell_833_biasadd_readvariableop_resource_0"n
4while_lstm_cell_833_matmul_1_readvariableop_resource6while_lstm_cell_833_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_833_matmul_readvariableop_resource4while_lstm_cell_833_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_833/BiasAdd/ReadVariableOp*while/lstm_cell_833/BiasAdd/ReadVariableOp2V
)while/lstm_cell_833/MatMul/ReadVariableOp)while/lstm_cell_833/MatMul/ReadVariableOp2Z
+while/lstm_cell_833/MatMul_1/ReadVariableOp+while/lstm_cell_833/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Зц
ю
#__inference__traced_restore_5029271
file_prefix3
!assignvariableop_dense_277_kernel:
/
!assignvariableop_1_dense_277_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_831_lstm_cell_831_kernel:	љM
:assignvariableop_8_lstm_831_lstm_cell_831_recurrent_kernel:	dљ=
.assignvariableop_9_lstm_831_lstm_cell_831_bias:	љD
1assignvariableop_10_lstm_832_lstm_cell_832_kernel:	d╚N
;assignvariableop_11_lstm_832_lstm_cell_832_recurrent_kernel:	2╚>
/assignvariableop_12_lstm_832_lstm_cell_832_bias:	╚C
1assignvariableop_13_lstm_833_lstm_cell_833_kernel:2(M
;assignvariableop_14_lstm_833_lstm_cell_833_recurrent_kernel:
(=
/assignvariableop_15_lstm_833_lstm_cell_833_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_277_kernel_m:
7
)assignvariableop_19_adam_dense_277_bias_m:K
8assignvariableop_20_adam_lstm_831_lstm_cell_831_kernel_m:	љU
Bassignvariableop_21_adam_lstm_831_lstm_cell_831_recurrent_kernel_m:	dљE
6assignvariableop_22_adam_lstm_831_lstm_cell_831_bias_m:	љK
8assignvariableop_23_adam_lstm_832_lstm_cell_832_kernel_m:	d╚U
Bassignvariableop_24_adam_lstm_832_lstm_cell_832_recurrent_kernel_m:	2╚E
6assignvariableop_25_adam_lstm_832_lstm_cell_832_bias_m:	╚J
8assignvariableop_26_adam_lstm_833_lstm_cell_833_kernel_m:2(T
Bassignvariableop_27_adam_lstm_833_lstm_cell_833_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_833_lstm_cell_833_bias_m:(=
+assignvariableop_29_adam_dense_277_kernel_v:
7
)assignvariableop_30_adam_dense_277_bias_v:K
8assignvariableop_31_adam_lstm_831_lstm_cell_831_kernel_v:	љU
Bassignvariableop_32_adam_lstm_831_lstm_cell_831_recurrent_kernel_v:	dљE
6assignvariableop_33_adam_lstm_831_lstm_cell_831_bias_v:	љK
8assignvariableop_34_adam_lstm_832_lstm_cell_832_kernel_v:	d╚U
Bassignvariableop_35_adam_lstm_832_lstm_cell_832_recurrent_kernel_v:	2╚E
6assignvariableop_36_adam_lstm_832_lstm_cell_832_bias_v:	╚J
8assignvariableop_37_adam_lstm_833_lstm_cell_833_kernel_v:2(T
Bassignvariableop_38_adam_lstm_833_lstm_cell_833_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_833_lstm_cell_833_bias_v:(
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
:ї
AssignVariableOpAssignVariableOp!assignvariableop_dense_277_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_277_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_831_lstm_cell_831_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_831_lstm_cell_831_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_831_lstm_cell_831_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_832_lstm_cell_832_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_832_lstm_cell_832_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_832_lstm_cell_832_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_833_lstm_cell_833_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_833_lstm_cell_833_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_833_lstm_cell_833_biasIdentity_15:output:0"/device:CPU:0*
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
:ю
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_277_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_277_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_831_lstm_cell_831_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_831_lstm_cell_831_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_831_lstm_cell_831_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_832_lstm_cell_832_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_832_lstm_cell_832_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_832_lstm_cell_832_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_833_lstm_cell_833_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_833_lstm_cell_833_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_833_lstm_cell_833_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:ю
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_277_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_277_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_831_lstm_cell_831_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_831_lstm_cell_831_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_831_lstm_cell_831_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_832_lstm_cell_832_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_832_lstm_cell_832_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_832_lstm_cell_832_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_833_lstm_cell_833_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_833_lstm_cell_833_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_833_lstm_cell_833_bias_vIdentity_39:output:0"/device:CPU:0*
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
─8
н
while_body_5028458
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_833_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_833_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_833_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_833_matmul_readvariableop_resource:2(F
4while_lstm_cell_833_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_833_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_833/BiasAdd/ReadVariableOpб)while/lstm_cell_833/MatMul/ReadVariableOpб+while/lstm_cell_833/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_833/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_833_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_833/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_833/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_833/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_833_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_833/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_833/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_833/addAddV2$while/lstm_cell_833/MatMul:product:0&while/lstm_cell_833/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_833/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_833_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_833/BiasAddBiasAddwhile/lstm_cell_833/add:z:02while/lstm_cell_833/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_833/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_833/splitSplit,while/lstm_cell_833/split/split_dim:output:0$while/lstm_cell_833/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_833/SigmoidSigmoid"while/lstm_cell_833/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_833/Sigmoid_1Sigmoid"while/lstm_cell_833/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_833/mulMul!while/lstm_cell_833/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_833/ReluRelu"while/lstm_cell_833/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_833/mul_1Mulwhile/lstm_cell_833/Sigmoid:y:0&while/lstm_cell_833/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_833/add_1AddV2while/lstm_cell_833/mul:z:0while/lstm_cell_833/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_833/Sigmoid_2Sigmoid"while/lstm_cell_833/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_833/Relu_1Reluwhile/lstm_cell_833/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_833/mul_2Mul!while/lstm_cell_833/Sigmoid_2:y:0(while/lstm_cell_833/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_833/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_833/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_833/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_833/BiasAdd/ReadVariableOp*^while/lstm_cell_833/MatMul/ReadVariableOp,^while/lstm_cell_833/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_833_biasadd_readvariableop_resource5while_lstm_cell_833_biasadd_readvariableop_resource_0"n
4while_lstm_cell_833_matmul_1_readvariableop_resource6while_lstm_cell_833_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_833_matmul_readvariableop_resource4while_lstm_cell_833_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_833/BiasAdd/ReadVariableOp*while/lstm_cell_833/BiasAdd/ReadVariableOp2V
)while/lstm_cell_833/MatMul/ReadVariableOp)while/lstm_cell_833/MatMul/ReadVariableOp2Z
+while/lstm_cell_833/MatMul_1/ReadVariableOp+while/lstm_cell_833/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
█
е
*sequential_277_lstm_831_while_cond_5023300L
Hsequential_277_lstm_831_while_sequential_277_lstm_831_while_loop_counterR
Nsequential_277_lstm_831_while_sequential_277_lstm_831_while_maximum_iterations-
)sequential_277_lstm_831_while_placeholder/
+sequential_277_lstm_831_while_placeholder_1/
+sequential_277_lstm_831_while_placeholder_2/
+sequential_277_lstm_831_while_placeholder_3N
Jsequential_277_lstm_831_while_less_sequential_277_lstm_831_strided_slice_1e
asequential_277_lstm_831_while_sequential_277_lstm_831_while_cond_5023300___redundant_placeholder0e
asequential_277_lstm_831_while_sequential_277_lstm_831_while_cond_5023300___redundant_placeholder1e
asequential_277_lstm_831_while_sequential_277_lstm_831_while_cond_5023300___redundant_placeholder2e
asequential_277_lstm_831_while_sequential_277_lstm_831_while_cond_5023300___redundant_placeholder3*
&sequential_277_lstm_831_while_identity
┬
"sequential_277/lstm_831/while/LessLess)sequential_277_lstm_831_while_placeholderJsequential_277_lstm_831_while_less_sequential_277_lstm_831_strided_slice_1*
T0*
_output_shapes
: {
&sequential_277/lstm_831/while/IdentityIdentity&sequential_277/lstm_831/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_277_lstm_831_while_identity/sequential_277/lstm_831/while/Identity:output:0*(
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
Ј#
ы
while_body_5024291
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_832_5024315_0:	d╚0
while_lstm_cell_832_5024317_0:	2╚,
while_lstm_cell_832_5024319_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_832_5024315:	d╚.
while_lstm_cell_832_5024317:	2╚*
while_lstm_cell_832_5024319:	╚ѕб+while/lstm_cell_832/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0╝
+while/lstm_cell_832/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_832_5024315_0while_lstm_cell_832_5024317_0while_lstm_cell_832_5024319_0*
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
J__inference_lstm_cell_832_layer_call_and_return_conditional_losses_5024232П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_832/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_832/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         2Љ
while/Identity_5Identity4while/lstm_cell_832/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         2z

while/NoOpNoOp,^while/lstm_cell_832/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_832_5024315while_lstm_cell_832_5024315_0"<
while_lstm_cell_832_5024317while_lstm_cell_832_5024317_0"<
while_lstm_cell_832_5024319while_lstm_cell_832_5024319_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2Z
+while/lstm_cell_832/StatefulPartitionedCall+while/lstm_cell_832/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
║
╚
while_cond_5023940
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5023940___redundant_placeholder05
1while_while_cond_5023940___redundant_placeholder15
1while_while_cond_5023940___redundant_placeholder25
1while_while_cond_5023940___redundant_placeholder3
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
while_cond_5024449
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5024449___redundant_placeholder05
1while_while_cond_5024449___redundant_placeholder15
1while_while_cond_5024449___redundant_placeholder25
1while_while_cond_5024449___redundant_placeholder3
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
while_cond_5024099
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5024099___redundant_placeholder05
1while_while_cond_5024099___redundant_placeholder15
1while_while_cond_5024099___redundant_placeholder25
1while_while_cond_5024099___redundant_placeholder3
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
═
Ѓ
J__inference_lstm_cell_833_layer_call_and_return_conditional_losses_5024582

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
Г
╣
*__inference_lstm_832_layer_call_fn_5027475
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
E__inference_lstm_832_layer_call_and_return_conditional_losses_5024360|
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
═
Ѓ
J__inference_lstm_cell_833_layer_call_and_return_conditional_losses_5024436

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
Л8
┌
while_body_5027556
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_832_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_832_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_832_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_832_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_832_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_832_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_832/BiasAdd/ReadVariableOpб)while/lstm_cell_832/MatMul/ReadVariableOpб+while/lstm_cell_832/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_832/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_832_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_832/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_832/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_832/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_832_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_832/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_832/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_832/addAddV2$while/lstm_cell_832/MatMul:product:0&while/lstm_cell_832/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_832/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_832_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_832/BiasAddBiasAddwhile/lstm_cell_832/add:z:02while/lstm_cell_832/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_832/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_832/splitSplit,while/lstm_cell_832/split/split_dim:output:0$while/lstm_cell_832/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_832/SigmoidSigmoid"while/lstm_cell_832/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_832/Sigmoid_1Sigmoid"while/lstm_cell_832/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_832/mulMul!while/lstm_cell_832/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_832/ReluRelu"while/lstm_cell_832/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_832/mul_1Mulwhile/lstm_cell_832/Sigmoid:y:0&while/lstm_cell_832/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_832/add_1AddV2while/lstm_cell_832/mul:z:0while/lstm_cell_832/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_832/Sigmoid_2Sigmoid"while/lstm_cell_832/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_832/Relu_1Reluwhile/lstm_cell_832/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_832/mul_2Mul!while/lstm_cell_832/Sigmoid_2:y:0(while/lstm_cell_832/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_832/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_832/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_832/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_832/BiasAdd/ReadVariableOp*^while/lstm_cell_832/MatMul/ReadVariableOp,^while/lstm_cell_832/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_832_biasadd_readvariableop_resource5while_lstm_cell_832_biasadd_readvariableop_resource_0"n
4while_lstm_cell_832_matmul_1_readvariableop_resource6while_lstm_cell_832_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_832_matmul_readvariableop_resource4while_lstm_cell_832_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_832/BiasAdd/ReadVariableOp*while/lstm_cell_832/BiasAdd/ReadVariableOp2V
)while/lstm_cell_832/MatMul/ReadVariableOp)while/lstm_cell_832/MatMul/ReadVariableOp2Z
+while/lstm_cell_832/MatMul_1/ReadVariableOp+while/lstm_cell_832/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
АC
Щ

lstm_831_while_body_5026469.
*lstm_831_while_lstm_831_while_loop_counter4
0lstm_831_while_lstm_831_while_maximum_iterations
lstm_831_while_placeholder 
lstm_831_while_placeholder_1 
lstm_831_while_placeholder_2 
lstm_831_while_placeholder_3-
)lstm_831_while_lstm_831_strided_slice_1_0i
elstm_831_while_tensorarrayv2read_tensorlistgetitem_lstm_831_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_831_while_lstm_cell_831_matmul_readvariableop_resource_0:	љR
?lstm_831_while_lstm_cell_831_matmul_1_readvariableop_resource_0:	dљM
>lstm_831_while_lstm_cell_831_biasadd_readvariableop_resource_0:	љ
lstm_831_while_identity
lstm_831_while_identity_1
lstm_831_while_identity_2
lstm_831_while_identity_3
lstm_831_while_identity_4
lstm_831_while_identity_5+
'lstm_831_while_lstm_831_strided_slice_1g
clstm_831_while_tensorarrayv2read_tensorlistgetitem_lstm_831_tensorarrayunstack_tensorlistfromtensorN
;lstm_831_while_lstm_cell_831_matmul_readvariableop_resource:	љP
=lstm_831_while_lstm_cell_831_matmul_1_readvariableop_resource:	dљK
<lstm_831_while_lstm_cell_831_biasadd_readvariableop_resource:	љѕб3lstm_831/while/lstm_cell_831/BiasAdd/ReadVariableOpб2lstm_831/while/lstm_cell_831/MatMul/ReadVariableOpб4lstm_831/while/lstm_cell_831/MatMul_1/ReadVariableOpЉ
@lstm_831/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       М
2lstm_831/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_831_while_tensorarrayv2read_tensorlistgetitem_lstm_831_tensorarrayunstack_tensorlistfromtensor_0lstm_831_while_placeholderIlstm_831/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0▒
2lstm_831/while/lstm_cell_831/MatMul/ReadVariableOpReadVariableOp=lstm_831_while_lstm_cell_831_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0О
#lstm_831/while/lstm_cell_831/MatMulMatMul9lstm_831/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_831/while/lstm_cell_831/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љх
4lstm_831/while/lstm_cell_831/MatMul_1/ReadVariableOpReadVariableOp?lstm_831_while_lstm_cell_831_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Й
%lstm_831/while/lstm_cell_831/MatMul_1MatMullstm_831_while_placeholder_2<lstm_831/while/lstm_cell_831/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ╝
 lstm_831/while/lstm_cell_831/addAddV2-lstm_831/while/lstm_cell_831/MatMul:product:0/lstm_831/while/lstm_cell_831/MatMul_1:product:0*
T0*(
_output_shapes
:         љ»
3lstm_831/while/lstm_cell_831/BiasAdd/ReadVariableOpReadVariableOp>lstm_831_while_lstm_cell_831_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┼
$lstm_831/while/lstm_cell_831/BiasAddBiasAdd$lstm_831/while/lstm_cell_831/add:z:0;lstm_831/while/lstm_cell_831/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љn
,lstm_831/while/lstm_cell_831/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_831/while/lstm_cell_831/splitSplit5lstm_831/while/lstm_cell_831/split/split_dim:output:0-lstm_831/while/lstm_cell_831/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitј
$lstm_831/while/lstm_cell_831/SigmoidSigmoid+lstm_831/while/lstm_cell_831/split:output:0*
T0*'
_output_shapes
:         dљ
&lstm_831/while/lstm_cell_831/Sigmoid_1Sigmoid+lstm_831/while/lstm_cell_831/split:output:1*
T0*'
_output_shapes
:         dБ
 lstm_831/while/lstm_cell_831/mulMul*lstm_831/while/lstm_cell_831/Sigmoid_1:y:0lstm_831_while_placeholder_3*
T0*'
_output_shapes
:         dѕ
!lstm_831/while/lstm_cell_831/ReluRelu+lstm_831/while/lstm_cell_831/split:output:2*
T0*'
_output_shapes
:         dХ
"lstm_831/while/lstm_cell_831/mul_1Mul(lstm_831/while/lstm_cell_831/Sigmoid:y:0/lstm_831/while/lstm_cell_831/Relu:activations:0*
T0*'
_output_shapes
:         dФ
"lstm_831/while/lstm_cell_831/add_1AddV2$lstm_831/while/lstm_cell_831/mul:z:0&lstm_831/while/lstm_cell_831/mul_1:z:0*
T0*'
_output_shapes
:         dљ
&lstm_831/while/lstm_cell_831/Sigmoid_2Sigmoid+lstm_831/while/lstm_cell_831/split:output:3*
T0*'
_output_shapes
:         dЁ
#lstm_831/while/lstm_cell_831/Relu_1Relu&lstm_831/while/lstm_cell_831/add_1:z:0*
T0*'
_output_shapes
:         d║
"lstm_831/while/lstm_cell_831/mul_2Mul*lstm_831/while/lstm_cell_831/Sigmoid_2:y:01lstm_831/while/lstm_cell_831/Relu_1:activations:0*
T0*'
_output_shapes
:         dЖ
3lstm_831/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_831_while_placeholder_1lstm_831_while_placeholder&lstm_831/while/lstm_cell_831/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_831/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_831/while/addAddV2lstm_831_while_placeholderlstm_831/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_831/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_831/while/add_1AddV2*lstm_831_while_lstm_831_while_loop_counterlstm_831/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_831/while/IdentityIdentitylstm_831/while/add_1:z:0^lstm_831/while/NoOp*
T0*
_output_shapes
: ј
lstm_831/while/Identity_1Identity0lstm_831_while_lstm_831_while_maximum_iterations^lstm_831/while/NoOp*
T0*
_output_shapes
: t
lstm_831/while/Identity_2Identitylstm_831/while/add:z:0^lstm_831/while/NoOp*
T0*
_output_shapes
: А
lstm_831/while/Identity_3IdentityClstm_831/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_831/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_831/while/Identity_4Identity&lstm_831/while/lstm_cell_831/mul_2:z:0^lstm_831/while/NoOp*
T0*'
_output_shapes
:         dЋ
lstm_831/while/Identity_5Identity&lstm_831/while/lstm_cell_831/add_1:z:0^lstm_831/while/NoOp*
T0*'
_output_shapes
:         dэ
lstm_831/while/NoOpNoOp4^lstm_831/while/lstm_cell_831/BiasAdd/ReadVariableOp3^lstm_831/while/lstm_cell_831/MatMul/ReadVariableOp5^lstm_831/while/lstm_cell_831/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_831_while_identity lstm_831/while/Identity:output:0"?
lstm_831_while_identity_1"lstm_831/while/Identity_1:output:0"?
lstm_831_while_identity_2"lstm_831/while/Identity_2:output:0"?
lstm_831_while_identity_3"lstm_831/while/Identity_3:output:0"?
lstm_831_while_identity_4"lstm_831/while/Identity_4:output:0"?
lstm_831_while_identity_5"lstm_831/while/Identity_5:output:0"T
'lstm_831_while_lstm_831_strided_slice_1)lstm_831_while_lstm_831_strided_slice_1_0"~
<lstm_831_while_lstm_cell_831_biasadd_readvariableop_resource>lstm_831_while_lstm_cell_831_biasadd_readvariableop_resource_0"ђ
=lstm_831_while_lstm_cell_831_matmul_1_readvariableop_resource?lstm_831_while_lstm_cell_831_matmul_1_readvariableop_resource_0"|
;lstm_831_while_lstm_cell_831_matmul_readvariableop_resource=lstm_831_while_lstm_cell_831_matmul_readvariableop_resource_0"╠
clstm_831_while_tensorarrayv2read_tensorlistgetitem_lstm_831_tensorarrayunstack_tensorlistfromtensorelstm_831_while_tensorarrayv2read_tensorlistgetitem_lstm_831_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2j
3lstm_831/while/lstm_cell_831/BiasAdd/ReadVariableOp3lstm_831/while/lstm_cell_831/BiasAdd/ReadVariableOp2h
2lstm_831/while/lstm_cell_831/MatMul/ReadVariableOp2lstm_831/while/lstm_cell_831/MatMul/ReadVariableOp2l
4lstm_831/while/lstm_cell_831/MatMul_1/ReadVariableOp4lstm_831/while/lstm_cell_831/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5027841
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5027841___redundant_placeholder05
1while_while_cond_5027841___redundant_placeholder15
1while_while_cond_5027841___redundant_placeholder25
1while_while_cond_5027841___redundant_placeholder3
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
╔	
э
F__inference_dense_277_layer_call_and_return_conditional_losses_5025186

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
Э
┤
*__inference_lstm_833_layer_call_fn_5028102

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
E__inference_lstm_833_layer_call_and_return_conditional_losses_5025168o
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
▀
ѕ
J__inference_lstm_cell_832_layer_call_and_return_conditional_losses_5028900

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
Л8
┌
while_body_5025465
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_832_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_832_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_832_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_832_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_832_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_832_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_832/BiasAdd/ReadVariableOpб)while/lstm_cell_832/MatMul/ReadVariableOpб+while/lstm_cell_832/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_832/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_832_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_832/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_832/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_832/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_832_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_832/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_832/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_832/addAddV2$while/lstm_cell_832/MatMul:product:0&while/lstm_cell_832/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_832/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_832_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_832/BiasAddBiasAddwhile/lstm_cell_832/add:z:02while/lstm_cell_832/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_832/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_832/splitSplit,while/lstm_cell_832/split/split_dim:output:0$while/lstm_cell_832/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_832/SigmoidSigmoid"while/lstm_cell_832/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_832/Sigmoid_1Sigmoid"while/lstm_cell_832/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_832/mulMul!while/lstm_cell_832/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_832/ReluRelu"while/lstm_cell_832/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_832/mul_1Mulwhile/lstm_cell_832/Sigmoid:y:0&while/lstm_cell_832/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_832/add_1AddV2while/lstm_cell_832/mul:z:0while/lstm_cell_832/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_832/Sigmoid_2Sigmoid"while/lstm_cell_832/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_832/Relu_1Reluwhile/lstm_cell_832/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_832/mul_2Mul!while/lstm_cell_832/Sigmoid_2:y:0(while/lstm_cell_832/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_832/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_832/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_832/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_832/BiasAdd/ReadVariableOp*^while/lstm_cell_832/MatMul/ReadVariableOp,^while/lstm_cell_832/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_832_biasadd_readvariableop_resource5while_lstm_cell_832_biasadd_readvariableop_resource_0"n
4while_lstm_cell_832_matmul_1_readvariableop_resource6while_lstm_cell_832_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_832_matmul_readvariableop_resource4while_lstm_cell_832_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_832/BiasAdd/ReadVariableOp*while/lstm_cell_832/BiasAdd/ReadVariableOp2V
)while/lstm_cell_832/MatMul/ReadVariableOp)while/lstm_cell_832/MatMul/ReadVariableOp2Z
+while/lstm_cell_832/MatMul_1/ReadVariableOp+while/lstm_cell_832/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_832_layer_call_fn_5027486

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
E__inference_lstm_832_layer_call_and_return_conditional_losses_5025018s
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
╔	
э
F__inference_dense_277_layer_call_and_return_conditional_losses_5028704

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
и

Ч
lstm_832_while_cond_5026607.
*lstm_832_while_lstm_832_while_loop_counter4
0lstm_832_while_lstm_832_while_maximum_iterations
lstm_832_while_placeholder 
lstm_832_while_placeholder_1 
lstm_832_while_placeholder_2 
lstm_832_while_placeholder_30
,lstm_832_while_less_lstm_832_strided_slice_1G
Clstm_832_while_lstm_832_while_cond_5026607___redundant_placeholder0G
Clstm_832_while_lstm_832_while_cond_5026607___redundant_placeholder1G
Clstm_832_while_lstm_832_while_cond_5026607___redundant_placeholder2G
Clstm_832_while_lstm_832_while_cond_5026607___redundant_placeholder3
lstm_832_while_identity
є
lstm_832/while/LessLesslstm_832_while_placeholder,lstm_832_while_less_lstm_832_strided_slice_1*
T0*
_output_shapes
: ]
lstm_832/while/IdentityIdentitylstm_832/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_832_while_identity lstm_832/while/Identity:output:0*(
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
while_cond_5027225
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5027225___redundant_placeholder05
1while_while_cond_5027225___redundant_placeholder15
1while_while_cond_5027225___redundant_placeholder25
1while_while_cond_5027225___redundant_placeholder3
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
РJ
Б
E__inference_lstm_832_layer_call_and_return_conditional_losses_5025549

inputs?
,lstm_cell_832_matmul_readvariableop_resource:	d╚A
.lstm_cell_832_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_832_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_832/BiasAdd/ReadVariableOpб#lstm_cell_832/MatMul/ReadVariableOpб%lstm_cell_832/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_832/MatMul/ReadVariableOpReadVariableOp,lstm_cell_832_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_832/MatMulMatMulstrided_slice_2:output:0+lstm_cell_832/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_832/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_832_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_832/MatMul_1MatMulzeros:output:0-lstm_cell_832/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_832/addAddV2lstm_cell_832/MatMul:product:0 lstm_cell_832/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_832/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_832_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_832/BiasAddBiasAddlstm_cell_832/add:z:0,lstm_cell_832/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_832/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_832/splitSplit&lstm_cell_832/split/split_dim:output:0lstm_cell_832/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_832/SigmoidSigmoidlstm_cell_832/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_832/Sigmoid_1Sigmoidlstm_cell_832/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_832/mulMullstm_cell_832/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_832/ReluRelulstm_cell_832/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_832/mul_1Mullstm_cell_832/Sigmoid:y:0 lstm_cell_832/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_832/add_1AddV2lstm_cell_832/mul:z:0lstm_cell_832/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_832/Sigmoid_2Sigmoidlstm_cell_832/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_832/Relu_1Relulstm_cell_832/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_832/mul_2Mullstm_cell_832/Sigmoid_2:y:0"lstm_cell_832/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_832_matmul_readvariableop_resource.lstm_cell_832_matmul_1_readvariableop_resource-lstm_cell_832_biasadd_readvariableop_resource*
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
while_body_5025465*
condR
while_cond_5025464*K
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
NoOpNoOp%^lstm_cell_832/BiasAdd/ReadVariableOp$^lstm_cell_832/MatMul/ReadVariableOp&^lstm_cell_832/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_832/BiasAdd/ReadVariableOp$lstm_cell_832/BiasAdd/ReadVariableOp2J
#lstm_cell_832/MatMul/ReadVariableOp#lstm_cell_832/MatMul/ReadVariableOp2N
%lstm_cell_832/MatMul_1/ReadVariableOp%lstm_cell_832/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
Г
╣
*__inference_lstm_831_layer_call_fn_5026848
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
E__inference_lstm_831_layer_call_and_return_conditional_losses_5023819|
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
РJ
Б
E__inference_lstm_832_layer_call_and_return_conditional_losses_5025018

inputs?
,lstm_cell_832_matmul_readvariableop_resource:	d╚A
.lstm_cell_832_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_832_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_832/BiasAdd/ReadVariableOpб#lstm_cell_832/MatMul/ReadVariableOpб%lstm_cell_832/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_832/MatMul/ReadVariableOpReadVariableOp,lstm_cell_832_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_832/MatMulMatMulstrided_slice_2:output:0+lstm_cell_832/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_832/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_832_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_832/MatMul_1MatMulzeros:output:0-lstm_cell_832/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_832/addAddV2lstm_cell_832/MatMul:product:0 lstm_cell_832/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_832/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_832_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_832/BiasAddBiasAddlstm_cell_832/add:z:0,lstm_cell_832/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_832/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_832/splitSplit&lstm_cell_832/split/split_dim:output:0lstm_cell_832/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_832/SigmoidSigmoidlstm_cell_832/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_832/Sigmoid_1Sigmoidlstm_cell_832/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_832/mulMullstm_cell_832/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_832/ReluRelulstm_cell_832/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_832/mul_1Mullstm_cell_832/Sigmoid:y:0 lstm_cell_832/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_832/add_1AddV2lstm_cell_832/mul:z:0lstm_cell_832/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_832/Sigmoid_2Sigmoidlstm_cell_832/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_832/Relu_1Relulstm_cell_832/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_832/mul_2Mullstm_cell_832/Sigmoid_2:y:0"lstm_cell_832/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_832_matmul_readvariableop_resource.lstm_cell_832_matmul_1_readvariableop_resource-lstm_cell_832_biasadd_readvariableop_resource*
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
while_body_5024934*
condR
while_cond_5024933*K
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
NoOpNoOp%^lstm_cell_832/BiasAdd/ReadVariableOp$^lstm_cell_832/MatMul/ReadVariableOp&^lstm_cell_832/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_832/BiasAdd/ReadVariableOp$lstm_cell_832/BiasAdd/ReadVariableOp2J
#lstm_cell_832/MatMul/ReadVariableOp#lstm_cell_832/MatMul/ReadVariableOp2N
%lstm_cell_832/MatMul_1/ReadVariableOp%lstm_cell_832/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
─8
н
while_body_5025300
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_833_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_833_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_833_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_833_matmul_readvariableop_resource:2(F
4while_lstm_cell_833_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_833_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_833/BiasAdd/ReadVariableOpб)while/lstm_cell_833/MatMul/ReadVariableOpб+while/lstm_cell_833/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_833/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_833_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_833/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_833/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_833/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_833_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_833/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_833/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_833/addAddV2$while/lstm_cell_833/MatMul:product:0&while/lstm_cell_833/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_833/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_833_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_833/BiasAddBiasAddwhile/lstm_cell_833/add:z:02while/lstm_cell_833/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_833/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_833/splitSplit,while/lstm_cell_833/split/split_dim:output:0$while/lstm_cell_833/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_833/SigmoidSigmoid"while/lstm_cell_833/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_833/Sigmoid_1Sigmoid"while/lstm_cell_833/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_833/mulMul!while/lstm_cell_833/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_833/ReluRelu"while/lstm_cell_833/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_833/mul_1Mulwhile/lstm_cell_833/Sigmoid:y:0&while/lstm_cell_833/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_833/add_1AddV2while/lstm_cell_833/mul:z:0while/lstm_cell_833/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_833/Sigmoid_2Sigmoid"while/lstm_cell_833/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_833/Relu_1Reluwhile/lstm_cell_833/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_833/mul_2Mul!while/lstm_cell_833/Sigmoid_2:y:0(while/lstm_cell_833/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_833/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_833/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_833/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_833/BiasAdd/ReadVariableOp*^while/lstm_cell_833/MatMul/ReadVariableOp,^while/lstm_cell_833/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_833_biasadd_readvariableop_resource5while_lstm_cell_833_biasadd_readvariableop_resource_0"n
4while_lstm_cell_833_matmul_1_readvariableop_resource6while_lstm_cell_833_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_833_matmul_readvariableop_resource4while_lstm_cell_833_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_833/BiasAdd/ReadVariableOp*while/lstm_cell_833/BiasAdd/ReadVariableOp2V
)while/lstm_cell_833/MatMul/ReadVariableOp)while/lstm_cell_833/MatMul/ReadVariableOp2Z
+while/lstm_cell_833/MatMul_1/ReadVariableOp+while/lstm_cell_833/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
О
є
J__inference_lstm_cell_832_layer_call_and_return_conditional_losses_5024086

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
РJ
Б
E__inference_lstm_831_layer_call_and_return_conditional_losses_5027453

inputs?
,lstm_cell_831_matmul_readvariableop_resource:	љA
.lstm_cell_831_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_831_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_831/BiasAdd/ReadVariableOpб#lstm_cell_831/MatMul/ReadVariableOpб%lstm_cell_831/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_831/MatMul/ReadVariableOpReadVariableOp,lstm_cell_831_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_831/MatMulMatMulstrided_slice_2:output:0+lstm_cell_831/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_831/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_831_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_831/MatMul_1MatMulzeros:output:0-lstm_cell_831/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_831/addAddV2lstm_cell_831/MatMul:product:0 lstm_cell_831/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_831/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_831_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_831/BiasAddBiasAddlstm_cell_831/add:z:0,lstm_cell_831/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_831/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_831/splitSplit&lstm_cell_831/split/split_dim:output:0lstm_cell_831/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_831/SigmoidSigmoidlstm_cell_831/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_831/Sigmoid_1Sigmoidlstm_cell_831/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_831/mulMullstm_cell_831/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_831/ReluRelulstm_cell_831/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_831/mul_1Mullstm_cell_831/Sigmoid:y:0 lstm_cell_831/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_831/add_1AddV2lstm_cell_831/mul:z:0lstm_cell_831/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_831/Sigmoid_2Sigmoidlstm_cell_831/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_831/Relu_1Relulstm_cell_831/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_831/mul_2Mullstm_cell_831/Sigmoid_2:y:0"lstm_cell_831/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_831_matmul_readvariableop_resource.lstm_cell_831_matmul_1_readvariableop_resource-lstm_cell_831_biasadd_readvariableop_resource*
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
while_body_5027369*
condR
while_cond_5027368*K
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
NoOpNoOp%^lstm_cell_831/BiasAdd/ReadVariableOp$^lstm_cell_831/MatMul/ReadVariableOp&^lstm_cell_831/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_831/BiasAdd/ReadVariableOp$lstm_cell_831/BiasAdd/ReadVariableOp2J
#lstm_cell_831/MatMul/ReadVariableOp#lstm_cell_831/MatMul/ReadVariableOp2N
%lstm_cell_831/MatMul_1/ReadVariableOp%lstm_cell_831/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
АC
Щ

lstm_832_while_body_5026181.
*lstm_832_while_lstm_832_while_loop_counter4
0lstm_832_while_lstm_832_while_maximum_iterations
lstm_832_while_placeholder 
lstm_832_while_placeholder_1 
lstm_832_while_placeholder_2 
lstm_832_while_placeholder_3-
)lstm_832_while_lstm_832_strided_slice_1_0i
elstm_832_while_tensorarrayv2read_tensorlistgetitem_lstm_832_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_832_while_lstm_cell_832_matmul_readvariableop_resource_0:	d╚R
?lstm_832_while_lstm_cell_832_matmul_1_readvariableop_resource_0:	2╚M
>lstm_832_while_lstm_cell_832_biasadd_readvariableop_resource_0:	╚
lstm_832_while_identity
lstm_832_while_identity_1
lstm_832_while_identity_2
lstm_832_while_identity_3
lstm_832_while_identity_4
lstm_832_while_identity_5+
'lstm_832_while_lstm_832_strided_slice_1g
clstm_832_while_tensorarrayv2read_tensorlistgetitem_lstm_832_tensorarrayunstack_tensorlistfromtensorN
;lstm_832_while_lstm_cell_832_matmul_readvariableop_resource:	d╚P
=lstm_832_while_lstm_cell_832_matmul_1_readvariableop_resource:	2╚K
<lstm_832_while_lstm_cell_832_biasadd_readvariableop_resource:	╚ѕб3lstm_832/while/lstm_cell_832/BiasAdd/ReadVariableOpб2lstm_832/while/lstm_cell_832/MatMul/ReadVariableOpб4lstm_832/while/lstm_cell_832/MatMul_1/ReadVariableOpЉ
@lstm_832/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
2lstm_832/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_832_while_tensorarrayv2read_tensorlistgetitem_lstm_832_tensorarrayunstack_tensorlistfromtensor_0lstm_832_while_placeholderIlstm_832/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0▒
2lstm_832/while/lstm_cell_832/MatMul/ReadVariableOpReadVariableOp=lstm_832_while_lstm_cell_832_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0О
#lstm_832/while/lstm_cell_832/MatMulMatMul9lstm_832/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_832/while/lstm_cell_832/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚х
4lstm_832/while/lstm_cell_832/MatMul_1/ReadVariableOpReadVariableOp?lstm_832_while_lstm_cell_832_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Й
%lstm_832/while/lstm_cell_832/MatMul_1MatMullstm_832_while_placeholder_2<lstm_832/while/lstm_cell_832/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚╝
 lstm_832/while/lstm_cell_832/addAddV2-lstm_832/while/lstm_cell_832/MatMul:product:0/lstm_832/while/lstm_cell_832/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚»
3lstm_832/while/lstm_cell_832/BiasAdd/ReadVariableOpReadVariableOp>lstm_832_while_lstm_cell_832_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0┼
$lstm_832/while/lstm_cell_832/BiasAddBiasAdd$lstm_832/while/lstm_cell_832/add:z:0;lstm_832/while/lstm_cell_832/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚n
,lstm_832/while/lstm_cell_832/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_832/while/lstm_cell_832/splitSplit5lstm_832/while/lstm_cell_832/split/split_dim:output:0-lstm_832/while/lstm_cell_832/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitј
$lstm_832/while/lstm_cell_832/SigmoidSigmoid+lstm_832/while/lstm_cell_832/split:output:0*
T0*'
_output_shapes
:         2љ
&lstm_832/while/lstm_cell_832/Sigmoid_1Sigmoid+lstm_832/while/lstm_cell_832/split:output:1*
T0*'
_output_shapes
:         2Б
 lstm_832/while/lstm_cell_832/mulMul*lstm_832/while/lstm_cell_832/Sigmoid_1:y:0lstm_832_while_placeholder_3*
T0*'
_output_shapes
:         2ѕ
!lstm_832/while/lstm_cell_832/ReluRelu+lstm_832/while/lstm_cell_832/split:output:2*
T0*'
_output_shapes
:         2Х
"lstm_832/while/lstm_cell_832/mul_1Mul(lstm_832/while/lstm_cell_832/Sigmoid:y:0/lstm_832/while/lstm_cell_832/Relu:activations:0*
T0*'
_output_shapes
:         2Ф
"lstm_832/while/lstm_cell_832/add_1AddV2$lstm_832/while/lstm_cell_832/mul:z:0&lstm_832/while/lstm_cell_832/mul_1:z:0*
T0*'
_output_shapes
:         2љ
&lstm_832/while/lstm_cell_832/Sigmoid_2Sigmoid+lstm_832/while/lstm_cell_832/split:output:3*
T0*'
_output_shapes
:         2Ё
#lstm_832/while/lstm_cell_832/Relu_1Relu&lstm_832/while/lstm_cell_832/add_1:z:0*
T0*'
_output_shapes
:         2║
"lstm_832/while/lstm_cell_832/mul_2Mul*lstm_832/while/lstm_cell_832/Sigmoid_2:y:01lstm_832/while/lstm_cell_832/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ж
3lstm_832/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_832_while_placeholder_1lstm_832_while_placeholder&lstm_832/while/lstm_cell_832/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_832/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_832/while/addAddV2lstm_832_while_placeholderlstm_832/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_832/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_832/while/add_1AddV2*lstm_832_while_lstm_832_while_loop_counterlstm_832/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_832/while/IdentityIdentitylstm_832/while/add_1:z:0^lstm_832/while/NoOp*
T0*
_output_shapes
: ј
lstm_832/while/Identity_1Identity0lstm_832_while_lstm_832_while_maximum_iterations^lstm_832/while/NoOp*
T0*
_output_shapes
: t
lstm_832/while/Identity_2Identitylstm_832/while/add:z:0^lstm_832/while/NoOp*
T0*
_output_shapes
: А
lstm_832/while/Identity_3IdentityClstm_832/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_832/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_832/while/Identity_4Identity&lstm_832/while/lstm_cell_832/mul_2:z:0^lstm_832/while/NoOp*
T0*'
_output_shapes
:         2Ћ
lstm_832/while/Identity_5Identity&lstm_832/while/lstm_cell_832/add_1:z:0^lstm_832/while/NoOp*
T0*'
_output_shapes
:         2э
lstm_832/while/NoOpNoOp4^lstm_832/while/lstm_cell_832/BiasAdd/ReadVariableOp3^lstm_832/while/lstm_cell_832/MatMul/ReadVariableOp5^lstm_832/while/lstm_cell_832/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_832_while_identity lstm_832/while/Identity:output:0"?
lstm_832_while_identity_1"lstm_832/while/Identity_1:output:0"?
lstm_832_while_identity_2"lstm_832/while/Identity_2:output:0"?
lstm_832_while_identity_3"lstm_832/while/Identity_3:output:0"?
lstm_832_while_identity_4"lstm_832/while/Identity_4:output:0"?
lstm_832_while_identity_5"lstm_832/while/Identity_5:output:0"T
'lstm_832_while_lstm_832_strided_slice_1)lstm_832_while_lstm_832_strided_slice_1_0"~
<lstm_832_while_lstm_cell_832_biasadd_readvariableop_resource>lstm_832_while_lstm_cell_832_biasadd_readvariableop_resource_0"ђ
=lstm_832_while_lstm_cell_832_matmul_1_readvariableop_resource?lstm_832_while_lstm_cell_832_matmul_1_readvariableop_resource_0"|
;lstm_832_while_lstm_cell_832_matmul_readvariableop_resource=lstm_832_while_lstm_cell_832_matmul_readvariableop_resource_0"╠
clstm_832_while_tensorarrayv2read_tensorlistgetitem_lstm_832_tensorarrayunstack_tensorlistfromtensorelstm_832_while_tensorarrayv2read_tensorlistgetitem_lstm_832_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2j
3lstm_832/while/lstm_cell_832/BiasAdd/ReadVariableOp3lstm_832/while/lstm_cell_832/BiasAdd/ReadVariableOp2h
2lstm_832/while/lstm_cell_832/MatMul/ReadVariableOp2lstm_832/while/lstm_cell_832/MatMul/ReadVariableOp2l
4lstm_832/while/lstm_cell_832/MatMul_1/ReadVariableOp4lstm_832/while/lstm_cell_832/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
м
ч
K__inference_sequential_277_layer_call_and_return_conditional_losses_5025193

inputs#
lstm_831_5024869:	љ#
lstm_831_5024871:	dљ
lstm_831_5024873:	љ#
lstm_832_5025019:	d╚#
lstm_832_5025021:	2╚
lstm_832_5025023:	╚"
lstm_833_5025169:2("
lstm_833_5025171:
(
lstm_833_5025173:(#
dense_277_5025187:

dense_277_5025189:
identityѕб!dense_277/StatefulPartitionedCallб lstm_831/StatefulPartitionedCallб lstm_832/StatefulPartitionedCallб lstm_833/StatefulPartitionedCallІ
 lstm_831/StatefulPartitionedCallStatefulPartitionedCallinputslstm_831_5024869lstm_831_5024871lstm_831_5024873*
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
E__inference_lstm_831_layer_call_and_return_conditional_losses_5024868«
 lstm_832/StatefulPartitionedCallStatefulPartitionedCall)lstm_831/StatefulPartitionedCall:output:0lstm_832_5025019lstm_832_5025021lstm_832_5025023*
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
E__inference_lstm_832_layer_call_and_return_conditional_losses_5025018ф
 lstm_833/StatefulPartitionedCallStatefulPartitionedCall)lstm_832/StatefulPartitionedCall:output:0lstm_833_5025169lstm_833_5025171lstm_833_5025173*
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
E__inference_lstm_833_layer_call_and_return_conditional_losses_5025168џ
!dense_277/StatefulPartitionedCallStatefulPartitionedCall)lstm_833/StatefulPartitionedCall:output:0dense_277_5025187dense_277_5025189*
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
GPU 2J 8ѓ *O
fJRH
F__inference_dense_277_layer_call_and_return_conditional_losses_5025186y
IdentityIdentity*dense_277/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp"^dense_277/StatefulPartitionedCall!^lstm_831/StatefulPartitionedCall!^lstm_832/StatefulPartitionedCall!^lstm_833/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2F
!dense_277/StatefulPartitionedCall!dense_277/StatefulPartitionedCall2D
 lstm_831/StatefulPartitionedCall lstm_831/StatefulPartitionedCall2D
 lstm_832/StatefulPartitionedCall lstm_832/StatefulPartitionedCall2D
 lstm_833/StatefulPartitionedCall lstm_833/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
»8
ј
E__inference_lstm_831_layer_call_and_return_conditional_losses_5023819

inputs(
lstm_cell_831_5023737:	љ(
lstm_cell_831_5023739:	dљ$
lstm_cell_831_5023741:	љ
identityѕб%lstm_cell_831/StatefulPartitionedCallбwhile;
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
%lstm_cell_831/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_831_5023737lstm_cell_831_5023739lstm_cell_831_5023741*
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
J__inference_lstm_cell_831_layer_call_and_return_conditional_losses_5023736n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_831_5023737lstm_cell_831_5023739lstm_cell_831_5023741*
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
while_body_5023750*
condR
while_cond_5023749*K
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
NoOpNoOp&^lstm_cell_831/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2N
%lstm_cell_831/StatefulPartitionedCall%lstm_cell_831/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
Ѓ
и
*__inference_lstm_832_layer_call_fn_5027497

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
E__inference_lstm_832_layer_call_and_return_conditional_losses_5025549s
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
Ѕ#
в
while_body_5024641
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_833_5024665_0:2(/
while_lstm_cell_833_5024667_0:
(+
while_lstm_cell_833_5024669_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_833_5024665:2(-
while_lstm_cell_833_5024667:
()
while_lstm_cell_833_5024669:(ѕб+while/lstm_cell_833/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╝
+while/lstm_cell_833/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_833_5024665_0while_lstm_cell_833_5024667_0while_lstm_cell_833_5024669_0*
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
J__inference_lstm_cell_833_layer_call_and_return_conditional_losses_5024582П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_833/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_833/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         
Љ
while/Identity_5Identity4while/lstm_cell_833/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         
z

while/NoOpNoOp,^while/lstm_cell_833/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_833_5024665while_lstm_cell_833_5024665_0"<
while_lstm_cell_833_5024667while_lstm_cell_833_5024667_0"<
while_lstm_cell_833_5024669while_lstm_cell_833_5024669_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2Z
+while/lstm_cell_833/StatefulPartitionedCall+while/lstm_cell_833/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_5024784
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_831_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_831_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_831_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_831_matmul_readvariableop_resource:	љG
4while_lstm_cell_831_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_831_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_831/BiasAdd/ReadVariableOpб)while/lstm_cell_831/MatMul/ReadVariableOpб+while/lstm_cell_831/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_831/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_831_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_831/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_831/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_831/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_831_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_831/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_831/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_831/addAddV2$while/lstm_cell_831/MatMul:product:0&while/lstm_cell_831/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_831/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_831_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_831/BiasAddBiasAddwhile/lstm_cell_831/add:z:02while/lstm_cell_831/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_831/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_831/splitSplit,while/lstm_cell_831/split/split_dim:output:0$while/lstm_cell_831/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_831/SigmoidSigmoid"while/lstm_cell_831/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_831/Sigmoid_1Sigmoid"while/lstm_cell_831/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_831/mulMul!while/lstm_cell_831/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_831/ReluRelu"while/lstm_cell_831/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_831/mul_1Mulwhile/lstm_cell_831/Sigmoid:y:0&while/lstm_cell_831/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_831/add_1AddV2while/lstm_cell_831/mul:z:0while/lstm_cell_831/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_831/Sigmoid_2Sigmoid"while/lstm_cell_831/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_831/Relu_1Reluwhile/lstm_cell_831/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_831/mul_2Mul!while/lstm_cell_831/Sigmoid_2:y:0(while/lstm_cell_831/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_831/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_831/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_831/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_831/BiasAdd/ReadVariableOp*^while/lstm_cell_831/MatMul/ReadVariableOp,^while/lstm_cell_831/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_831_biasadd_readvariableop_resource5while_lstm_cell_831_biasadd_readvariableop_resource_0"n
4while_lstm_cell_831_matmul_1_readvariableop_resource6while_lstm_cell_831_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_831_matmul_readvariableop_resource4while_lstm_cell_831_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_831/BiasAdd/ReadVariableOp*while/lstm_cell_831/BiasAdd/ReadVariableOp2V
)while/lstm_cell_831/MatMul/ReadVariableOp)while/lstm_cell_831/MatMul/ReadVariableOp2Z
+while/lstm_cell_831/MatMul_1/ReadVariableOp+while/lstm_cell_831/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_832_layer_call_and_return_conditional_losses_5028069

inputs?
,lstm_cell_832_matmul_readvariableop_resource:	d╚A
.lstm_cell_832_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_832_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_832/BiasAdd/ReadVariableOpб#lstm_cell_832/MatMul/ReadVariableOpб%lstm_cell_832/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_832/MatMul/ReadVariableOpReadVariableOp,lstm_cell_832_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_832/MatMulMatMulstrided_slice_2:output:0+lstm_cell_832/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_832/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_832_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_832/MatMul_1MatMulzeros:output:0-lstm_cell_832/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_832/addAddV2lstm_cell_832/MatMul:product:0 lstm_cell_832/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_832/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_832_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_832/BiasAddBiasAddlstm_cell_832/add:z:0,lstm_cell_832/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_832/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_832/splitSplit&lstm_cell_832/split/split_dim:output:0lstm_cell_832/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_832/SigmoidSigmoidlstm_cell_832/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_832/Sigmoid_1Sigmoidlstm_cell_832/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_832/mulMullstm_cell_832/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_832/ReluRelulstm_cell_832/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_832/mul_1Mullstm_cell_832/Sigmoid:y:0 lstm_cell_832/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_832/add_1AddV2lstm_cell_832/mul:z:0lstm_cell_832/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_832/Sigmoid_2Sigmoidlstm_cell_832/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_832/Relu_1Relulstm_cell_832/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_832/mul_2Mullstm_cell_832/Sigmoid_2:y:0"lstm_cell_832/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_832_matmul_readvariableop_resource.lstm_cell_832_matmul_1_readvariableop_resource-lstm_cell_832_biasadd_readvariableop_resource*
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
while_body_5027985*
condR
while_cond_5027984*K
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
NoOpNoOp%^lstm_cell_832/BiasAdd/ReadVariableOp$^lstm_cell_832/MatMul/ReadVariableOp&^lstm_cell_832/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_832/BiasAdd/ReadVariableOp$lstm_cell_832/BiasAdd/ReadVariableOp2J
#lstm_cell_832/MatMul/ReadVariableOp#lstm_cell_832/MatMul/ReadVariableOp2N
%lstm_cell_832/MatMul_1/ReadVariableOp%lstm_cell_832/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
В
ш
/__inference_lstm_cell_833_layer_call_fn_5028917

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
J__inference_lstm_cell_833_layer_call_and_return_conditional_losses_5024436o
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
чT
я
*sequential_277_lstm_832_while_body_5023440L
Hsequential_277_lstm_832_while_sequential_277_lstm_832_while_loop_counterR
Nsequential_277_lstm_832_while_sequential_277_lstm_832_while_maximum_iterations-
)sequential_277_lstm_832_while_placeholder/
+sequential_277_lstm_832_while_placeholder_1/
+sequential_277_lstm_832_while_placeholder_2/
+sequential_277_lstm_832_while_placeholder_3K
Gsequential_277_lstm_832_while_sequential_277_lstm_832_strided_slice_1_0ѕ
Ѓsequential_277_lstm_832_while_tensorarrayv2read_tensorlistgetitem_sequential_277_lstm_832_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_277_lstm_832_while_lstm_cell_832_matmul_readvariableop_resource_0:	d╚a
Nsequential_277_lstm_832_while_lstm_cell_832_matmul_1_readvariableop_resource_0:	2╚\
Msequential_277_lstm_832_while_lstm_cell_832_biasadd_readvariableop_resource_0:	╚*
&sequential_277_lstm_832_while_identity,
(sequential_277_lstm_832_while_identity_1,
(sequential_277_lstm_832_while_identity_2,
(sequential_277_lstm_832_while_identity_3,
(sequential_277_lstm_832_while_identity_4,
(sequential_277_lstm_832_while_identity_5I
Esequential_277_lstm_832_while_sequential_277_lstm_832_strided_slice_1є
Ђsequential_277_lstm_832_while_tensorarrayv2read_tensorlistgetitem_sequential_277_lstm_832_tensorarrayunstack_tensorlistfromtensor]
Jsequential_277_lstm_832_while_lstm_cell_832_matmul_readvariableop_resource:	d╚_
Lsequential_277_lstm_832_while_lstm_cell_832_matmul_1_readvariableop_resource:	2╚Z
Ksequential_277_lstm_832_while_lstm_cell_832_biasadd_readvariableop_resource:	╚ѕбBsequential_277/lstm_832/while/lstm_cell_832/BiasAdd/ReadVariableOpбAsequential_277/lstm_832/while/lstm_cell_832/MatMul/ReadVariableOpбCsequential_277/lstm_832/while/lstm_cell_832/MatMul_1/ReadVariableOpа
Osequential_277/lstm_832/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Ъ
Asequential_277/lstm_832/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЃsequential_277_lstm_832_while_tensorarrayv2read_tensorlistgetitem_sequential_277_lstm_832_tensorarrayunstack_tensorlistfromtensor_0)sequential_277_lstm_832_while_placeholderXsequential_277/lstm_832/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0¤
Asequential_277/lstm_832/while/lstm_cell_832/MatMul/ReadVariableOpReadVariableOpLsequential_277_lstm_832_while_lstm_cell_832_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0ё
2sequential_277/lstm_832/while/lstm_cell_832/MatMulMatMulHsequential_277/lstm_832/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_277/lstm_832/while/lstm_cell_832/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚М
Csequential_277/lstm_832/while/lstm_cell_832/MatMul_1/ReadVariableOpReadVariableOpNsequential_277_lstm_832_while_lstm_cell_832_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0в
4sequential_277/lstm_832/while/lstm_cell_832/MatMul_1MatMul+sequential_277_lstm_832_while_placeholder_2Ksequential_277/lstm_832/while/lstm_cell_832/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ж
/sequential_277/lstm_832/while/lstm_cell_832/addAddV2<sequential_277/lstm_832/while/lstm_cell_832/MatMul:product:0>sequential_277/lstm_832/while/lstm_cell_832/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚═
Bsequential_277/lstm_832/while/lstm_cell_832/BiasAdd/ReadVariableOpReadVariableOpMsequential_277_lstm_832_while_lstm_cell_832_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0Ы
3sequential_277/lstm_832/while/lstm_cell_832/BiasAddBiasAdd3sequential_277/lstm_832/while/lstm_cell_832/add:z:0Jsequential_277/lstm_832/while/lstm_cell_832/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚}
;sequential_277/lstm_832/while/lstm_cell_832/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
1sequential_277/lstm_832/while/lstm_cell_832/splitSplitDsequential_277/lstm_832/while/lstm_cell_832/split/split_dim:output:0<sequential_277/lstm_832/while/lstm_cell_832/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitг
3sequential_277/lstm_832/while/lstm_cell_832/SigmoidSigmoid:sequential_277/lstm_832/while/lstm_cell_832/split:output:0*
T0*'
_output_shapes
:         2«
5sequential_277/lstm_832/while/lstm_cell_832/Sigmoid_1Sigmoid:sequential_277/lstm_832/while/lstm_cell_832/split:output:1*
T0*'
_output_shapes
:         2л
/sequential_277/lstm_832/while/lstm_cell_832/mulMul9sequential_277/lstm_832/while/lstm_cell_832/Sigmoid_1:y:0+sequential_277_lstm_832_while_placeholder_3*
T0*'
_output_shapes
:         2д
0sequential_277/lstm_832/while/lstm_cell_832/ReluRelu:sequential_277/lstm_832/while/lstm_cell_832/split:output:2*
T0*'
_output_shapes
:         2с
1sequential_277/lstm_832/while/lstm_cell_832/mul_1Mul7sequential_277/lstm_832/while/lstm_cell_832/Sigmoid:y:0>sequential_277/lstm_832/while/lstm_cell_832/Relu:activations:0*
T0*'
_output_shapes
:         2п
1sequential_277/lstm_832/while/lstm_cell_832/add_1AddV23sequential_277/lstm_832/while/lstm_cell_832/mul:z:05sequential_277/lstm_832/while/lstm_cell_832/mul_1:z:0*
T0*'
_output_shapes
:         2«
5sequential_277/lstm_832/while/lstm_cell_832/Sigmoid_2Sigmoid:sequential_277/lstm_832/while/lstm_cell_832/split:output:3*
T0*'
_output_shapes
:         2Б
2sequential_277/lstm_832/while/lstm_cell_832/Relu_1Relu5sequential_277/lstm_832/while/lstm_cell_832/add_1:z:0*
T0*'
_output_shapes
:         2у
1sequential_277/lstm_832/while/lstm_cell_832/mul_2Mul9sequential_277/lstm_832/while/lstm_cell_832/Sigmoid_2:y:0@sequential_277/lstm_832/while/lstm_cell_832/Relu_1:activations:0*
T0*'
_output_shapes
:         2д
Bsequential_277/lstm_832/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_277_lstm_832_while_placeholder_1)sequential_277_lstm_832_while_placeholder5sequential_277/lstm_832/while/lstm_cell_832/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмe
#sequential_277/lstm_832/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ц
!sequential_277/lstm_832/while/addAddV2)sequential_277_lstm_832_while_placeholder,sequential_277/lstm_832/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_277/lstm_832/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :К
#sequential_277/lstm_832/while/add_1AddV2Hsequential_277_lstm_832_while_sequential_277_lstm_832_while_loop_counter.sequential_277/lstm_832/while/add_1/y:output:0*
T0*
_output_shapes
: А
&sequential_277/lstm_832/while/IdentityIdentity'sequential_277/lstm_832/while/add_1:z:0#^sequential_277/lstm_832/while/NoOp*
T0*
_output_shapes
: ╩
(sequential_277/lstm_832/while/Identity_1IdentityNsequential_277_lstm_832_while_sequential_277_lstm_832_while_maximum_iterations#^sequential_277/lstm_832/while/NoOp*
T0*
_output_shapes
: А
(sequential_277/lstm_832/while/Identity_2Identity%sequential_277/lstm_832/while/add:z:0#^sequential_277/lstm_832/while/NoOp*
T0*
_output_shapes
: ╬
(sequential_277/lstm_832/while/Identity_3IdentityRsequential_277/lstm_832/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_277/lstm_832/while/NoOp*
T0*
_output_shapes
: ┬
(sequential_277/lstm_832/while/Identity_4Identity5sequential_277/lstm_832/while/lstm_cell_832/mul_2:z:0#^sequential_277/lstm_832/while/NoOp*
T0*'
_output_shapes
:         2┬
(sequential_277/lstm_832/while/Identity_5Identity5sequential_277/lstm_832/while/lstm_cell_832/add_1:z:0#^sequential_277/lstm_832/while/NoOp*
T0*'
_output_shapes
:         2│
"sequential_277/lstm_832/while/NoOpNoOpC^sequential_277/lstm_832/while/lstm_cell_832/BiasAdd/ReadVariableOpB^sequential_277/lstm_832/while/lstm_cell_832/MatMul/ReadVariableOpD^sequential_277/lstm_832/while/lstm_cell_832/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_277_lstm_832_while_identity/sequential_277/lstm_832/while/Identity:output:0"]
(sequential_277_lstm_832_while_identity_11sequential_277/lstm_832/while/Identity_1:output:0"]
(sequential_277_lstm_832_while_identity_21sequential_277/lstm_832/while/Identity_2:output:0"]
(sequential_277_lstm_832_while_identity_31sequential_277/lstm_832/while/Identity_3:output:0"]
(sequential_277_lstm_832_while_identity_41sequential_277/lstm_832/while/Identity_4:output:0"]
(sequential_277_lstm_832_while_identity_51sequential_277/lstm_832/while/Identity_5:output:0"ю
Ksequential_277_lstm_832_while_lstm_cell_832_biasadd_readvariableop_resourceMsequential_277_lstm_832_while_lstm_cell_832_biasadd_readvariableop_resource_0"ъ
Lsequential_277_lstm_832_while_lstm_cell_832_matmul_1_readvariableop_resourceNsequential_277_lstm_832_while_lstm_cell_832_matmul_1_readvariableop_resource_0"џ
Jsequential_277_lstm_832_while_lstm_cell_832_matmul_readvariableop_resourceLsequential_277_lstm_832_while_lstm_cell_832_matmul_readvariableop_resource_0"љ
Esequential_277_lstm_832_while_sequential_277_lstm_832_strided_slice_1Gsequential_277_lstm_832_while_sequential_277_lstm_832_strided_slice_1_0"і
Ђsequential_277_lstm_832_while_tensorarrayv2read_tensorlistgetitem_sequential_277_lstm_832_tensorarrayunstack_tensorlistfromtensorЃsequential_277_lstm_832_while_tensorarrayv2read_tensorlistgetitem_sequential_277_lstm_832_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2ѕ
Bsequential_277/lstm_832/while/lstm_cell_832/BiasAdd/ReadVariableOpBsequential_277/lstm_832/while/lstm_cell_832/BiasAdd/ReadVariableOp2є
Asequential_277/lstm_832/while/lstm_cell_832/MatMul/ReadVariableOpAsequential_277/lstm_832/while/lstm_cell_832/MatMul/ReadVariableOp2і
Csequential_277/lstm_832/while/lstm_cell_832/MatMul_1/ReadVariableOpCsequential_277/lstm_832/while/lstm_cell_832/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ПJ
а
E__inference_lstm_833_layer_call_and_return_conditional_losses_5028542

inputs>
,lstm_cell_833_matmul_readvariableop_resource:2(@
.lstm_cell_833_matmul_1_readvariableop_resource:
(;
-lstm_cell_833_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_833/BiasAdd/ReadVariableOpб#lstm_cell_833/MatMul/ReadVariableOpб%lstm_cell_833/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_833/MatMul/ReadVariableOpReadVariableOp,lstm_cell_833_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_833/MatMulMatMulstrided_slice_2:output:0+lstm_cell_833/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_833/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_833_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_833/MatMul_1MatMulzeros:output:0-lstm_cell_833/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_833/addAddV2lstm_cell_833/MatMul:product:0 lstm_cell_833/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_833/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_833_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_833/BiasAddBiasAddlstm_cell_833/add:z:0,lstm_cell_833/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_833/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_833/splitSplit&lstm_cell_833/split/split_dim:output:0lstm_cell_833/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_833/SigmoidSigmoidlstm_cell_833/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_833/Sigmoid_1Sigmoidlstm_cell_833/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_833/mulMullstm_cell_833/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_833/ReluRelulstm_cell_833/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_833/mul_1Mullstm_cell_833/Sigmoid:y:0 lstm_cell_833/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_833/add_1AddV2lstm_cell_833/mul:z:0lstm_cell_833/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_833/Sigmoid_2Sigmoidlstm_cell_833/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_833/Relu_1Relulstm_cell_833/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_833/mul_2Mullstm_cell_833/Sigmoid_2:y:0"lstm_cell_833/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_833_matmul_readvariableop_resource.lstm_cell_833_matmul_1_readvariableop_resource-lstm_cell_833_biasadd_readvariableop_resource*
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
while_body_5028458*
condR
while_cond_5028457*K
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
NoOpNoOp%^lstm_cell_833/BiasAdd/ReadVariableOp$^lstm_cell_833/MatMul/ReadVariableOp&^lstm_cell_833/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_833/BiasAdd/ReadVariableOp$lstm_cell_833/BiasAdd/ReadVariableOp2J
#lstm_cell_833/MatMul/ReadVariableOp#lstm_cell_833/MatMul/ReadVariableOp2N
%lstm_cell_833/MatMul_1/ReadVariableOp%lstm_cell_833/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
▀
ѕ
J__inference_lstm_cell_831_layer_call_and_return_conditional_losses_5028770

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
В
ш
/__inference_lstm_cell_833_layer_call_fn_5028934

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
J__inference_lstm_cell_833_layer_call_and_return_conditional_losses_5024582o
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
║
╚
while_cond_5028171
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5028171___redundant_placeholder05
1while_while_cond_5028171___redundant_placeholder15
1while_while_cond_5028171___redundant_placeholder25
1while_while_cond_5028171___redundant_placeholder3
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
Г
╣
*__inference_lstm_831_layer_call_fn_5026859
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
E__inference_lstm_831_layer_call_and_return_conditional_losses_5024010|
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
▀
ѕ
J__inference_lstm_cell_831_layer_call_and_return_conditional_losses_5028802

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
аK
Ц
E__inference_lstm_831_layer_call_and_return_conditional_losses_5027167
inputs_0?
,lstm_cell_831_matmul_readvariableop_resource:	љA
.lstm_cell_831_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_831_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_831/BiasAdd/ReadVariableOpб#lstm_cell_831/MatMul/ReadVariableOpб%lstm_cell_831/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_831/MatMul/ReadVariableOpReadVariableOp,lstm_cell_831_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_831/MatMulMatMulstrided_slice_2:output:0+lstm_cell_831/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_831/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_831_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_831/MatMul_1MatMulzeros:output:0-lstm_cell_831/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_831/addAddV2lstm_cell_831/MatMul:product:0 lstm_cell_831/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_831/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_831_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_831/BiasAddBiasAddlstm_cell_831/add:z:0,lstm_cell_831/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_831/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_831/splitSplit&lstm_cell_831/split/split_dim:output:0lstm_cell_831/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_831/SigmoidSigmoidlstm_cell_831/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_831/Sigmoid_1Sigmoidlstm_cell_831/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_831/mulMullstm_cell_831/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_831/ReluRelulstm_cell_831/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_831/mul_1Mullstm_cell_831/Sigmoid:y:0 lstm_cell_831/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_831/add_1AddV2lstm_cell_831/mul:z:0lstm_cell_831/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_831/Sigmoid_2Sigmoidlstm_cell_831/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_831/Relu_1Relulstm_cell_831/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_831/mul_2Mullstm_cell_831/Sigmoid_2:y:0"lstm_cell_831/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_831_matmul_readvariableop_resource.lstm_cell_831_matmul_1_readvariableop_resource-lstm_cell_831_biasadd_readvariableop_resource*
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
while_body_5027083*
condR
while_cond_5027082*K
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
NoOpNoOp%^lstm_cell_831/BiasAdd/ReadVariableOp$^lstm_cell_831/MatMul/ReadVariableOp&^lstm_cell_831/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_831/BiasAdd/ReadVariableOp$lstm_cell_831/BiasAdd/ReadVariableOp2J
#lstm_cell_831/MatMul/ReadVariableOp#lstm_cell_831/MatMul/ReadVariableOp2N
%lstm_cell_831/MatMul_1/ReadVariableOp%lstm_cell_831/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
║
╚
while_cond_5024290
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5024290___redundant_placeholder05
1while_while_cond_5024290___redundant_placeholder15
1while_while_cond_5024290___redundant_placeholder25
1while_while_cond_5024290___redundant_placeholder3
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
ПJ
а
E__inference_lstm_833_layer_call_and_return_conditional_losses_5025384

inputs>
,lstm_cell_833_matmul_readvariableop_resource:2(@
.lstm_cell_833_matmul_1_readvariableop_resource:
(;
-lstm_cell_833_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_833/BiasAdd/ReadVariableOpб#lstm_cell_833/MatMul/ReadVariableOpб%lstm_cell_833/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_833/MatMul/ReadVariableOpReadVariableOp,lstm_cell_833_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_833/MatMulMatMulstrided_slice_2:output:0+lstm_cell_833/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_833/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_833_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_833/MatMul_1MatMulzeros:output:0-lstm_cell_833/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_833/addAddV2lstm_cell_833/MatMul:product:0 lstm_cell_833/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_833/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_833_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_833/BiasAddBiasAddlstm_cell_833/add:z:0,lstm_cell_833/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_833/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_833/splitSplit&lstm_cell_833/split/split_dim:output:0lstm_cell_833/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_833/SigmoidSigmoidlstm_cell_833/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_833/Sigmoid_1Sigmoidlstm_cell_833/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_833/mulMullstm_cell_833/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_833/ReluRelulstm_cell_833/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_833/mul_1Mullstm_cell_833/Sigmoid:y:0 lstm_cell_833/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_833/add_1AddV2lstm_cell_833/mul:z:0lstm_cell_833/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_833/Sigmoid_2Sigmoidlstm_cell_833/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_833/Relu_1Relulstm_cell_833/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_833/mul_2Mullstm_cell_833/Sigmoid_2:y:0"lstm_cell_833/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_833_matmul_readvariableop_resource.lstm_cell_833_matmul_1_readvariableop_resource-lstm_cell_833_biasadd_readvariableop_resource*
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
while_body_5025300*
condR
while_cond_5025299*K
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
NoOpNoOp%^lstm_cell_833/BiasAdd/ReadVariableOp$^lstm_cell_833/MatMul/ReadVariableOp&^lstm_cell_833/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_833/BiasAdd/ReadVariableOp$lstm_cell_833/BiasAdd/ReadVariableOp2J
#lstm_cell_833/MatMul/ReadVariableOp#lstm_cell_833/MatMul/ReadVariableOp2N
%lstm_cell_833/MatMul_1/ReadVariableOp%lstm_cell_833/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
║
╚
while_cond_5025083
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5025083___redundant_placeholder05
1while_while_cond_5025083___redundant_placeholder15
1while_while_cond_5025083___redundant_placeholder25
1while_while_cond_5025083___redundant_placeholder3
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
РJ
Б
E__inference_lstm_831_layer_call_and_return_conditional_losses_5024868

inputs?
,lstm_cell_831_matmul_readvariableop_resource:	љA
.lstm_cell_831_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_831_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_831/BiasAdd/ReadVariableOpб#lstm_cell_831/MatMul/ReadVariableOpб%lstm_cell_831/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_831/MatMul/ReadVariableOpReadVariableOp,lstm_cell_831_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_831/MatMulMatMulstrided_slice_2:output:0+lstm_cell_831/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_831/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_831_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_831/MatMul_1MatMulzeros:output:0-lstm_cell_831/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_831/addAddV2lstm_cell_831/MatMul:product:0 lstm_cell_831/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_831/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_831_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_831/BiasAddBiasAddlstm_cell_831/add:z:0,lstm_cell_831/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_831/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_831/splitSplit&lstm_cell_831/split/split_dim:output:0lstm_cell_831/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_831/SigmoidSigmoidlstm_cell_831/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_831/Sigmoid_1Sigmoidlstm_cell_831/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_831/mulMullstm_cell_831/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_831/ReluRelulstm_cell_831/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_831/mul_1Mullstm_cell_831/Sigmoid:y:0 lstm_cell_831/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_831/add_1AddV2lstm_cell_831/mul:z:0lstm_cell_831/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_831/Sigmoid_2Sigmoidlstm_cell_831/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_831/Relu_1Relulstm_cell_831/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_831/mul_2Mullstm_cell_831/Sigmoid_2:y:0"lstm_cell_831/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_831_matmul_readvariableop_resource.lstm_cell_831_matmul_1_readvariableop_resource-lstm_cell_831_biasadd_readvariableop_resource*
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
while_body_5024784*
condR
while_cond_5024783*K
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
NoOpNoOp%^lstm_cell_831/BiasAdd/ReadVariableOp$^lstm_cell_831/MatMul/ReadVariableOp&^lstm_cell_831/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_831/BiasAdd/ReadVariableOp$lstm_cell_831/BiasAdd/ReadVariableOp2J
#lstm_cell_831/MatMul/ReadVariableOp#lstm_cell_831/MatMul/ReadVariableOp2N
%lstm_cell_831/MatMul_1/ReadVariableOp%lstm_cell_831/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
аK
Ц
E__inference_lstm_831_layer_call_and_return_conditional_losses_5027024
inputs_0?
,lstm_cell_831_matmul_readvariableop_resource:	љA
.lstm_cell_831_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_831_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_831/BiasAdd/ReadVariableOpб#lstm_cell_831/MatMul/ReadVariableOpб%lstm_cell_831/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_831/MatMul/ReadVariableOpReadVariableOp,lstm_cell_831_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_831/MatMulMatMulstrided_slice_2:output:0+lstm_cell_831/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_831/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_831_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_831/MatMul_1MatMulzeros:output:0-lstm_cell_831/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_831/addAddV2lstm_cell_831/MatMul:product:0 lstm_cell_831/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_831/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_831_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_831/BiasAddBiasAddlstm_cell_831/add:z:0,lstm_cell_831/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_831/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_831/splitSplit&lstm_cell_831/split/split_dim:output:0lstm_cell_831/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_831/SigmoidSigmoidlstm_cell_831/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_831/Sigmoid_1Sigmoidlstm_cell_831/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_831/mulMullstm_cell_831/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_831/ReluRelulstm_cell_831/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_831/mul_1Mullstm_cell_831/Sigmoid:y:0 lstm_cell_831/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_831/add_1AddV2lstm_cell_831/mul:z:0lstm_cell_831/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_831/Sigmoid_2Sigmoidlstm_cell_831/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_831/Relu_1Relulstm_cell_831/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_831/mul_2Mullstm_cell_831/Sigmoid_2:y:0"lstm_cell_831/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_831_matmul_readvariableop_resource.lstm_cell_831_matmul_1_readvariableop_resource-lstm_cell_831_biasadd_readvariableop_resource*
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
while_body_5026940*
condR
while_cond_5026939*K
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
NoOpNoOp%^lstm_cell_831/BiasAdd/ReadVariableOp$^lstm_cell_831/MatMul/ReadVariableOp&^lstm_cell_831/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_831/BiasAdd/ReadVariableOp$lstm_cell_831/BiasAdd/ReadVariableOp2J
#lstm_cell_831/MatMul/ReadVariableOp#lstm_cell_831/MatMul/ReadVariableOp2N
%lstm_cell_831/MatMul_1/ReadVariableOp%lstm_cell_831/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
»8
ј
E__inference_lstm_831_layer_call_and_return_conditional_losses_5024010

inputs(
lstm_cell_831_5023928:	љ(
lstm_cell_831_5023930:	dљ$
lstm_cell_831_5023932:	љ
identityѕб%lstm_cell_831/StatefulPartitionedCallбwhile;
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
%lstm_cell_831/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_831_5023928lstm_cell_831_5023930lstm_cell_831_5023932*
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
J__inference_lstm_cell_831_layer_call_and_return_conditional_losses_5023882n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_831_5023928lstm_cell_831_5023930lstm_cell_831_5023932*
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
while_body_5023941*
condR
while_cond_5023940*K
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
NoOpNoOp&^lstm_cell_831/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2N
%lstm_cell_831/StatefulPartitionedCall%lstm_cell_831/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
Н
Ё
J__inference_lstm_cell_833_layer_call_and_return_conditional_losses_5028998

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
е8
І
E__inference_lstm_833_layer_call_and_return_conditional_losses_5024519

inputs'
lstm_cell_833_5024437:2('
lstm_cell_833_5024439:
(#
lstm_cell_833_5024441:(
identityѕб%lstm_cell_833/StatefulPartitionedCallбwhile;
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
%lstm_cell_833/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_833_5024437lstm_cell_833_5024439lstm_cell_833_5024441*
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
J__inference_lstm_cell_833_layer_call_and_return_conditional_losses_5024436n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_833_5024437lstm_cell_833_5024439lstm_cell_833_5024441*
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
while_body_5024450*
condR
while_cond_5024449*K
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
NoOpNoOp&^lstm_cell_833/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2N
%lstm_cell_833/StatefulPartitionedCall%lstm_cell_833/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  2
 
_user_specified_nameinputs
▀
ѕ
J__inference_lstm_cell_832_layer_call_and_return_conditional_losses_5028868

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
Л8
┌
while_body_5026940
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_831_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_831_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_831_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_831_matmul_readvariableop_resource:	љG
4while_lstm_cell_831_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_831_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_831/BiasAdd/ReadVariableOpб)while/lstm_cell_831/MatMul/ReadVariableOpб+while/lstm_cell_831/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_831/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_831_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_831/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_831/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_831/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_831_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_831/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_831/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_831/addAddV2$while/lstm_cell_831/MatMul:product:0&while/lstm_cell_831/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_831/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_831_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_831/BiasAddBiasAddwhile/lstm_cell_831/add:z:02while/lstm_cell_831/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_831/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_831/splitSplit,while/lstm_cell_831/split/split_dim:output:0$while/lstm_cell_831/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_831/SigmoidSigmoid"while/lstm_cell_831/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_831/Sigmoid_1Sigmoid"while/lstm_cell_831/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_831/mulMul!while/lstm_cell_831/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_831/ReluRelu"while/lstm_cell_831/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_831/mul_1Mulwhile/lstm_cell_831/Sigmoid:y:0&while/lstm_cell_831/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_831/add_1AddV2while/lstm_cell_831/mul:z:0while/lstm_cell_831/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_831/Sigmoid_2Sigmoid"while/lstm_cell_831/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_831/Relu_1Reluwhile/lstm_cell_831/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_831/mul_2Mul!while/lstm_cell_831/Sigmoid_2:y:0(while/lstm_cell_831/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_831/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_831/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_831/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_831/BiasAdd/ReadVariableOp*^while/lstm_cell_831/MatMul/ReadVariableOp,^while/lstm_cell_831/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_831_biasadd_readvariableop_resource5while_lstm_cell_831_biasadd_readvariableop_resource_0"n
4while_lstm_cell_831_matmul_1_readvariableop_resource6while_lstm_cell_831_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_831_matmul_readvariableop_resource4while_lstm_cell_831_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_831/BiasAdd/ReadVariableOp*while/lstm_cell_831/BiasAdd/ReadVariableOp2V
)while/lstm_cell_831/MatMul/ReadVariableOp)while/lstm_cell_831/MatMul/ReadVariableOp2Z
+while/lstm_cell_831/MatMul_1/ReadVariableOp+while/lstm_cell_831/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5027984
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5027984___redundant_placeholder05
1while_while_cond_5027984___redundant_placeholder15
1while_while_cond_5027984___redundant_placeholder25
1while_while_cond_5027984___redundant_placeholder3
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
■Ђ
Џ
K__inference_sequential_277_layer_call_and_return_conditional_losses_5026410

inputsH
5lstm_831_lstm_cell_831_matmul_readvariableop_resource:	љJ
7lstm_831_lstm_cell_831_matmul_1_readvariableop_resource:	dљE
6lstm_831_lstm_cell_831_biasadd_readvariableop_resource:	љH
5lstm_832_lstm_cell_832_matmul_readvariableop_resource:	d╚J
7lstm_832_lstm_cell_832_matmul_1_readvariableop_resource:	2╚E
6lstm_832_lstm_cell_832_biasadd_readvariableop_resource:	╚G
5lstm_833_lstm_cell_833_matmul_readvariableop_resource:2(I
7lstm_833_lstm_cell_833_matmul_1_readvariableop_resource:
(D
6lstm_833_lstm_cell_833_biasadd_readvariableop_resource:(:
(dense_277_matmul_readvariableop_resource:
7
)dense_277_biasadd_readvariableop_resource:
identityѕб dense_277/BiasAdd/ReadVariableOpбdense_277/MatMul/ReadVariableOpб-lstm_831/lstm_cell_831/BiasAdd/ReadVariableOpб,lstm_831/lstm_cell_831/MatMul/ReadVariableOpб.lstm_831/lstm_cell_831/MatMul_1/ReadVariableOpбlstm_831/whileб-lstm_832/lstm_cell_832/BiasAdd/ReadVariableOpб,lstm_832/lstm_cell_832/MatMul/ReadVariableOpб.lstm_832/lstm_cell_832/MatMul_1/ReadVariableOpбlstm_832/whileб-lstm_833/lstm_cell_833/BiasAdd/ReadVariableOpб,lstm_833/lstm_cell_833/MatMul/ReadVariableOpб.lstm_833/lstm_cell_833/MatMul_1/ReadVariableOpбlstm_833/whileD
lstm_831/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_831/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_831/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_831/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_831/strided_sliceStridedSlicelstm_831/Shape:output:0%lstm_831/strided_slice/stack:output:0'lstm_831/strided_slice/stack_1:output:0'lstm_831/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_831/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dј
lstm_831/zeros/packedPacklstm_831/strided_slice:output:0 lstm_831/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_831/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_831/zerosFilllstm_831/zeros/packed:output:0lstm_831/zeros/Const:output:0*
T0*'
_output_shapes
:         d[
lstm_831/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dњ
lstm_831/zeros_1/packedPacklstm_831/strided_slice:output:0"lstm_831/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_831/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_831/zeros_1Fill lstm_831/zeros_1/packed:output:0lstm_831/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dl
lstm_831/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_831/transpose	Transposeinputs lstm_831/transpose/perm:output:0*
T0*+
_output_shapes
:         V
lstm_831/Shape_1Shapelstm_831/transpose:y:0*
T0*
_output_shapes
:h
lstm_831/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_831/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_831/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_831/strided_slice_1StridedSlicelstm_831/Shape_1:output:0'lstm_831/strided_slice_1/stack:output:0)lstm_831/strided_slice_1/stack_1:output:0)lstm_831/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_831/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_831/TensorArrayV2TensorListReserve-lstm_831/TensorArrayV2/element_shape:output:0!lstm_831/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_831/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ч
0lstm_831/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_831/transpose:y:0Glstm_831/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_831/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_831/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_831/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_831/strided_slice_2StridedSlicelstm_831/transpose:y:0'lstm_831/strided_slice_2/stack:output:0)lstm_831/strided_slice_2/stack_1:output:0)lstm_831/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskБ
,lstm_831/lstm_cell_831/MatMul/ReadVariableOpReadVariableOp5lstm_831_lstm_cell_831_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0│
lstm_831/lstm_cell_831/MatMulMatMul!lstm_831/strided_slice_2:output:04lstm_831/lstm_cell_831/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љД
.lstm_831/lstm_cell_831/MatMul_1/ReadVariableOpReadVariableOp7lstm_831_lstm_cell_831_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0Г
lstm_831/lstm_cell_831/MatMul_1MatMullstm_831/zeros:output:06lstm_831/lstm_cell_831/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љф
lstm_831/lstm_cell_831/addAddV2'lstm_831/lstm_cell_831/MatMul:product:0)lstm_831/lstm_cell_831/MatMul_1:product:0*
T0*(
_output_shapes
:         љА
-lstm_831/lstm_cell_831/BiasAdd/ReadVariableOpReadVariableOp6lstm_831_lstm_cell_831_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0│
lstm_831/lstm_cell_831/BiasAddBiasAddlstm_831/lstm_cell_831/add:z:05lstm_831/lstm_cell_831/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љh
&lstm_831/lstm_cell_831/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_831/lstm_cell_831/splitSplit/lstm_831/lstm_cell_831/split/split_dim:output:0'lstm_831/lstm_cell_831/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitѓ
lstm_831/lstm_cell_831/SigmoidSigmoid%lstm_831/lstm_cell_831/split:output:0*
T0*'
_output_shapes
:         dё
 lstm_831/lstm_cell_831/Sigmoid_1Sigmoid%lstm_831/lstm_cell_831/split:output:1*
T0*'
_output_shapes
:         dћ
lstm_831/lstm_cell_831/mulMul$lstm_831/lstm_cell_831/Sigmoid_1:y:0lstm_831/zeros_1:output:0*
T0*'
_output_shapes
:         d|
lstm_831/lstm_cell_831/ReluRelu%lstm_831/lstm_cell_831/split:output:2*
T0*'
_output_shapes
:         dц
lstm_831/lstm_cell_831/mul_1Mul"lstm_831/lstm_cell_831/Sigmoid:y:0)lstm_831/lstm_cell_831/Relu:activations:0*
T0*'
_output_shapes
:         dЎ
lstm_831/lstm_cell_831/add_1AddV2lstm_831/lstm_cell_831/mul:z:0 lstm_831/lstm_cell_831/mul_1:z:0*
T0*'
_output_shapes
:         dё
 lstm_831/lstm_cell_831/Sigmoid_2Sigmoid%lstm_831/lstm_cell_831/split:output:3*
T0*'
_output_shapes
:         dy
lstm_831/lstm_cell_831/Relu_1Relu lstm_831/lstm_cell_831/add_1:z:0*
T0*'
_output_shapes
:         dе
lstm_831/lstm_cell_831/mul_2Mul$lstm_831/lstm_cell_831/Sigmoid_2:y:0+lstm_831/lstm_cell_831/Relu_1:activations:0*
T0*'
_output_shapes
:         dw
&lstm_831/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
lstm_831/TensorArrayV2_1TensorListReserve/lstm_831/TensorArrayV2_1/element_shape:output:0!lstm_831/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_831/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_831/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_831/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_831/whileWhile$lstm_831/while/loop_counter:output:0*lstm_831/while/maximum_iterations:output:0lstm_831/time:output:0!lstm_831/TensorArrayV2_1:handle:0lstm_831/zeros:output:0lstm_831/zeros_1:output:0!lstm_831/strided_slice_1:output:0@lstm_831/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_831_lstm_cell_831_matmul_readvariableop_resource7lstm_831_lstm_cell_831_matmul_1_readvariableop_resource6lstm_831_lstm_cell_831_biasadd_readvariableop_resource*
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
lstm_831_while_body_5026042*'
condR
lstm_831_while_cond_5026041*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations і
9lstm_831/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   П
+lstm_831/TensorArrayV2Stack/TensorListStackTensorListStacklstm_831/while:output:3Blstm_831/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0q
lstm_831/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_831/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_831/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_831/strided_slice_3StridedSlice4lstm_831/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_831/strided_slice_3/stack:output:0)lstm_831/strided_slice_3/stack_1:output:0)lstm_831/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskn
lstm_831/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_831/transpose_1	Transpose4lstm_831/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_831/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dd
lstm_831/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_832/ShapeShapelstm_831/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_832/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_832/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_832/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_832/strided_sliceStridedSlicelstm_832/Shape:output:0%lstm_832/strided_slice/stack:output:0'lstm_832/strided_slice/stack_1:output:0'lstm_832/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_832/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ј
lstm_832/zeros/packedPacklstm_832/strided_slice:output:0 lstm_832/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_832/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_832/zerosFilllstm_832/zeros/packed:output:0lstm_832/zeros/Const:output:0*
T0*'
_output_shapes
:         2[
lstm_832/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2њ
lstm_832/zeros_1/packedPacklstm_832/strided_slice:output:0"lstm_832/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_832/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_832/zeros_1Fill lstm_832/zeros_1/packed:output:0lstm_832/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2l
lstm_832/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_832/transpose	Transposelstm_831/transpose_1:y:0 lstm_832/transpose/perm:output:0*
T0*+
_output_shapes
:         dV
lstm_832/Shape_1Shapelstm_832/transpose:y:0*
T0*
_output_shapes
:h
lstm_832/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_832/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_832/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_832/strided_slice_1StridedSlicelstm_832/Shape_1:output:0'lstm_832/strided_slice_1/stack:output:0)lstm_832/strided_slice_1/stack_1:output:0)lstm_832/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_832/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_832/TensorArrayV2TensorListReserve-lstm_832/TensorArrayV2/element_shape:output:0!lstm_832/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_832/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ч
0lstm_832/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_832/transpose:y:0Glstm_832/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_832/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_832/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_832/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_832/strided_slice_2StridedSlicelstm_832/transpose:y:0'lstm_832/strided_slice_2/stack:output:0)lstm_832/strided_slice_2/stack_1:output:0)lstm_832/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskБ
,lstm_832/lstm_cell_832/MatMul/ReadVariableOpReadVariableOp5lstm_832_lstm_cell_832_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0│
lstm_832/lstm_cell_832/MatMulMatMul!lstm_832/strided_slice_2:output:04lstm_832/lstm_cell_832/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Д
.lstm_832/lstm_cell_832/MatMul_1/ReadVariableOpReadVariableOp7lstm_832_lstm_cell_832_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0Г
lstm_832/lstm_cell_832/MatMul_1MatMullstm_832/zeros:output:06lstm_832/lstm_cell_832/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ф
lstm_832/lstm_cell_832/addAddV2'lstm_832/lstm_cell_832/MatMul:product:0)lstm_832/lstm_cell_832/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚А
-lstm_832/lstm_cell_832/BiasAdd/ReadVariableOpReadVariableOp6lstm_832_lstm_cell_832_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0│
lstm_832/lstm_cell_832/BiasAddBiasAddlstm_832/lstm_cell_832/add:z:05lstm_832/lstm_cell_832/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚h
&lstm_832/lstm_cell_832/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_832/lstm_cell_832/splitSplit/lstm_832/lstm_cell_832/split/split_dim:output:0'lstm_832/lstm_cell_832/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitѓ
lstm_832/lstm_cell_832/SigmoidSigmoid%lstm_832/lstm_cell_832/split:output:0*
T0*'
_output_shapes
:         2ё
 lstm_832/lstm_cell_832/Sigmoid_1Sigmoid%lstm_832/lstm_cell_832/split:output:1*
T0*'
_output_shapes
:         2ћ
lstm_832/lstm_cell_832/mulMul$lstm_832/lstm_cell_832/Sigmoid_1:y:0lstm_832/zeros_1:output:0*
T0*'
_output_shapes
:         2|
lstm_832/lstm_cell_832/ReluRelu%lstm_832/lstm_cell_832/split:output:2*
T0*'
_output_shapes
:         2ц
lstm_832/lstm_cell_832/mul_1Mul"lstm_832/lstm_cell_832/Sigmoid:y:0)lstm_832/lstm_cell_832/Relu:activations:0*
T0*'
_output_shapes
:         2Ў
lstm_832/lstm_cell_832/add_1AddV2lstm_832/lstm_cell_832/mul:z:0 lstm_832/lstm_cell_832/mul_1:z:0*
T0*'
_output_shapes
:         2ё
 lstm_832/lstm_cell_832/Sigmoid_2Sigmoid%lstm_832/lstm_cell_832/split:output:3*
T0*'
_output_shapes
:         2y
lstm_832/lstm_cell_832/Relu_1Relu lstm_832/lstm_cell_832/add_1:z:0*
T0*'
_output_shapes
:         2е
lstm_832/lstm_cell_832/mul_2Mul$lstm_832/lstm_cell_832/Sigmoid_2:y:0+lstm_832/lstm_cell_832/Relu_1:activations:0*
T0*'
_output_shapes
:         2w
&lstm_832/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
lstm_832/TensorArrayV2_1TensorListReserve/lstm_832/TensorArrayV2_1/element_shape:output:0!lstm_832/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_832/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_832/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_832/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_832/whileWhile$lstm_832/while/loop_counter:output:0*lstm_832/while/maximum_iterations:output:0lstm_832/time:output:0!lstm_832/TensorArrayV2_1:handle:0lstm_832/zeros:output:0lstm_832/zeros_1:output:0!lstm_832/strided_slice_1:output:0@lstm_832/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_832_lstm_cell_832_matmul_readvariableop_resource7lstm_832_lstm_cell_832_matmul_1_readvariableop_resource6lstm_832_lstm_cell_832_biasadd_readvariableop_resource*
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
lstm_832_while_body_5026181*'
condR
lstm_832_while_cond_5026180*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations і
9lstm_832/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   П
+lstm_832/TensorArrayV2Stack/TensorListStackTensorListStacklstm_832/while:output:3Blstm_832/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0q
lstm_832/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_832/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_832/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_832/strided_slice_3StridedSlice4lstm_832/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_832/strided_slice_3/stack:output:0)lstm_832/strided_slice_3/stack_1:output:0)lstm_832/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskn
lstm_832/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_832/transpose_1	Transpose4lstm_832/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_832/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2d
lstm_832/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_833/ShapeShapelstm_832/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_833/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_833/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_833/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_833/strided_sliceStridedSlicelstm_833/Shape:output:0%lstm_833/strided_slice/stack:output:0'lstm_833/strided_slice/stack_1:output:0'lstm_833/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_833/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ј
lstm_833/zeros/packedPacklstm_833/strided_slice:output:0 lstm_833/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_833/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_833/zerosFilllstm_833/zeros/packed:output:0lstm_833/zeros/Const:output:0*
T0*'
_output_shapes
:         
[
lstm_833/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
њ
lstm_833/zeros_1/packedPacklstm_833/strided_slice:output:0"lstm_833/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_833/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_833/zeros_1Fill lstm_833/zeros_1/packed:output:0lstm_833/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
l
lstm_833/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_833/transpose	Transposelstm_832/transpose_1:y:0 lstm_833/transpose/perm:output:0*
T0*+
_output_shapes
:         2V
lstm_833/Shape_1Shapelstm_833/transpose:y:0*
T0*
_output_shapes
:h
lstm_833/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_833/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_833/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_833/strided_slice_1StridedSlicelstm_833/Shape_1:output:0'lstm_833/strided_slice_1/stack:output:0)lstm_833/strided_slice_1/stack_1:output:0)lstm_833/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_833/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_833/TensorArrayV2TensorListReserve-lstm_833/TensorArrayV2/element_shape:output:0!lstm_833/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_833/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ч
0lstm_833/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_833/transpose:y:0Glstm_833/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_833/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_833/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_833/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_833/strided_slice_2StridedSlicelstm_833/transpose:y:0'lstm_833/strided_slice_2/stack:output:0)lstm_833/strided_slice_2/stack_1:output:0)lstm_833/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskб
,lstm_833/lstm_cell_833/MatMul/ReadVariableOpReadVariableOp5lstm_833_lstm_cell_833_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▓
lstm_833/lstm_cell_833/MatMulMatMul!lstm_833/strided_slice_2:output:04lstm_833/lstm_cell_833/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (д
.lstm_833/lstm_cell_833/MatMul_1/ReadVariableOpReadVariableOp7lstm_833_lstm_cell_833_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0г
lstm_833/lstm_cell_833/MatMul_1MatMullstm_833/zeros:output:06lstm_833/lstm_cell_833/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Е
lstm_833/lstm_cell_833/addAddV2'lstm_833/lstm_cell_833/MatMul:product:0)lstm_833/lstm_cell_833/MatMul_1:product:0*
T0*'
_output_shapes
:         (а
-lstm_833/lstm_cell_833/BiasAdd/ReadVariableOpReadVariableOp6lstm_833_lstm_cell_833_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▓
lstm_833/lstm_cell_833/BiasAddBiasAddlstm_833/lstm_cell_833/add:z:05lstm_833/lstm_cell_833/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (h
&lstm_833/lstm_cell_833/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_833/lstm_cell_833/splitSplit/lstm_833/lstm_cell_833/split/split_dim:output:0'lstm_833/lstm_cell_833/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitѓ
lstm_833/lstm_cell_833/SigmoidSigmoid%lstm_833/lstm_cell_833/split:output:0*
T0*'
_output_shapes
:         
ё
 lstm_833/lstm_cell_833/Sigmoid_1Sigmoid%lstm_833/lstm_cell_833/split:output:1*
T0*'
_output_shapes
:         
ћ
lstm_833/lstm_cell_833/mulMul$lstm_833/lstm_cell_833/Sigmoid_1:y:0lstm_833/zeros_1:output:0*
T0*'
_output_shapes
:         
|
lstm_833/lstm_cell_833/ReluRelu%lstm_833/lstm_cell_833/split:output:2*
T0*'
_output_shapes
:         
ц
lstm_833/lstm_cell_833/mul_1Mul"lstm_833/lstm_cell_833/Sigmoid:y:0)lstm_833/lstm_cell_833/Relu:activations:0*
T0*'
_output_shapes
:         
Ў
lstm_833/lstm_cell_833/add_1AddV2lstm_833/lstm_cell_833/mul:z:0 lstm_833/lstm_cell_833/mul_1:z:0*
T0*'
_output_shapes
:         
ё
 lstm_833/lstm_cell_833/Sigmoid_2Sigmoid%lstm_833/lstm_cell_833/split:output:3*
T0*'
_output_shapes
:         
y
lstm_833/lstm_cell_833/Relu_1Relu lstm_833/lstm_cell_833/add_1:z:0*
T0*'
_output_shapes
:         
е
lstm_833/lstm_cell_833/mul_2Mul$lstm_833/lstm_cell_833/Sigmoid_2:y:0+lstm_833/lstm_cell_833/Relu_1:activations:0*
T0*'
_output_shapes
:         
w
&lstm_833/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   М
lstm_833/TensorArrayV2_1TensorListReserve/lstm_833/TensorArrayV2_1/element_shape:output:0!lstm_833/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_833/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_833/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_833/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_833/whileWhile$lstm_833/while/loop_counter:output:0*lstm_833/while/maximum_iterations:output:0lstm_833/time:output:0!lstm_833/TensorArrayV2_1:handle:0lstm_833/zeros:output:0lstm_833/zeros_1:output:0!lstm_833/strided_slice_1:output:0@lstm_833/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_833_lstm_cell_833_matmul_readvariableop_resource7lstm_833_lstm_cell_833_matmul_1_readvariableop_resource6lstm_833_lstm_cell_833_biasadd_readvariableop_resource*
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
lstm_833_while_body_5026320*'
condR
lstm_833_while_cond_5026319*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations і
9lstm_833/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   П
+lstm_833/TensorArrayV2Stack/TensorListStackTensorListStacklstm_833/while:output:3Blstm_833/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0q
lstm_833/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_833/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_833/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_833/strided_slice_3StridedSlice4lstm_833/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_833/strided_slice_3/stack:output:0)lstm_833/strided_slice_3/stack_1:output:0)lstm_833/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskn
lstm_833/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_833/transpose_1	Transpose4lstm_833/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_833/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
d
lstm_833/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ѕ
dense_277/MatMul/ReadVariableOpReadVariableOp(dense_277_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0ў
dense_277/MatMulMatMul!lstm_833/strided_slice_3:output:0'dense_277/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         є
 dense_277/BiasAdd/ReadVariableOpReadVariableOp)dense_277_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ћ
dense_277/BiasAddBiasAdddense_277/MatMul:product:0(dense_277/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_277/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Ь
NoOpNoOp!^dense_277/BiasAdd/ReadVariableOp ^dense_277/MatMul/ReadVariableOp.^lstm_831/lstm_cell_831/BiasAdd/ReadVariableOp-^lstm_831/lstm_cell_831/MatMul/ReadVariableOp/^lstm_831/lstm_cell_831/MatMul_1/ReadVariableOp^lstm_831/while.^lstm_832/lstm_cell_832/BiasAdd/ReadVariableOp-^lstm_832/lstm_cell_832/MatMul/ReadVariableOp/^lstm_832/lstm_cell_832/MatMul_1/ReadVariableOp^lstm_832/while.^lstm_833/lstm_cell_833/BiasAdd/ReadVariableOp-^lstm_833/lstm_cell_833/MatMul/ReadVariableOp/^lstm_833/lstm_cell_833/MatMul_1/ReadVariableOp^lstm_833/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_277/BiasAdd/ReadVariableOp dense_277/BiasAdd/ReadVariableOp2B
dense_277/MatMul/ReadVariableOpdense_277/MatMul/ReadVariableOp2^
-lstm_831/lstm_cell_831/BiasAdd/ReadVariableOp-lstm_831/lstm_cell_831/BiasAdd/ReadVariableOp2\
,lstm_831/lstm_cell_831/MatMul/ReadVariableOp,lstm_831/lstm_cell_831/MatMul/ReadVariableOp2`
.lstm_831/lstm_cell_831/MatMul_1/ReadVariableOp.lstm_831/lstm_cell_831/MatMul_1/ReadVariableOp2 
lstm_831/whilelstm_831/while2^
-lstm_832/lstm_cell_832/BiasAdd/ReadVariableOp-lstm_832/lstm_cell_832/BiasAdd/ReadVariableOp2\
,lstm_832/lstm_cell_832/MatMul/ReadVariableOp,lstm_832/lstm_cell_832/MatMul/ReadVariableOp2`
.lstm_832/lstm_cell_832/MatMul_1/ReadVariableOp.lstm_832/lstm_cell_832/MatMul_1/ReadVariableOp2 
lstm_832/whilelstm_832/while2^
-lstm_833/lstm_cell_833/BiasAdd/ReadVariableOp-lstm_833/lstm_cell_833/BiasAdd/ReadVariableOp2\
,lstm_833/lstm_cell_833/MatMul/ReadVariableOp,lstm_833/lstm_cell_833/MatMul/ReadVariableOp2`
.lstm_833/lstm_cell_833/MatMul_1/ReadVariableOp.lstm_833/lstm_cell_833/MatMul_1/ReadVariableOp2 
lstm_833/whilelstm_833/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
О
є
J__inference_lstm_cell_831_layer_call_and_return_conditional_losses_5023736

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
РJ
Б
E__inference_lstm_832_layer_call_and_return_conditional_losses_5027926

inputs?
,lstm_cell_832_matmul_readvariableop_resource:	d╚A
.lstm_cell_832_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_832_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_832/BiasAdd/ReadVariableOpб#lstm_cell_832/MatMul/ReadVariableOpб%lstm_cell_832/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_832/MatMul/ReadVariableOpReadVariableOp,lstm_cell_832_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_832/MatMulMatMulstrided_slice_2:output:0+lstm_cell_832/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_832/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_832_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_832/MatMul_1MatMulzeros:output:0-lstm_cell_832/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_832/addAddV2lstm_cell_832/MatMul:product:0 lstm_cell_832/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_832/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_832_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_832/BiasAddBiasAddlstm_cell_832/add:z:0,lstm_cell_832/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_832/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_832/splitSplit&lstm_cell_832/split/split_dim:output:0lstm_cell_832/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_832/SigmoidSigmoidlstm_cell_832/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_832/Sigmoid_1Sigmoidlstm_cell_832/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_832/mulMullstm_cell_832/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_832/ReluRelulstm_cell_832/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_832/mul_1Mullstm_cell_832/Sigmoid:y:0 lstm_cell_832/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_832/add_1AddV2lstm_cell_832/mul:z:0lstm_cell_832/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_832/Sigmoid_2Sigmoidlstm_cell_832/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_832/Relu_1Relulstm_cell_832/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_832/mul_2Mullstm_cell_832/Sigmoid_2:y:0"lstm_cell_832/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_832_matmul_readvariableop_resource.lstm_cell_832_matmul_1_readvariableop_resource-lstm_cell_832_biasadd_readvariableop_resource*
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
while_body_5027842*
condR
while_cond_5027841*K
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
NoOpNoOp%^lstm_cell_832/BiasAdd/ReadVariableOp$^lstm_cell_832/MatMul/ReadVariableOp&^lstm_cell_832/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_832/BiasAdd/ReadVariableOp$lstm_cell_832/BiasAdd/ReadVariableOp2J
#lstm_cell_832/MatMul/ReadVariableOp#lstm_cell_832/MatMul/ReadVariableOp2N
%lstm_cell_832/MatMul_1/ReadVariableOp%lstm_cell_832/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
љ
Х
*__inference_lstm_833_layer_call_fn_5028091
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
E__inference_lstm_833_layer_call_and_return_conditional_losses_5024710o
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
║
╚
while_cond_5024783
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5024783___redundant_placeholder05
1while_while_cond_5024783___redundant_placeholder15
1while_while_cond_5024783___redundant_placeholder25
1while_while_cond_5024783___redundant_placeholder3
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
я

ю
0__inference_sequential_277_layer_call_fn_5025983

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
identityѕбStatefulPartitionedCallН
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
GPU 2J 8ѓ *T
fORM
K__inference_sequential_277_layer_call_and_return_conditional_losses_5025782o
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
║
╚
while_cond_5024640
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5024640___redundant_placeholder05
1while_while_cond_5024640___redundant_placeholder15
1while_while_cond_5024640___redundant_placeholder25
1while_while_cond_5024640___redundant_placeholder3
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
њK
б
E__inference_lstm_833_layer_call_and_return_conditional_losses_5028256
inputs_0>
,lstm_cell_833_matmul_readvariableop_resource:2(@
.lstm_cell_833_matmul_1_readvariableop_resource:
(;
-lstm_cell_833_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_833/BiasAdd/ReadVariableOpб#lstm_cell_833/MatMul/ReadVariableOpб%lstm_cell_833/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_833/MatMul/ReadVariableOpReadVariableOp,lstm_cell_833_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_833/MatMulMatMulstrided_slice_2:output:0+lstm_cell_833/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_833/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_833_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_833/MatMul_1MatMulzeros:output:0-lstm_cell_833/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_833/addAddV2lstm_cell_833/MatMul:product:0 lstm_cell_833/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_833/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_833_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_833/BiasAddBiasAddlstm_cell_833/add:z:0,lstm_cell_833/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_833/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_833/splitSplit&lstm_cell_833/split/split_dim:output:0lstm_cell_833/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_833/SigmoidSigmoidlstm_cell_833/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_833/Sigmoid_1Sigmoidlstm_cell_833/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_833/mulMullstm_cell_833/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_833/ReluRelulstm_cell_833/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_833/mul_1Mullstm_cell_833/Sigmoid:y:0 lstm_cell_833/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_833/add_1AddV2lstm_cell_833/mul:z:0lstm_cell_833/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_833/Sigmoid_2Sigmoidlstm_cell_833/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_833/Relu_1Relulstm_cell_833/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_833/mul_2Mullstm_cell_833/Sigmoid_2:y:0"lstm_cell_833/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_833_matmul_readvariableop_resource.lstm_cell_833_matmul_1_readvariableop_resource-lstm_cell_833_biasadd_readvariableop_resource*
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
while_body_5028172*
condR
while_cond_5028171*K
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
NoOpNoOp%^lstm_cell_833/BiasAdd/ReadVariableOp$^lstm_cell_833/MatMul/ReadVariableOp&^lstm_cell_833/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2L
$lstm_cell_833/BiasAdd/ReadVariableOp$lstm_cell_833/BiasAdd/ReadVariableOp2J
#lstm_cell_833/MatMul/ReadVariableOp#lstm_cell_833/MatMul/ReadVariableOp2N
%lstm_cell_833/MatMul_1/ReadVariableOp%lstm_cell_833/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
║
╚
while_cond_5027555
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5027555___redundant_placeholder05
1while_while_cond_5027555___redundant_placeholder15
1while_while_cond_5027555___redundant_placeholder25
1while_while_cond_5027555___redundant_placeholder3
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
while_cond_5028314
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5028314___redundant_placeholder05
1while_while_cond_5028314___redundant_placeholder15
1while_while_cond_5028314___redundant_placeholder25
1while_while_cond_5028314___redundant_placeholder3
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
чT
я
*sequential_277_lstm_831_while_body_5023301L
Hsequential_277_lstm_831_while_sequential_277_lstm_831_while_loop_counterR
Nsequential_277_lstm_831_while_sequential_277_lstm_831_while_maximum_iterations-
)sequential_277_lstm_831_while_placeholder/
+sequential_277_lstm_831_while_placeholder_1/
+sequential_277_lstm_831_while_placeholder_2/
+sequential_277_lstm_831_while_placeholder_3K
Gsequential_277_lstm_831_while_sequential_277_lstm_831_strided_slice_1_0ѕ
Ѓsequential_277_lstm_831_while_tensorarrayv2read_tensorlistgetitem_sequential_277_lstm_831_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_277_lstm_831_while_lstm_cell_831_matmul_readvariableop_resource_0:	љa
Nsequential_277_lstm_831_while_lstm_cell_831_matmul_1_readvariableop_resource_0:	dљ\
Msequential_277_lstm_831_while_lstm_cell_831_biasadd_readvariableop_resource_0:	љ*
&sequential_277_lstm_831_while_identity,
(sequential_277_lstm_831_while_identity_1,
(sequential_277_lstm_831_while_identity_2,
(sequential_277_lstm_831_while_identity_3,
(sequential_277_lstm_831_while_identity_4,
(sequential_277_lstm_831_while_identity_5I
Esequential_277_lstm_831_while_sequential_277_lstm_831_strided_slice_1є
Ђsequential_277_lstm_831_while_tensorarrayv2read_tensorlistgetitem_sequential_277_lstm_831_tensorarrayunstack_tensorlistfromtensor]
Jsequential_277_lstm_831_while_lstm_cell_831_matmul_readvariableop_resource:	љ_
Lsequential_277_lstm_831_while_lstm_cell_831_matmul_1_readvariableop_resource:	dљZ
Ksequential_277_lstm_831_while_lstm_cell_831_biasadd_readvariableop_resource:	љѕбBsequential_277/lstm_831/while/lstm_cell_831/BiasAdd/ReadVariableOpбAsequential_277/lstm_831/while/lstm_cell_831/MatMul/ReadVariableOpбCsequential_277/lstm_831/while/lstm_cell_831/MatMul_1/ReadVariableOpа
Osequential_277/lstm_831/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ъ
Asequential_277/lstm_831/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЃsequential_277_lstm_831_while_tensorarrayv2read_tensorlistgetitem_sequential_277_lstm_831_tensorarrayunstack_tensorlistfromtensor_0)sequential_277_lstm_831_while_placeholderXsequential_277/lstm_831/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0¤
Asequential_277/lstm_831/while/lstm_cell_831/MatMul/ReadVariableOpReadVariableOpLsequential_277_lstm_831_while_lstm_cell_831_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0ё
2sequential_277/lstm_831/while/lstm_cell_831/MatMulMatMulHsequential_277/lstm_831/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_277/lstm_831/while/lstm_cell_831/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љМ
Csequential_277/lstm_831/while/lstm_cell_831/MatMul_1/ReadVariableOpReadVariableOpNsequential_277_lstm_831_while_lstm_cell_831_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0в
4sequential_277/lstm_831/while/lstm_cell_831/MatMul_1MatMul+sequential_277_lstm_831_while_placeholder_2Ksequential_277/lstm_831/while/lstm_cell_831/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љж
/sequential_277/lstm_831/while/lstm_cell_831/addAddV2<sequential_277/lstm_831/while/lstm_cell_831/MatMul:product:0>sequential_277/lstm_831/while/lstm_cell_831/MatMul_1:product:0*
T0*(
_output_shapes
:         љ═
Bsequential_277/lstm_831/while/lstm_cell_831/BiasAdd/ReadVariableOpReadVariableOpMsequential_277_lstm_831_while_lstm_cell_831_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Ы
3sequential_277/lstm_831/while/lstm_cell_831/BiasAddBiasAdd3sequential_277/lstm_831/while/lstm_cell_831/add:z:0Jsequential_277/lstm_831/while/lstm_cell_831/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ}
;sequential_277/lstm_831/while/lstm_cell_831/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
1sequential_277/lstm_831/while/lstm_cell_831/splitSplitDsequential_277/lstm_831/while/lstm_cell_831/split/split_dim:output:0<sequential_277/lstm_831/while/lstm_cell_831/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitг
3sequential_277/lstm_831/while/lstm_cell_831/SigmoidSigmoid:sequential_277/lstm_831/while/lstm_cell_831/split:output:0*
T0*'
_output_shapes
:         d«
5sequential_277/lstm_831/while/lstm_cell_831/Sigmoid_1Sigmoid:sequential_277/lstm_831/while/lstm_cell_831/split:output:1*
T0*'
_output_shapes
:         dл
/sequential_277/lstm_831/while/lstm_cell_831/mulMul9sequential_277/lstm_831/while/lstm_cell_831/Sigmoid_1:y:0+sequential_277_lstm_831_while_placeholder_3*
T0*'
_output_shapes
:         dд
0sequential_277/lstm_831/while/lstm_cell_831/ReluRelu:sequential_277/lstm_831/while/lstm_cell_831/split:output:2*
T0*'
_output_shapes
:         dс
1sequential_277/lstm_831/while/lstm_cell_831/mul_1Mul7sequential_277/lstm_831/while/lstm_cell_831/Sigmoid:y:0>sequential_277/lstm_831/while/lstm_cell_831/Relu:activations:0*
T0*'
_output_shapes
:         dп
1sequential_277/lstm_831/while/lstm_cell_831/add_1AddV23sequential_277/lstm_831/while/lstm_cell_831/mul:z:05sequential_277/lstm_831/while/lstm_cell_831/mul_1:z:0*
T0*'
_output_shapes
:         d«
5sequential_277/lstm_831/while/lstm_cell_831/Sigmoid_2Sigmoid:sequential_277/lstm_831/while/lstm_cell_831/split:output:3*
T0*'
_output_shapes
:         dБ
2sequential_277/lstm_831/while/lstm_cell_831/Relu_1Relu5sequential_277/lstm_831/while/lstm_cell_831/add_1:z:0*
T0*'
_output_shapes
:         dу
1sequential_277/lstm_831/while/lstm_cell_831/mul_2Mul9sequential_277/lstm_831/while/lstm_cell_831/Sigmoid_2:y:0@sequential_277/lstm_831/while/lstm_cell_831/Relu_1:activations:0*
T0*'
_output_shapes
:         dд
Bsequential_277/lstm_831/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_277_lstm_831_while_placeholder_1)sequential_277_lstm_831_while_placeholder5sequential_277/lstm_831/while/lstm_cell_831/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмe
#sequential_277/lstm_831/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ц
!sequential_277/lstm_831/while/addAddV2)sequential_277_lstm_831_while_placeholder,sequential_277/lstm_831/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_277/lstm_831/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :К
#sequential_277/lstm_831/while/add_1AddV2Hsequential_277_lstm_831_while_sequential_277_lstm_831_while_loop_counter.sequential_277/lstm_831/while/add_1/y:output:0*
T0*
_output_shapes
: А
&sequential_277/lstm_831/while/IdentityIdentity'sequential_277/lstm_831/while/add_1:z:0#^sequential_277/lstm_831/while/NoOp*
T0*
_output_shapes
: ╩
(sequential_277/lstm_831/while/Identity_1IdentityNsequential_277_lstm_831_while_sequential_277_lstm_831_while_maximum_iterations#^sequential_277/lstm_831/while/NoOp*
T0*
_output_shapes
: А
(sequential_277/lstm_831/while/Identity_2Identity%sequential_277/lstm_831/while/add:z:0#^sequential_277/lstm_831/while/NoOp*
T0*
_output_shapes
: ╬
(sequential_277/lstm_831/while/Identity_3IdentityRsequential_277/lstm_831/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_277/lstm_831/while/NoOp*
T0*
_output_shapes
: ┬
(sequential_277/lstm_831/while/Identity_4Identity5sequential_277/lstm_831/while/lstm_cell_831/mul_2:z:0#^sequential_277/lstm_831/while/NoOp*
T0*'
_output_shapes
:         d┬
(sequential_277/lstm_831/while/Identity_5Identity5sequential_277/lstm_831/while/lstm_cell_831/add_1:z:0#^sequential_277/lstm_831/while/NoOp*
T0*'
_output_shapes
:         d│
"sequential_277/lstm_831/while/NoOpNoOpC^sequential_277/lstm_831/while/lstm_cell_831/BiasAdd/ReadVariableOpB^sequential_277/lstm_831/while/lstm_cell_831/MatMul/ReadVariableOpD^sequential_277/lstm_831/while/lstm_cell_831/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_277_lstm_831_while_identity/sequential_277/lstm_831/while/Identity:output:0"]
(sequential_277_lstm_831_while_identity_11sequential_277/lstm_831/while/Identity_1:output:0"]
(sequential_277_lstm_831_while_identity_21sequential_277/lstm_831/while/Identity_2:output:0"]
(sequential_277_lstm_831_while_identity_31sequential_277/lstm_831/while/Identity_3:output:0"]
(sequential_277_lstm_831_while_identity_41sequential_277/lstm_831/while/Identity_4:output:0"]
(sequential_277_lstm_831_while_identity_51sequential_277/lstm_831/while/Identity_5:output:0"ю
Ksequential_277_lstm_831_while_lstm_cell_831_biasadd_readvariableop_resourceMsequential_277_lstm_831_while_lstm_cell_831_biasadd_readvariableop_resource_0"ъ
Lsequential_277_lstm_831_while_lstm_cell_831_matmul_1_readvariableop_resourceNsequential_277_lstm_831_while_lstm_cell_831_matmul_1_readvariableop_resource_0"џ
Jsequential_277_lstm_831_while_lstm_cell_831_matmul_readvariableop_resourceLsequential_277_lstm_831_while_lstm_cell_831_matmul_readvariableop_resource_0"љ
Esequential_277_lstm_831_while_sequential_277_lstm_831_strided_slice_1Gsequential_277_lstm_831_while_sequential_277_lstm_831_strided_slice_1_0"і
Ђsequential_277_lstm_831_while_tensorarrayv2read_tensorlistgetitem_sequential_277_lstm_831_tensorarrayunstack_tensorlistfromtensorЃsequential_277_lstm_831_while_tensorarrayv2read_tensorlistgetitem_sequential_277_lstm_831_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2ѕ
Bsequential_277/lstm_831/while/lstm_cell_831/BiasAdd/ReadVariableOpBsequential_277/lstm_831/while/lstm_cell_831/BiasAdd/ReadVariableOp2є
Asequential_277/lstm_831/while/lstm_cell_831/MatMul/ReadVariableOpAsequential_277/lstm_831/while/lstm_cell_831/MatMul/ReadVariableOp2і
Csequential_277/lstm_831/while/lstm_cell_831/MatMul_1/ReadVariableOpCsequential_277/lstm_831/while/lstm_cell_831/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5027226
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_831_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_831_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_831_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_831_matmul_readvariableop_resource:	љG
4while_lstm_cell_831_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_831_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_831/BiasAdd/ReadVariableOpб)while/lstm_cell_831/MatMul/ReadVariableOpб+while/lstm_cell_831/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_831/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_831_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_831/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_831/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_831/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_831_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_831/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_831/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_831/addAddV2$while/lstm_cell_831/MatMul:product:0&while/lstm_cell_831/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_831/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_831_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_831/BiasAddBiasAddwhile/lstm_cell_831/add:z:02while/lstm_cell_831/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_831/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_831/splitSplit,while/lstm_cell_831/split/split_dim:output:0$while/lstm_cell_831/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_831/SigmoidSigmoid"while/lstm_cell_831/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_831/Sigmoid_1Sigmoid"while/lstm_cell_831/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_831/mulMul!while/lstm_cell_831/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_831/ReluRelu"while/lstm_cell_831/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_831/mul_1Mulwhile/lstm_cell_831/Sigmoid:y:0&while/lstm_cell_831/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_831/add_1AddV2while/lstm_cell_831/mul:z:0while/lstm_cell_831/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_831/Sigmoid_2Sigmoid"while/lstm_cell_831/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_831/Relu_1Reluwhile/lstm_cell_831/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_831/mul_2Mul!while/lstm_cell_831/Sigmoid_2:y:0(while/lstm_cell_831/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_831/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_831/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_831/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_831/BiasAdd/ReadVariableOp*^while/lstm_cell_831/MatMul/ReadVariableOp,^while/lstm_cell_831/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_831_biasadd_readvariableop_resource5while_lstm_cell_831_biasadd_readvariableop_resource_0"n
4while_lstm_cell_831_matmul_1_readvariableop_resource6while_lstm_cell_831_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_831_matmul_readvariableop_resource4while_lstm_cell_831_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_831/BiasAdd/ReadVariableOp*while/lstm_cell_831/BiasAdd/ReadVariableOp2V
)while/lstm_cell_831/MatMul/ReadVariableOp)while/lstm_cell_831/MatMul/ReadVariableOp2Z
+while/lstm_cell_831/MatMul_1/ReadVariableOp+while/lstm_cell_831/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
┬

Ў
%__inference_signature_wrapper_5025929
lstm_831_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_831_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_5023669o
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
_user_specified_namelstm_831_input
и

Ч
lstm_831_while_cond_5026041.
*lstm_831_while_lstm_831_while_loop_counter4
0lstm_831_while_lstm_831_while_maximum_iterations
lstm_831_while_placeholder 
lstm_831_while_placeholder_1 
lstm_831_while_placeholder_2 
lstm_831_while_placeholder_30
,lstm_831_while_less_lstm_831_strided_slice_1G
Clstm_831_while_lstm_831_while_cond_5026041___redundant_placeholder0G
Clstm_831_while_lstm_831_while_cond_5026041___redundant_placeholder1G
Clstm_831_while_lstm_831_while_cond_5026041___redundant_placeholder2G
Clstm_831_while_lstm_831_while_cond_5026041___redundant_placeholder3
lstm_831_while_identity
є
lstm_831/while/LessLesslstm_831_while_placeholder,lstm_831_while_less_lstm_831_strided_slice_1*
T0*
_output_shapes
: ]
lstm_831/while/IdentityIdentitylstm_831/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_831_while_identity lstm_831/while/Identity:output:0*(
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
while_cond_5025629
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5025629___redundant_placeholder05
1while_while_cond_5025629___redundant_placeholder15
1while_while_cond_5025629___redundant_placeholder25
1while_while_cond_5025629___redundant_placeholder3
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
while_body_5027699
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_832_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_832_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_832_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_832_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_832_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_832_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_832/BiasAdd/ReadVariableOpб)while/lstm_cell_832/MatMul/ReadVariableOpб+while/lstm_cell_832/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_832/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_832_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_832/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_832/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_832/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_832_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_832/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_832/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_832/addAddV2$while/lstm_cell_832/MatMul:product:0&while/lstm_cell_832/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_832/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_832_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_832/BiasAddBiasAddwhile/lstm_cell_832/add:z:02while/lstm_cell_832/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_832/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_832/splitSplit,while/lstm_cell_832/split/split_dim:output:0$while/lstm_cell_832/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_832/SigmoidSigmoid"while/lstm_cell_832/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_832/Sigmoid_1Sigmoid"while/lstm_cell_832/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_832/mulMul!while/lstm_cell_832/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_832/ReluRelu"while/lstm_cell_832/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_832/mul_1Mulwhile/lstm_cell_832/Sigmoid:y:0&while/lstm_cell_832/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_832/add_1AddV2while/lstm_cell_832/mul:z:0while/lstm_cell_832/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_832/Sigmoid_2Sigmoid"while/lstm_cell_832/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_832/Relu_1Reluwhile/lstm_cell_832/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_832/mul_2Mul!while/lstm_cell_832/Sigmoid_2:y:0(while/lstm_cell_832/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_832/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_832/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_832/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_832/BiasAdd/ReadVariableOp*^while/lstm_cell_832/MatMul/ReadVariableOp,^while/lstm_cell_832/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_832_biasadd_readvariableop_resource5while_lstm_cell_832_biasadd_readvariableop_resource_0"n
4while_lstm_cell_832_matmul_1_readvariableop_resource6while_lstm_cell_832_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_832_matmul_readvariableop_resource4while_lstm_cell_832_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_832/BiasAdd/ReadVariableOp*while/lstm_cell_832/BiasAdd/ReadVariableOp2V
)while/lstm_cell_832/MatMul/ReadVariableOp)while/lstm_cell_832/MatMul/ReadVariableOp2Z
+while/lstm_cell_832/MatMul_1/ReadVariableOp+while/lstm_cell_832/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
њK
б
E__inference_lstm_833_layer_call_and_return_conditional_losses_5028399
inputs_0>
,lstm_cell_833_matmul_readvariableop_resource:2(@
.lstm_cell_833_matmul_1_readvariableop_resource:
(;
-lstm_cell_833_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_833/BiasAdd/ReadVariableOpб#lstm_cell_833/MatMul/ReadVariableOpб%lstm_cell_833/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_833/MatMul/ReadVariableOpReadVariableOp,lstm_cell_833_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_833/MatMulMatMulstrided_slice_2:output:0+lstm_cell_833/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_833/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_833_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_833/MatMul_1MatMulzeros:output:0-lstm_cell_833/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_833/addAddV2lstm_cell_833/MatMul:product:0 lstm_cell_833/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_833/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_833_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_833/BiasAddBiasAddlstm_cell_833/add:z:0,lstm_cell_833/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_833/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_833/splitSplit&lstm_cell_833/split/split_dim:output:0lstm_cell_833/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_833/SigmoidSigmoidlstm_cell_833/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_833/Sigmoid_1Sigmoidlstm_cell_833/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_833/mulMullstm_cell_833/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_833/ReluRelulstm_cell_833/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_833/mul_1Mullstm_cell_833/Sigmoid:y:0 lstm_cell_833/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_833/add_1AddV2lstm_cell_833/mul:z:0lstm_cell_833/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_833/Sigmoid_2Sigmoidlstm_cell_833/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_833/Relu_1Relulstm_cell_833/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_833/mul_2Mullstm_cell_833/Sigmoid_2:y:0"lstm_cell_833/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_833_matmul_readvariableop_resource.lstm_cell_833_matmul_1_readvariableop_resource-lstm_cell_833_biasadd_readvariableop_resource*
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
while_body_5028315*
condR
while_cond_5028314*K
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
NoOpNoOp%^lstm_cell_833/BiasAdd/ReadVariableOp$^lstm_cell_833/MatMul/ReadVariableOp&^lstm_cell_833/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2L
$lstm_cell_833/BiasAdd/ReadVariableOp$lstm_cell_833/BiasAdd/ReadVariableOp2J
#lstm_cell_833/MatMul/ReadVariableOp#lstm_cell_833/MatMul/ReadVariableOp2N
%lstm_cell_833/MatMul_1/ReadVariableOp%lstm_cell_833/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
─8
н
while_body_5028315
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_833_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_833_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_833_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_833_matmul_readvariableop_resource:2(F
4while_lstm_cell_833_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_833_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_833/BiasAdd/ReadVariableOpб)while/lstm_cell_833/MatMul/ReadVariableOpб+while/lstm_cell_833/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_833/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_833_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_833/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_833/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_833/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_833_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_833/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_833/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_833/addAddV2$while/lstm_cell_833/MatMul:product:0&while/lstm_cell_833/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_833/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_833_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_833/BiasAddBiasAddwhile/lstm_cell_833/add:z:02while/lstm_cell_833/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_833/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_833/splitSplit,while/lstm_cell_833/split/split_dim:output:0$while/lstm_cell_833/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_833/SigmoidSigmoid"while/lstm_cell_833/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_833/Sigmoid_1Sigmoid"while/lstm_cell_833/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_833/mulMul!while/lstm_cell_833/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_833/ReluRelu"while/lstm_cell_833/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_833/mul_1Mulwhile/lstm_cell_833/Sigmoid:y:0&while/lstm_cell_833/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_833/add_1AddV2while/lstm_cell_833/mul:z:0while/lstm_cell_833/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_833/Sigmoid_2Sigmoid"while/lstm_cell_833/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_833/Relu_1Reluwhile/lstm_cell_833/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_833/mul_2Mul!while/lstm_cell_833/Sigmoid_2:y:0(while/lstm_cell_833/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_833/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_833/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_833/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_833/BiasAdd/ReadVariableOp*^while/lstm_cell_833/MatMul/ReadVariableOp,^while/lstm_cell_833/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_833_biasadd_readvariableop_resource5while_lstm_cell_833_biasadd_readvariableop_resource_0"n
4while_lstm_cell_833_matmul_1_readvariableop_resource6while_lstm_cell_833_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_833_matmul_readvariableop_resource4while_lstm_cell_833_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_833/BiasAdd/ReadVariableOp*while/lstm_cell_833/BiasAdd/ReadVariableOp2V
)while/lstm_cell_833/MatMul/ReadVariableOp)while/lstm_cell_833/MatMul/ReadVariableOp2Z
+while/lstm_cell_833/MatMul_1/ReadVariableOp+while/lstm_cell_833/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
»8
ј
E__inference_lstm_832_layer_call_and_return_conditional_losses_5024169

inputs(
lstm_cell_832_5024087:	d╚(
lstm_cell_832_5024089:	2╚$
lstm_cell_832_5024091:	╚
identityѕб%lstm_cell_832/StatefulPartitionedCallбwhile;
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
%lstm_cell_832/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_832_5024087lstm_cell_832_5024089lstm_cell_832_5024091*
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
J__inference_lstm_cell_832_layer_call_and_return_conditional_losses_5024086n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_832_5024087lstm_cell_832_5024089lstm_cell_832_5024091*
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
while_body_5024100*
condR
while_cond_5024099*K
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
NoOpNoOp&^lstm_cell_832/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2N
%lstm_cell_832/StatefulPartitionedCall%lstm_cell_832/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
РJ
Б
E__inference_lstm_831_layer_call_and_return_conditional_losses_5027310

inputs?
,lstm_cell_831_matmul_readvariableop_resource:	љA
.lstm_cell_831_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_831_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_831/BiasAdd/ReadVariableOpб#lstm_cell_831/MatMul/ReadVariableOpб%lstm_cell_831/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_831/MatMul/ReadVariableOpReadVariableOp,lstm_cell_831_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_831/MatMulMatMulstrided_slice_2:output:0+lstm_cell_831/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_831/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_831_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_831/MatMul_1MatMulzeros:output:0-lstm_cell_831/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_831/addAddV2lstm_cell_831/MatMul:product:0 lstm_cell_831/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_831/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_831_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_831/BiasAddBiasAddlstm_cell_831/add:z:0,lstm_cell_831/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_831/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_831/splitSplit&lstm_cell_831/split/split_dim:output:0lstm_cell_831/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_831/SigmoidSigmoidlstm_cell_831/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_831/Sigmoid_1Sigmoidlstm_cell_831/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_831/mulMullstm_cell_831/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_831/ReluRelulstm_cell_831/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_831/mul_1Mullstm_cell_831/Sigmoid:y:0 lstm_cell_831/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_831/add_1AddV2lstm_cell_831/mul:z:0lstm_cell_831/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_831/Sigmoid_2Sigmoidlstm_cell_831/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_831/Relu_1Relulstm_cell_831/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_831/mul_2Mullstm_cell_831/Sigmoid_2:y:0"lstm_cell_831/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_831_matmul_readvariableop_resource.lstm_cell_831_matmul_1_readvariableop_resource-lstm_cell_831_biasadd_readvariableop_resource*
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
while_body_5027226*
condR
while_cond_5027225*K
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
NoOpNoOp%^lstm_cell_831/BiasAdd/ReadVariableOp$^lstm_cell_831/MatMul/ReadVariableOp&^lstm_cell_831/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_831/BiasAdd/ReadVariableOp$lstm_cell_831/BiasAdd/ReadVariableOp2J
#lstm_cell_831/MatMul/ReadVariableOp#lstm_cell_831/MatMul/ReadVariableOp2N
%lstm_cell_831/MatMul_1/ReadVariableOp%lstm_cell_831/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Л8
┌
while_body_5027842
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_832_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_832_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_832_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_832_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_832_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_832_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_832/BiasAdd/ReadVariableOpб)while/lstm_cell_832/MatMul/ReadVariableOpб+while/lstm_cell_832/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_832/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_832_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_832/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_832/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_832/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_832_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_832/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_832/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_832/addAddV2$while/lstm_cell_832/MatMul:product:0&while/lstm_cell_832/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_832/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_832_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_832/BiasAddBiasAddwhile/lstm_cell_832/add:z:02while/lstm_cell_832/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_832/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_832/splitSplit,while/lstm_cell_832/split/split_dim:output:0$while/lstm_cell_832/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_832/SigmoidSigmoid"while/lstm_cell_832/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_832/Sigmoid_1Sigmoid"while/lstm_cell_832/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_832/mulMul!while/lstm_cell_832/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_832/ReluRelu"while/lstm_cell_832/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_832/mul_1Mulwhile/lstm_cell_832/Sigmoid:y:0&while/lstm_cell_832/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_832/add_1AddV2while/lstm_cell_832/mul:z:0while/lstm_cell_832/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_832/Sigmoid_2Sigmoid"while/lstm_cell_832/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_832/Relu_1Reluwhile/lstm_cell_832/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_832/mul_2Mul!while/lstm_cell_832/Sigmoid_2:y:0(while/lstm_cell_832/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_832/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_832/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_832/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_832/BiasAdd/ReadVariableOp*^while/lstm_cell_832/MatMul/ReadVariableOp,^while/lstm_cell_832/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_832_biasadd_readvariableop_resource5while_lstm_cell_832_biasadd_readvariableop_resource_0"n
4while_lstm_cell_832_matmul_1_readvariableop_resource6while_lstm_cell_832_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_832_matmul_readvariableop_resource4while_lstm_cell_832_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_832/BiasAdd/ReadVariableOp*while/lstm_cell_832/BiasAdd/ReadVariableOp2V
)while/lstm_cell_832/MatMul/ReadVariableOp)while/lstm_cell_832/MatMul/ReadVariableOp2Z
+while/lstm_cell_832/MatMul_1/ReadVariableOp+while/lstm_cell_832/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_5025630
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_831_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_831_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_831_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_831_matmul_readvariableop_resource:	љG
4while_lstm_cell_831_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_831_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_831/BiasAdd/ReadVariableOpб)while/lstm_cell_831/MatMul/ReadVariableOpб+while/lstm_cell_831/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_831/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_831_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_831/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_831/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_831/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_831_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_831/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_831/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_831/addAddV2$while/lstm_cell_831/MatMul:product:0&while/lstm_cell_831/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_831/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_831_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_831/BiasAddBiasAddwhile/lstm_cell_831/add:z:02while/lstm_cell_831/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_831/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_831/splitSplit,while/lstm_cell_831/split/split_dim:output:0$while/lstm_cell_831/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_831/SigmoidSigmoid"while/lstm_cell_831/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_831/Sigmoid_1Sigmoid"while/lstm_cell_831/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_831/mulMul!while/lstm_cell_831/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_831/ReluRelu"while/lstm_cell_831/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_831/mul_1Mulwhile/lstm_cell_831/Sigmoid:y:0&while/lstm_cell_831/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_831/add_1AddV2while/lstm_cell_831/mul:z:0while/lstm_cell_831/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_831/Sigmoid_2Sigmoid"while/lstm_cell_831/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_831/Relu_1Reluwhile/lstm_cell_831/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_831/mul_2Mul!while/lstm_cell_831/Sigmoid_2:y:0(while/lstm_cell_831/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_831/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_831/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_831/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_831/BiasAdd/ReadVariableOp*^while/lstm_cell_831/MatMul/ReadVariableOp,^while/lstm_cell_831/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_831_biasadd_readvariableop_resource5while_lstm_cell_831_biasadd_readvariableop_resource_0"n
4while_lstm_cell_831_matmul_1_readvariableop_resource6while_lstm_cell_831_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_831_matmul_readvariableop_resource4while_lstm_cell_831_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_831/BiasAdd/ReadVariableOp*while/lstm_cell_831/BiasAdd/ReadVariableOp2V
)while/lstm_cell_831/MatMul/ReadVariableOp)while/lstm_cell_831/MatMul/ReadVariableOp2Z
+while/lstm_cell_831/MatMul_1/ReadVariableOp+while/lstm_cell_831/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5024933
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5024933___redundant_placeholder05
1while_while_cond_5024933___redundant_placeholder15
1while_while_cond_5024933___redundant_placeholder25
1while_while_cond_5024933___redundant_placeholder3
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
Л8
┌
while_body_5027985
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_832_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_832_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_832_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_832_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_832_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_832_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_832/BiasAdd/ReadVariableOpб)while/lstm_cell_832/MatMul/ReadVariableOpб+while/lstm_cell_832/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_832/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_832_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_832/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_832/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_832/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_832_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_832/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_832/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_832/addAddV2$while/lstm_cell_832/MatMul:product:0&while/lstm_cell_832/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_832/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_832_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_832/BiasAddBiasAddwhile/lstm_cell_832/add:z:02while/lstm_cell_832/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_832/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_832/splitSplit,while/lstm_cell_832/split/split_dim:output:0$while/lstm_cell_832/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_832/SigmoidSigmoid"while/lstm_cell_832/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_832/Sigmoid_1Sigmoid"while/lstm_cell_832/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_832/mulMul!while/lstm_cell_832/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_832/ReluRelu"while/lstm_cell_832/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_832/mul_1Mulwhile/lstm_cell_832/Sigmoid:y:0&while/lstm_cell_832/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_832/add_1AddV2while/lstm_cell_832/mul:z:0while/lstm_cell_832/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_832/Sigmoid_2Sigmoid"while/lstm_cell_832/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_832/Relu_1Reluwhile/lstm_cell_832/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_832/mul_2Mul!while/lstm_cell_832/Sigmoid_2:y:0(while/lstm_cell_832/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_832/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_832/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_832/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_832/BiasAdd/ReadVariableOp*^while/lstm_cell_832/MatMul/ReadVariableOp,^while/lstm_cell_832/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_832_biasadd_readvariableop_resource5while_lstm_cell_832_biasadd_readvariableop_resource_0"n
4while_lstm_cell_832_matmul_1_readvariableop_resource6while_lstm_cell_832_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_832_matmul_readvariableop_resource4while_lstm_cell_832_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_832/BiasAdd/ReadVariableOp*while/lstm_cell_832/BiasAdd/ReadVariableOp2V
)while/lstm_cell_832/MatMul/ReadVariableOp)while/lstm_cell_832/MatMul/ReadVariableOp2Z
+while/lstm_cell_832/MatMul_1/ReadVariableOp+while/lstm_cell_832/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
№
Э
/__inference_lstm_cell_831_layer_call_fn_5028721

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
J__inference_lstm_cell_831_layer_call_and_return_conditional_losses_5023736o
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
РJ
Б
E__inference_lstm_831_layer_call_and_return_conditional_losses_5025714

inputs?
,lstm_cell_831_matmul_readvariableop_resource:	љA
.lstm_cell_831_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_831_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_831/BiasAdd/ReadVariableOpб#lstm_cell_831/MatMul/ReadVariableOpб%lstm_cell_831/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_831/MatMul/ReadVariableOpReadVariableOp,lstm_cell_831_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_831/MatMulMatMulstrided_slice_2:output:0+lstm_cell_831/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_831/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_831_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_831/MatMul_1MatMulzeros:output:0-lstm_cell_831/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_831/addAddV2lstm_cell_831/MatMul:product:0 lstm_cell_831/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_831/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_831_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_831/BiasAddBiasAddlstm_cell_831/add:z:0,lstm_cell_831/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_831/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_831/splitSplit&lstm_cell_831/split/split_dim:output:0lstm_cell_831/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_831/SigmoidSigmoidlstm_cell_831/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_831/Sigmoid_1Sigmoidlstm_cell_831/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_831/mulMullstm_cell_831/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_831/ReluRelulstm_cell_831/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_831/mul_1Mullstm_cell_831/Sigmoid:y:0 lstm_cell_831/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_831/add_1AddV2lstm_cell_831/mul:z:0lstm_cell_831/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_831/Sigmoid_2Sigmoidlstm_cell_831/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_831/Relu_1Relulstm_cell_831/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_831/mul_2Mullstm_cell_831/Sigmoid_2:y:0"lstm_cell_831/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_831_matmul_readvariableop_resource.lstm_cell_831_matmul_1_readvariableop_resource-lstm_cell_831_biasadd_readvariableop_resource*
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
while_body_5025630*
condR
while_cond_5025629*K
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
NoOpNoOp%^lstm_cell_831/BiasAdd/ReadVariableOp$^lstm_cell_831/MatMul/ReadVariableOp&^lstm_cell_831/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_831/BiasAdd/ReadVariableOp$lstm_cell_831/BiasAdd/ReadVariableOp2J
#lstm_cell_831/MatMul/ReadVariableOp#lstm_cell_831/MatMul/ReadVariableOp2N
%lstm_cell_831/MatMul_1/ReadVariableOp%lstm_cell_831/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
и

Ч
lstm_831_while_cond_5026468.
*lstm_831_while_lstm_831_while_loop_counter4
0lstm_831_while_lstm_831_while_maximum_iterations
lstm_831_while_placeholder 
lstm_831_while_placeholder_1 
lstm_831_while_placeholder_2 
lstm_831_while_placeholder_30
,lstm_831_while_less_lstm_831_strided_slice_1G
Clstm_831_while_lstm_831_while_cond_5026468___redundant_placeholder0G
Clstm_831_while_lstm_831_while_cond_5026468___redundant_placeholder1G
Clstm_831_while_lstm_831_while_cond_5026468___redundant_placeholder2G
Clstm_831_while_lstm_831_while_cond_5026468___redundant_placeholder3
lstm_831_while_identity
є
lstm_831/while/LessLesslstm_831_while_placeholder,lstm_831_while_less_lstm_831_strided_slice_1*
T0*
_output_shapes
: ]
lstm_831/while/IdentityIdentitylstm_831/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_831_while_identity lstm_831/while/Identity:output:0*(
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
while_cond_5028600
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5028600___redundant_placeholder05
1while_while_cond_5028600___redundant_placeholder15
1while_while_cond_5028600___redundant_placeholder25
1while_while_cond_5028600___redundant_placeholder3
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
ПJ
а
E__inference_lstm_833_layer_call_and_return_conditional_losses_5028685

inputs>
,lstm_cell_833_matmul_readvariableop_resource:2(@
.lstm_cell_833_matmul_1_readvariableop_resource:
(;
-lstm_cell_833_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_833/BiasAdd/ReadVariableOpб#lstm_cell_833/MatMul/ReadVariableOpб%lstm_cell_833/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_833/MatMul/ReadVariableOpReadVariableOp,lstm_cell_833_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_833/MatMulMatMulstrided_slice_2:output:0+lstm_cell_833/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_833/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_833_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_833/MatMul_1MatMulzeros:output:0-lstm_cell_833/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_833/addAddV2lstm_cell_833/MatMul:product:0 lstm_cell_833/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_833/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_833_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_833/BiasAddBiasAddlstm_cell_833/add:z:0,lstm_cell_833/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_833/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_833/splitSplit&lstm_cell_833/split/split_dim:output:0lstm_cell_833/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_833/SigmoidSigmoidlstm_cell_833/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_833/Sigmoid_1Sigmoidlstm_cell_833/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_833/mulMullstm_cell_833/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_833/ReluRelulstm_cell_833/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_833/mul_1Mullstm_cell_833/Sigmoid:y:0 lstm_cell_833/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_833/add_1AddV2lstm_cell_833/mul:z:0lstm_cell_833/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_833/Sigmoid_2Sigmoidlstm_cell_833/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_833/Relu_1Relulstm_cell_833/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_833/mul_2Mullstm_cell_833/Sigmoid_2:y:0"lstm_cell_833/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_833_matmul_readvariableop_resource.lstm_cell_833_matmul_1_readvariableop_resource-lstm_cell_833_biasadd_readvariableop_resource*
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
while_body_5028601*
condR
while_cond_5028600*K
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
NoOpNoOp%^lstm_cell_833/BiasAdd/ReadVariableOp$^lstm_cell_833/MatMul/ReadVariableOp&^lstm_cell_833/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_833/BiasAdd/ReadVariableOp$lstm_cell_833/BiasAdd/ReadVariableOp2J
#lstm_cell_833/MatMul/ReadVariableOp#lstm_cell_833/MatMul/ReadVariableOp2N
%lstm_cell_833/MatMul_1/ReadVariableOp%lstm_cell_833/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
№
Э
/__inference_lstm_cell_832_layer_call_fn_5028836

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
J__inference_lstm_cell_832_layer_call_and_return_conditional_losses_5024232o
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
И╗
ы
"__inference__wrapped_model_5023669
lstm_831_inputW
Dsequential_277_lstm_831_lstm_cell_831_matmul_readvariableop_resource:	љY
Fsequential_277_lstm_831_lstm_cell_831_matmul_1_readvariableop_resource:	dљT
Esequential_277_lstm_831_lstm_cell_831_biasadd_readvariableop_resource:	љW
Dsequential_277_lstm_832_lstm_cell_832_matmul_readvariableop_resource:	d╚Y
Fsequential_277_lstm_832_lstm_cell_832_matmul_1_readvariableop_resource:	2╚T
Esequential_277_lstm_832_lstm_cell_832_biasadd_readvariableop_resource:	╚V
Dsequential_277_lstm_833_lstm_cell_833_matmul_readvariableop_resource:2(X
Fsequential_277_lstm_833_lstm_cell_833_matmul_1_readvariableop_resource:
(S
Esequential_277_lstm_833_lstm_cell_833_biasadd_readvariableop_resource:(I
7sequential_277_dense_277_matmul_readvariableop_resource:
F
8sequential_277_dense_277_biasadd_readvariableop_resource:
identityѕб/sequential_277/dense_277/BiasAdd/ReadVariableOpб.sequential_277/dense_277/MatMul/ReadVariableOpб<sequential_277/lstm_831/lstm_cell_831/BiasAdd/ReadVariableOpб;sequential_277/lstm_831/lstm_cell_831/MatMul/ReadVariableOpб=sequential_277/lstm_831/lstm_cell_831/MatMul_1/ReadVariableOpбsequential_277/lstm_831/whileб<sequential_277/lstm_832/lstm_cell_832/BiasAdd/ReadVariableOpб;sequential_277/lstm_832/lstm_cell_832/MatMul/ReadVariableOpб=sequential_277/lstm_832/lstm_cell_832/MatMul_1/ReadVariableOpбsequential_277/lstm_832/whileб<sequential_277/lstm_833/lstm_cell_833/BiasAdd/ReadVariableOpб;sequential_277/lstm_833/lstm_cell_833/MatMul/ReadVariableOpб=sequential_277/lstm_833/lstm_cell_833/MatMul_1/ReadVariableOpбsequential_277/lstm_833/while[
sequential_277/lstm_831/ShapeShapelstm_831_input*
T0*
_output_shapes
:u
+sequential_277/lstm_831/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_277/lstm_831/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_277/lstm_831/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%sequential_277/lstm_831/strided_sliceStridedSlice&sequential_277/lstm_831/Shape:output:04sequential_277/lstm_831/strided_slice/stack:output:06sequential_277/lstm_831/strided_slice/stack_1:output:06sequential_277/lstm_831/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_277/lstm_831/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d╗
$sequential_277/lstm_831/zeros/packedPack.sequential_277/lstm_831/strided_slice:output:0/sequential_277/lstm_831/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_277/lstm_831/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ┤
sequential_277/lstm_831/zerosFill-sequential_277/lstm_831/zeros/packed:output:0,sequential_277/lstm_831/zeros/Const:output:0*
T0*'
_output_shapes
:         dj
(sequential_277/lstm_831/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d┐
&sequential_277/lstm_831/zeros_1/packedPack.sequential_277/lstm_831/strided_slice:output:01sequential_277/lstm_831/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_277/lstm_831/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ║
sequential_277/lstm_831/zeros_1Fill/sequential_277/lstm_831/zeros_1/packed:output:0.sequential_277/lstm_831/zeros_1/Const:output:0*
T0*'
_output_shapes
:         d{
&sequential_277/lstm_831/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
!sequential_277/lstm_831/transpose	Transposelstm_831_input/sequential_277/lstm_831/transpose/perm:output:0*
T0*+
_output_shapes
:         t
sequential_277/lstm_831/Shape_1Shape%sequential_277/lstm_831/transpose:y:0*
T0*
_output_shapes
:w
-sequential_277/lstm_831/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_277/lstm_831/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_277/lstm_831/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
'sequential_277/lstm_831/strided_slice_1StridedSlice(sequential_277/lstm_831/Shape_1:output:06sequential_277/lstm_831/strided_slice_1/stack:output:08sequential_277/lstm_831/strided_slice_1/stack_1:output:08sequential_277/lstm_831/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_277/lstm_831/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ч
%sequential_277/lstm_831/TensorArrayV2TensorListReserve<sequential_277/lstm_831/TensorArrayV2/element_shape:output:00sequential_277/lstm_831/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмъ
Msequential_277/lstm_831/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       е
?sequential_277/lstm_831/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_277/lstm_831/transpose:y:0Vsequential_277/lstm_831/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмw
-sequential_277/lstm_831/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_277/lstm_831/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_277/lstm_831/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
'sequential_277/lstm_831/strided_slice_2StridedSlice%sequential_277/lstm_831/transpose:y:06sequential_277/lstm_831/strided_slice_2/stack:output:08sequential_277/lstm_831/strided_slice_2/stack_1:output:08sequential_277/lstm_831/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask┴
;sequential_277/lstm_831/lstm_cell_831/MatMul/ReadVariableOpReadVariableOpDsequential_277_lstm_831_lstm_cell_831_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0Я
,sequential_277/lstm_831/lstm_cell_831/MatMulMatMul0sequential_277/lstm_831/strided_slice_2:output:0Csequential_277/lstm_831/lstm_cell_831/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ┼
=sequential_277/lstm_831/lstm_cell_831/MatMul_1/ReadVariableOpReadVariableOpFsequential_277_lstm_831_lstm_cell_831_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0┌
.sequential_277/lstm_831/lstm_cell_831/MatMul_1MatMul&sequential_277/lstm_831/zeros:output:0Esequential_277/lstm_831/lstm_cell_831/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љО
)sequential_277/lstm_831/lstm_cell_831/addAddV26sequential_277/lstm_831/lstm_cell_831/MatMul:product:08sequential_277/lstm_831/lstm_cell_831/MatMul_1:product:0*
T0*(
_output_shapes
:         љ┐
<sequential_277/lstm_831/lstm_cell_831/BiasAdd/ReadVariableOpReadVariableOpEsequential_277_lstm_831_lstm_cell_831_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Я
-sequential_277/lstm_831/lstm_cell_831/BiasAddBiasAdd-sequential_277/lstm_831/lstm_cell_831/add:z:0Dsequential_277/lstm_831/lstm_cell_831/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љw
5sequential_277/lstm_831/lstm_cell_831/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :е
+sequential_277/lstm_831/lstm_cell_831/splitSplit>sequential_277/lstm_831/lstm_cell_831/split/split_dim:output:06sequential_277/lstm_831/lstm_cell_831/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitа
-sequential_277/lstm_831/lstm_cell_831/SigmoidSigmoid4sequential_277/lstm_831/lstm_cell_831/split:output:0*
T0*'
_output_shapes
:         dб
/sequential_277/lstm_831/lstm_cell_831/Sigmoid_1Sigmoid4sequential_277/lstm_831/lstm_cell_831/split:output:1*
T0*'
_output_shapes
:         d┴
)sequential_277/lstm_831/lstm_cell_831/mulMul3sequential_277/lstm_831/lstm_cell_831/Sigmoid_1:y:0(sequential_277/lstm_831/zeros_1:output:0*
T0*'
_output_shapes
:         dџ
*sequential_277/lstm_831/lstm_cell_831/ReluRelu4sequential_277/lstm_831/lstm_cell_831/split:output:2*
T0*'
_output_shapes
:         dЛ
+sequential_277/lstm_831/lstm_cell_831/mul_1Mul1sequential_277/lstm_831/lstm_cell_831/Sigmoid:y:08sequential_277/lstm_831/lstm_cell_831/Relu:activations:0*
T0*'
_output_shapes
:         dк
+sequential_277/lstm_831/lstm_cell_831/add_1AddV2-sequential_277/lstm_831/lstm_cell_831/mul:z:0/sequential_277/lstm_831/lstm_cell_831/mul_1:z:0*
T0*'
_output_shapes
:         dб
/sequential_277/lstm_831/lstm_cell_831/Sigmoid_2Sigmoid4sequential_277/lstm_831/lstm_cell_831/split:output:3*
T0*'
_output_shapes
:         dЌ
,sequential_277/lstm_831/lstm_cell_831/Relu_1Relu/sequential_277/lstm_831/lstm_cell_831/add_1:z:0*
T0*'
_output_shapes
:         dН
+sequential_277/lstm_831/lstm_cell_831/mul_2Mul3sequential_277/lstm_831/lstm_cell_831/Sigmoid_2:y:0:sequential_277/lstm_831/lstm_cell_831/Relu_1:activations:0*
T0*'
_output_shapes
:         dє
5sequential_277/lstm_831/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ђ
'sequential_277/lstm_831/TensorArrayV2_1TensorListReserve>sequential_277/lstm_831/TensorArrayV2_1/element_shape:output:00sequential_277/lstm_831/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм^
sequential_277/lstm_831/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_277/lstm_831/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         l
*sequential_277/lstm_831/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : О
sequential_277/lstm_831/whileWhile3sequential_277/lstm_831/while/loop_counter:output:09sequential_277/lstm_831/while/maximum_iterations:output:0%sequential_277/lstm_831/time:output:00sequential_277/lstm_831/TensorArrayV2_1:handle:0&sequential_277/lstm_831/zeros:output:0(sequential_277/lstm_831/zeros_1:output:00sequential_277/lstm_831/strided_slice_1:output:0Osequential_277/lstm_831/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_277_lstm_831_lstm_cell_831_matmul_readvariableop_resourceFsequential_277_lstm_831_lstm_cell_831_matmul_1_readvariableop_resourceEsequential_277_lstm_831_lstm_cell_831_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_277_lstm_831_while_body_5023301*6
cond.R,
*sequential_277_lstm_831_while_cond_5023300*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ў
Hsequential_277/lstm_831/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   і
:sequential_277/lstm_831/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_277/lstm_831/while:output:3Qsequential_277/lstm_831/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0ђ
-sequential_277/lstm_831/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         y
/sequential_277/lstm_831/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_277/lstm_831/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB: 
'sequential_277/lstm_831/strided_slice_3StridedSliceCsequential_277/lstm_831/TensorArrayV2Stack/TensorListStack:tensor:06sequential_277/lstm_831/strided_slice_3/stack:output:08sequential_277/lstm_831/strided_slice_3/stack_1:output:08sequential_277/lstm_831/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask}
(sequential_277/lstm_831/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          я
#sequential_277/lstm_831/transpose_1	TransposeCsequential_277/lstm_831/TensorArrayV2Stack/TensorListStack:tensor:01sequential_277/lstm_831/transpose_1/perm:output:0*
T0*+
_output_shapes
:         ds
sequential_277/lstm_831/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_277/lstm_832/ShapeShape'sequential_277/lstm_831/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_277/lstm_832/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_277/lstm_832/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_277/lstm_832/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%sequential_277/lstm_832/strided_sliceStridedSlice&sequential_277/lstm_832/Shape:output:04sequential_277/lstm_832/strided_slice/stack:output:06sequential_277/lstm_832/strided_slice/stack_1:output:06sequential_277/lstm_832/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_277/lstm_832/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2╗
$sequential_277/lstm_832/zeros/packedPack.sequential_277/lstm_832/strided_slice:output:0/sequential_277/lstm_832/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_277/lstm_832/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ┤
sequential_277/lstm_832/zerosFill-sequential_277/lstm_832/zeros/packed:output:0,sequential_277/lstm_832/zeros/Const:output:0*
T0*'
_output_shapes
:         2j
(sequential_277/lstm_832/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2┐
&sequential_277/lstm_832/zeros_1/packedPack.sequential_277/lstm_832/strided_slice:output:01sequential_277/lstm_832/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_277/lstm_832/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ║
sequential_277/lstm_832/zeros_1Fill/sequential_277/lstm_832/zeros_1/packed:output:0.sequential_277/lstm_832/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2{
&sequential_277/lstm_832/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Й
!sequential_277/lstm_832/transpose	Transpose'sequential_277/lstm_831/transpose_1:y:0/sequential_277/lstm_832/transpose/perm:output:0*
T0*+
_output_shapes
:         dt
sequential_277/lstm_832/Shape_1Shape%sequential_277/lstm_832/transpose:y:0*
T0*
_output_shapes
:w
-sequential_277/lstm_832/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_277/lstm_832/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_277/lstm_832/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
'sequential_277/lstm_832/strided_slice_1StridedSlice(sequential_277/lstm_832/Shape_1:output:06sequential_277/lstm_832/strided_slice_1/stack:output:08sequential_277/lstm_832/strided_slice_1/stack_1:output:08sequential_277/lstm_832/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_277/lstm_832/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ч
%sequential_277/lstm_832/TensorArrayV2TensorListReserve<sequential_277/lstm_832/TensorArrayV2/element_shape:output:00sequential_277/lstm_832/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмъ
Msequential_277/lstm_832/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   е
?sequential_277/lstm_832/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_277/lstm_832/transpose:y:0Vsequential_277/lstm_832/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмw
-sequential_277/lstm_832/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_277/lstm_832/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_277/lstm_832/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
'sequential_277/lstm_832/strided_slice_2StridedSlice%sequential_277/lstm_832/transpose:y:06sequential_277/lstm_832/strided_slice_2/stack:output:08sequential_277/lstm_832/strided_slice_2/stack_1:output:08sequential_277/lstm_832/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask┴
;sequential_277/lstm_832/lstm_cell_832/MatMul/ReadVariableOpReadVariableOpDsequential_277_lstm_832_lstm_cell_832_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0Я
,sequential_277/lstm_832/lstm_cell_832/MatMulMatMul0sequential_277/lstm_832/strided_slice_2:output:0Csequential_277/lstm_832/lstm_cell_832/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚┼
=sequential_277/lstm_832/lstm_cell_832/MatMul_1/ReadVariableOpReadVariableOpFsequential_277_lstm_832_lstm_cell_832_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0┌
.sequential_277/lstm_832/lstm_cell_832/MatMul_1MatMul&sequential_277/lstm_832/zeros:output:0Esequential_277/lstm_832/lstm_cell_832/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚О
)sequential_277/lstm_832/lstm_cell_832/addAddV26sequential_277/lstm_832/lstm_cell_832/MatMul:product:08sequential_277/lstm_832/lstm_cell_832/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚┐
<sequential_277/lstm_832/lstm_cell_832/BiasAdd/ReadVariableOpReadVariableOpEsequential_277_lstm_832_lstm_cell_832_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0Я
-sequential_277/lstm_832/lstm_cell_832/BiasAddBiasAdd-sequential_277/lstm_832/lstm_cell_832/add:z:0Dsequential_277/lstm_832/lstm_cell_832/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚w
5sequential_277/lstm_832/lstm_cell_832/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :е
+sequential_277/lstm_832/lstm_cell_832/splitSplit>sequential_277/lstm_832/lstm_cell_832/split/split_dim:output:06sequential_277/lstm_832/lstm_cell_832/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitа
-sequential_277/lstm_832/lstm_cell_832/SigmoidSigmoid4sequential_277/lstm_832/lstm_cell_832/split:output:0*
T0*'
_output_shapes
:         2б
/sequential_277/lstm_832/lstm_cell_832/Sigmoid_1Sigmoid4sequential_277/lstm_832/lstm_cell_832/split:output:1*
T0*'
_output_shapes
:         2┴
)sequential_277/lstm_832/lstm_cell_832/mulMul3sequential_277/lstm_832/lstm_cell_832/Sigmoid_1:y:0(sequential_277/lstm_832/zeros_1:output:0*
T0*'
_output_shapes
:         2џ
*sequential_277/lstm_832/lstm_cell_832/ReluRelu4sequential_277/lstm_832/lstm_cell_832/split:output:2*
T0*'
_output_shapes
:         2Л
+sequential_277/lstm_832/lstm_cell_832/mul_1Mul1sequential_277/lstm_832/lstm_cell_832/Sigmoid:y:08sequential_277/lstm_832/lstm_cell_832/Relu:activations:0*
T0*'
_output_shapes
:         2к
+sequential_277/lstm_832/lstm_cell_832/add_1AddV2-sequential_277/lstm_832/lstm_cell_832/mul:z:0/sequential_277/lstm_832/lstm_cell_832/mul_1:z:0*
T0*'
_output_shapes
:         2б
/sequential_277/lstm_832/lstm_cell_832/Sigmoid_2Sigmoid4sequential_277/lstm_832/lstm_cell_832/split:output:3*
T0*'
_output_shapes
:         2Ќ
,sequential_277/lstm_832/lstm_cell_832/Relu_1Relu/sequential_277/lstm_832/lstm_cell_832/add_1:z:0*
T0*'
_output_shapes
:         2Н
+sequential_277/lstm_832/lstm_cell_832/mul_2Mul3sequential_277/lstm_832/lstm_cell_832/Sigmoid_2:y:0:sequential_277/lstm_832/lstm_cell_832/Relu_1:activations:0*
T0*'
_output_shapes
:         2є
5sequential_277/lstm_832/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ђ
'sequential_277/lstm_832/TensorArrayV2_1TensorListReserve>sequential_277/lstm_832/TensorArrayV2_1/element_shape:output:00sequential_277/lstm_832/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм^
sequential_277/lstm_832/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_277/lstm_832/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         l
*sequential_277/lstm_832/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : О
sequential_277/lstm_832/whileWhile3sequential_277/lstm_832/while/loop_counter:output:09sequential_277/lstm_832/while/maximum_iterations:output:0%sequential_277/lstm_832/time:output:00sequential_277/lstm_832/TensorArrayV2_1:handle:0&sequential_277/lstm_832/zeros:output:0(sequential_277/lstm_832/zeros_1:output:00sequential_277/lstm_832/strided_slice_1:output:0Osequential_277/lstm_832/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_277_lstm_832_lstm_cell_832_matmul_readvariableop_resourceFsequential_277_lstm_832_lstm_cell_832_matmul_1_readvariableop_resourceEsequential_277_lstm_832_lstm_cell_832_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_277_lstm_832_while_body_5023440*6
cond.R,
*sequential_277_lstm_832_while_cond_5023439*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ў
Hsequential_277/lstm_832/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   і
:sequential_277/lstm_832/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_277/lstm_832/while:output:3Qsequential_277/lstm_832/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0ђ
-sequential_277/lstm_832/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         y
/sequential_277/lstm_832/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_277/lstm_832/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB: 
'sequential_277/lstm_832/strided_slice_3StridedSliceCsequential_277/lstm_832/TensorArrayV2Stack/TensorListStack:tensor:06sequential_277/lstm_832/strided_slice_3/stack:output:08sequential_277/lstm_832/strided_slice_3/stack_1:output:08sequential_277/lstm_832/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask}
(sequential_277/lstm_832/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          я
#sequential_277/lstm_832/transpose_1	TransposeCsequential_277/lstm_832/TensorArrayV2Stack/TensorListStack:tensor:01sequential_277/lstm_832/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2s
sequential_277/lstm_832/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_277/lstm_833/ShapeShape'sequential_277/lstm_832/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_277/lstm_833/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_277/lstm_833/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_277/lstm_833/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%sequential_277/lstm_833/strided_sliceStridedSlice&sequential_277/lstm_833/Shape:output:04sequential_277/lstm_833/strided_slice/stack:output:06sequential_277/lstm_833/strided_slice/stack_1:output:06sequential_277/lstm_833/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_277/lstm_833/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
╗
$sequential_277/lstm_833/zeros/packedPack.sequential_277/lstm_833/strided_slice:output:0/sequential_277/lstm_833/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_277/lstm_833/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ┤
sequential_277/lstm_833/zerosFill-sequential_277/lstm_833/zeros/packed:output:0,sequential_277/lstm_833/zeros/Const:output:0*
T0*'
_output_shapes
:         
j
(sequential_277/lstm_833/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
┐
&sequential_277/lstm_833/zeros_1/packedPack.sequential_277/lstm_833/strided_slice:output:01sequential_277/lstm_833/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_277/lstm_833/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ║
sequential_277/lstm_833/zeros_1Fill/sequential_277/lstm_833/zeros_1/packed:output:0.sequential_277/lstm_833/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
{
&sequential_277/lstm_833/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Й
!sequential_277/lstm_833/transpose	Transpose'sequential_277/lstm_832/transpose_1:y:0/sequential_277/lstm_833/transpose/perm:output:0*
T0*+
_output_shapes
:         2t
sequential_277/lstm_833/Shape_1Shape%sequential_277/lstm_833/transpose:y:0*
T0*
_output_shapes
:w
-sequential_277/lstm_833/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_277/lstm_833/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_277/lstm_833/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
'sequential_277/lstm_833/strided_slice_1StridedSlice(sequential_277/lstm_833/Shape_1:output:06sequential_277/lstm_833/strided_slice_1/stack:output:08sequential_277/lstm_833/strided_slice_1/stack_1:output:08sequential_277/lstm_833/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_277/lstm_833/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ч
%sequential_277/lstm_833/TensorArrayV2TensorListReserve<sequential_277/lstm_833/TensorArrayV2/element_shape:output:00sequential_277/lstm_833/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмъ
Msequential_277/lstm_833/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   е
?sequential_277/lstm_833/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_277/lstm_833/transpose:y:0Vsequential_277/lstm_833/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмw
-sequential_277/lstm_833/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_277/lstm_833/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_277/lstm_833/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
'sequential_277/lstm_833/strided_slice_2StridedSlice%sequential_277/lstm_833/transpose:y:06sequential_277/lstm_833/strided_slice_2/stack:output:08sequential_277/lstm_833/strided_slice_2/stack_1:output:08sequential_277/lstm_833/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask└
;sequential_277/lstm_833/lstm_cell_833/MatMul/ReadVariableOpReadVariableOpDsequential_277_lstm_833_lstm_cell_833_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▀
,sequential_277/lstm_833/lstm_cell_833/MatMulMatMul0sequential_277/lstm_833/strided_slice_2:output:0Csequential_277/lstm_833/lstm_cell_833/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (─
=sequential_277/lstm_833/lstm_cell_833/MatMul_1/ReadVariableOpReadVariableOpFsequential_277_lstm_833_lstm_cell_833_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0┘
.sequential_277/lstm_833/lstm_cell_833/MatMul_1MatMul&sequential_277/lstm_833/zeros:output:0Esequential_277/lstm_833/lstm_cell_833/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (о
)sequential_277/lstm_833/lstm_cell_833/addAddV26sequential_277/lstm_833/lstm_cell_833/MatMul:product:08sequential_277/lstm_833/lstm_cell_833/MatMul_1:product:0*
T0*'
_output_shapes
:         (Й
<sequential_277/lstm_833/lstm_cell_833/BiasAdd/ReadVariableOpReadVariableOpEsequential_277_lstm_833_lstm_cell_833_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▀
-sequential_277/lstm_833/lstm_cell_833/BiasAddBiasAdd-sequential_277/lstm_833/lstm_cell_833/add:z:0Dsequential_277/lstm_833/lstm_cell_833/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (w
5sequential_277/lstm_833/lstm_cell_833/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :е
+sequential_277/lstm_833/lstm_cell_833/splitSplit>sequential_277/lstm_833/lstm_cell_833/split/split_dim:output:06sequential_277/lstm_833/lstm_cell_833/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitа
-sequential_277/lstm_833/lstm_cell_833/SigmoidSigmoid4sequential_277/lstm_833/lstm_cell_833/split:output:0*
T0*'
_output_shapes
:         
б
/sequential_277/lstm_833/lstm_cell_833/Sigmoid_1Sigmoid4sequential_277/lstm_833/lstm_cell_833/split:output:1*
T0*'
_output_shapes
:         
┴
)sequential_277/lstm_833/lstm_cell_833/mulMul3sequential_277/lstm_833/lstm_cell_833/Sigmoid_1:y:0(sequential_277/lstm_833/zeros_1:output:0*
T0*'
_output_shapes
:         
џ
*sequential_277/lstm_833/lstm_cell_833/ReluRelu4sequential_277/lstm_833/lstm_cell_833/split:output:2*
T0*'
_output_shapes
:         
Л
+sequential_277/lstm_833/lstm_cell_833/mul_1Mul1sequential_277/lstm_833/lstm_cell_833/Sigmoid:y:08sequential_277/lstm_833/lstm_cell_833/Relu:activations:0*
T0*'
_output_shapes
:         
к
+sequential_277/lstm_833/lstm_cell_833/add_1AddV2-sequential_277/lstm_833/lstm_cell_833/mul:z:0/sequential_277/lstm_833/lstm_cell_833/mul_1:z:0*
T0*'
_output_shapes
:         
б
/sequential_277/lstm_833/lstm_cell_833/Sigmoid_2Sigmoid4sequential_277/lstm_833/lstm_cell_833/split:output:3*
T0*'
_output_shapes
:         
Ќ
,sequential_277/lstm_833/lstm_cell_833/Relu_1Relu/sequential_277/lstm_833/lstm_cell_833/add_1:z:0*
T0*'
_output_shapes
:         
Н
+sequential_277/lstm_833/lstm_cell_833/mul_2Mul3sequential_277/lstm_833/lstm_cell_833/Sigmoid_2:y:0:sequential_277/lstm_833/lstm_cell_833/Relu_1:activations:0*
T0*'
_output_shapes
:         
є
5sequential_277/lstm_833/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ђ
'sequential_277/lstm_833/TensorArrayV2_1TensorListReserve>sequential_277/lstm_833/TensorArrayV2_1/element_shape:output:00sequential_277/lstm_833/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм^
sequential_277/lstm_833/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_277/lstm_833/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         l
*sequential_277/lstm_833/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : О
sequential_277/lstm_833/whileWhile3sequential_277/lstm_833/while/loop_counter:output:09sequential_277/lstm_833/while/maximum_iterations:output:0%sequential_277/lstm_833/time:output:00sequential_277/lstm_833/TensorArrayV2_1:handle:0&sequential_277/lstm_833/zeros:output:0(sequential_277/lstm_833/zeros_1:output:00sequential_277/lstm_833/strided_slice_1:output:0Osequential_277/lstm_833/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_277_lstm_833_lstm_cell_833_matmul_readvariableop_resourceFsequential_277_lstm_833_lstm_cell_833_matmul_1_readvariableop_resourceEsequential_277_lstm_833_lstm_cell_833_biasadd_readvariableop_resource*
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
_stateful_parallelism( *6
body.R,
*sequential_277_lstm_833_while_body_5023579*6
cond.R,
*sequential_277_lstm_833_while_cond_5023578*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ў
Hsequential_277/lstm_833/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   і
:sequential_277/lstm_833/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_277/lstm_833/while:output:3Qsequential_277/lstm_833/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0ђ
-sequential_277/lstm_833/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         y
/sequential_277/lstm_833/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_277/lstm_833/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB: 
'sequential_277/lstm_833/strided_slice_3StridedSliceCsequential_277/lstm_833/TensorArrayV2Stack/TensorListStack:tensor:06sequential_277/lstm_833/strided_slice_3/stack:output:08sequential_277/lstm_833/strided_slice_3/stack_1:output:08sequential_277/lstm_833/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_mask}
(sequential_277/lstm_833/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          я
#sequential_277/lstm_833/transpose_1	TransposeCsequential_277/lstm_833/TensorArrayV2Stack/TensorListStack:tensor:01sequential_277/lstm_833/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
s
sequential_277/lstm_833/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    д
.sequential_277/dense_277/MatMul/ReadVariableOpReadVariableOp7sequential_277_dense_277_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0┼
sequential_277/dense_277/MatMulMatMul0sequential_277/lstm_833/strided_slice_3:output:06sequential_277/dense_277/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ц
/sequential_277/dense_277/BiasAdd/ReadVariableOpReadVariableOp8sequential_277_dense_277_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0┴
 sequential_277/dense_277/BiasAddBiasAdd)sequential_277/dense_277/MatMul:product:07sequential_277/dense_277/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x
IdentityIdentity)sequential_277/dense_277/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         └
NoOpNoOp0^sequential_277/dense_277/BiasAdd/ReadVariableOp/^sequential_277/dense_277/MatMul/ReadVariableOp=^sequential_277/lstm_831/lstm_cell_831/BiasAdd/ReadVariableOp<^sequential_277/lstm_831/lstm_cell_831/MatMul/ReadVariableOp>^sequential_277/lstm_831/lstm_cell_831/MatMul_1/ReadVariableOp^sequential_277/lstm_831/while=^sequential_277/lstm_832/lstm_cell_832/BiasAdd/ReadVariableOp<^sequential_277/lstm_832/lstm_cell_832/MatMul/ReadVariableOp>^sequential_277/lstm_832/lstm_cell_832/MatMul_1/ReadVariableOp^sequential_277/lstm_832/while=^sequential_277/lstm_833/lstm_cell_833/BiasAdd/ReadVariableOp<^sequential_277/lstm_833/lstm_cell_833/MatMul/ReadVariableOp>^sequential_277/lstm_833/lstm_cell_833/MatMul_1/ReadVariableOp^sequential_277/lstm_833/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2b
/sequential_277/dense_277/BiasAdd/ReadVariableOp/sequential_277/dense_277/BiasAdd/ReadVariableOp2`
.sequential_277/dense_277/MatMul/ReadVariableOp.sequential_277/dense_277/MatMul/ReadVariableOp2|
<sequential_277/lstm_831/lstm_cell_831/BiasAdd/ReadVariableOp<sequential_277/lstm_831/lstm_cell_831/BiasAdd/ReadVariableOp2z
;sequential_277/lstm_831/lstm_cell_831/MatMul/ReadVariableOp;sequential_277/lstm_831/lstm_cell_831/MatMul/ReadVariableOp2~
=sequential_277/lstm_831/lstm_cell_831/MatMul_1/ReadVariableOp=sequential_277/lstm_831/lstm_cell_831/MatMul_1/ReadVariableOp2>
sequential_277/lstm_831/whilesequential_277/lstm_831/while2|
<sequential_277/lstm_832/lstm_cell_832/BiasAdd/ReadVariableOp<sequential_277/lstm_832/lstm_cell_832/BiasAdd/ReadVariableOp2z
;sequential_277/lstm_832/lstm_cell_832/MatMul/ReadVariableOp;sequential_277/lstm_832/lstm_cell_832/MatMul/ReadVariableOp2~
=sequential_277/lstm_832/lstm_cell_832/MatMul_1/ReadVariableOp=sequential_277/lstm_832/lstm_cell_832/MatMul_1/ReadVariableOp2>
sequential_277/lstm_832/whilesequential_277/lstm_832/while2|
<sequential_277/lstm_833/lstm_cell_833/BiasAdd/ReadVariableOp<sequential_277/lstm_833/lstm_cell_833/BiasAdd/ReadVariableOp2z
;sequential_277/lstm_833/lstm_cell_833/MatMul/ReadVariableOp;sequential_277/lstm_833/lstm_cell_833/MatMul/ReadVariableOp2~
=sequential_277/lstm_833/lstm_cell_833/MatMul_1/ReadVariableOp=sequential_277/lstm_833/lstm_cell_833/MatMul_1/ReadVariableOp2>
sequential_277/lstm_833/whilesequential_277/lstm_833/while:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_831_input
и

Ч
lstm_832_while_cond_5026180.
*lstm_832_while_lstm_832_while_loop_counter4
0lstm_832_while_lstm_832_while_maximum_iterations
lstm_832_while_placeholder 
lstm_832_while_placeholder_1 
lstm_832_while_placeholder_2 
lstm_832_while_placeholder_30
,lstm_832_while_less_lstm_832_strided_slice_1G
Clstm_832_while_lstm_832_while_cond_5026180___redundant_placeholder0G
Clstm_832_while_lstm_832_while_cond_5026180___redundant_placeholder1G
Clstm_832_while_lstm_832_while_cond_5026180___redundant_placeholder2G
Clstm_832_while_lstm_832_while_cond_5026180___redundant_placeholder3
lstm_832_while_identity
є
lstm_832/while/LessLesslstm_832_while_placeholder,lstm_832_while_less_lstm_832_strided_slice_1*
T0*
_output_shapes
: ]
lstm_832/while/IdentityIdentitylstm_832/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_832_while_identity lstm_832/while/Identity:output:0*(
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
while_body_5024934
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_832_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_832_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_832_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_832_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_832_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_832_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_832/BiasAdd/ReadVariableOpб)while/lstm_cell_832/MatMul/ReadVariableOpб+while/lstm_cell_832/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_832/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_832_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_832/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_832/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_832/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_832_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_832/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_832/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_832/addAddV2$while/lstm_cell_832/MatMul:product:0&while/lstm_cell_832/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_832/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_832_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_832/BiasAddBiasAddwhile/lstm_cell_832/add:z:02while/lstm_cell_832/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_832/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_832/splitSplit,while/lstm_cell_832/split/split_dim:output:0$while/lstm_cell_832/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_832/SigmoidSigmoid"while/lstm_cell_832/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_832/Sigmoid_1Sigmoid"while/lstm_cell_832/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_832/mulMul!while/lstm_cell_832/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_832/ReluRelu"while/lstm_cell_832/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_832/mul_1Mulwhile/lstm_cell_832/Sigmoid:y:0&while/lstm_cell_832/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_832/add_1AddV2while/lstm_cell_832/mul:z:0while/lstm_cell_832/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_832/Sigmoid_2Sigmoid"while/lstm_cell_832/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_832/Relu_1Reluwhile/lstm_cell_832/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_832/mul_2Mul!while/lstm_cell_832/Sigmoid_2:y:0(while/lstm_cell_832/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_832/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_832/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_832/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_832/BiasAdd/ReadVariableOp*^while/lstm_cell_832/MatMul/ReadVariableOp,^while/lstm_cell_832/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_832_biasadd_readvariableop_resource5while_lstm_cell_832_biasadd_readvariableop_resource_0"n
4while_lstm_cell_832_matmul_1_readvariableop_resource6while_lstm_cell_832_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_832_matmul_readvariableop_resource4while_lstm_cell_832_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_832/BiasAdd/ReadVariableOp*while/lstm_cell_832/BiasAdd/ReadVariableOp2V
)while/lstm_cell_832/MatMul/ReadVariableOp)while/lstm_cell_832/MatMul/ReadVariableOp2Z
+while/lstm_cell_832/MatMul_1/ReadVariableOp+while/lstm_cell_832/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
║
╚
while_cond_5028457
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5028457___redundant_placeholder05
1while_while_cond_5028457___redundant_placeholder15
1while_while_cond_5028457___redundant_placeholder25
1while_while_cond_5028457___redundant_placeholder3
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
ћC
З

lstm_833_while_body_5026747.
*lstm_833_while_lstm_833_while_loop_counter4
0lstm_833_while_lstm_833_while_maximum_iterations
lstm_833_while_placeholder 
lstm_833_while_placeholder_1 
lstm_833_while_placeholder_2 
lstm_833_while_placeholder_3-
)lstm_833_while_lstm_833_strided_slice_1_0i
elstm_833_while_tensorarrayv2read_tensorlistgetitem_lstm_833_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_833_while_lstm_cell_833_matmul_readvariableop_resource_0:2(Q
?lstm_833_while_lstm_cell_833_matmul_1_readvariableop_resource_0:
(L
>lstm_833_while_lstm_cell_833_biasadd_readvariableop_resource_0:(
lstm_833_while_identity
lstm_833_while_identity_1
lstm_833_while_identity_2
lstm_833_while_identity_3
lstm_833_while_identity_4
lstm_833_while_identity_5+
'lstm_833_while_lstm_833_strided_slice_1g
clstm_833_while_tensorarrayv2read_tensorlistgetitem_lstm_833_tensorarrayunstack_tensorlistfromtensorM
;lstm_833_while_lstm_cell_833_matmul_readvariableop_resource:2(O
=lstm_833_while_lstm_cell_833_matmul_1_readvariableop_resource:
(J
<lstm_833_while_lstm_cell_833_biasadd_readvariableop_resource:(ѕб3lstm_833/while/lstm_cell_833/BiasAdd/ReadVariableOpб2lstm_833/while/lstm_cell_833/MatMul/ReadVariableOpб4lstm_833/while/lstm_cell_833/MatMul_1/ReadVariableOpЉ
@lstm_833/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
2lstm_833/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_833_while_tensorarrayv2read_tensorlistgetitem_lstm_833_tensorarrayunstack_tensorlistfromtensor_0lstm_833_while_placeholderIlstm_833/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0░
2lstm_833/while/lstm_cell_833/MatMul/ReadVariableOpReadVariableOp=lstm_833_while_lstm_cell_833_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0о
#lstm_833/while/lstm_cell_833/MatMulMatMul9lstm_833/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_833/while/lstm_cell_833/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┤
4lstm_833/while/lstm_cell_833/MatMul_1/ReadVariableOpReadVariableOp?lstm_833_while_lstm_cell_833_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0й
%lstm_833/while/lstm_cell_833/MatMul_1MatMullstm_833_while_placeholder_2<lstm_833/while/lstm_cell_833/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (╗
 lstm_833/while/lstm_cell_833/addAddV2-lstm_833/while/lstm_cell_833/MatMul:product:0/lstm_833/while/lstm_cell_833/MatMul_1:product:0*
T0*'
_output_shapes
:         («
3lstm_833/while/lstm_cell_833/BiasAdd/ReadVariableOpReadVariableOp>lstm_833_while_lstm_cell_833_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0─
$lstm_833/while/lstm_cell_833/BiasAddBiasAdd$lstm_833/while/lstm_cell_833/add:z:0;lstm_833/while/lstm_cell_833/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (n
,lstm_833/while/lstm_cell_833/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_833/while/lstm_cell_833/splitSplit5lstm_833/while/lstm_cell_833/split/split_dim:output:0-lstm_833/while/lstm_cell_833/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitј
$lstm_833/while/lstm_cell_833/SigmoidSigmoid+lstm_833/while/lstm_cell_833/split:output:0*
T0*'
_output_shapes
:         
љ
&lstm_833/while/lstm_cell_833/Sigmoid_1Sigmoid+lstm_833/while/lstm_cell_833/split:output:1*
T0*'
_output_shapes
:         
Б
 lstm_833/while/lstm_cell_833/mulMul*lstm_833/while/lstm_cell_833/Sigmoid_1:y:0lstm_833_while_placeholder_3*
T0*'
_output_shapes
:         
ѕ
!lstm_833/while/lstm_cell_833/ReluRelu+lstm_833/while/lstm_cell_833/split:output:2*
T0*'
_output_shapes
:         
Х
"lstm_833/while/lstm_cell_833/mul_1Mul(lstm_833/while/lstm_cell_833/Sigmoid:y:0/lstm_833/while/lstm_cell_833/Relu:activations:0*
T0*'
_output_shapes
:         
Ф
"lstm_833/while/lstm_cell_833/add_1AddV2$lstm_833/while/lstm_cell_833/mul:z:0&lstm_833/while/lstm_cell_833/mul_1:z:0*
T0*'
_output_shapes
:         
љ
&lstm_833/while/lstm_cell_833/Sigmoid_2Sigmoid+lstm_833/while/lstm_cell_833/split:output:3*
T0*'
_output_shapes
:         
Ё
#lstm_833/while/lstm_cell_833/Relu_1Relu&lstm_833/while/lstm_cell_833/add_1:z:0*
T0*'
_output_shapes
:         
║
"lstm_833/while/lstm_cell_833/mul_2Mul*lstm_833/while/lstm_cell_833/Sigmoid_2:y:01lstm_833/while/lstm_cell_833/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ж
3lstm_833/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_833_while_placeholder_1lstm_833_while_placeholder&lstm_833/while/lstm_cell_833/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_833/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_833/while/addAddV2lstm_833_while_placeholderlstm_833/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_833/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_833/while/add_1AddV2*lstm_833_while_lstm_833_while_loop_counterlstm_833/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_833/while/IdentityIdentitylstm_833/while/add_1:z:0^lstm_833/while/NoOp*
T0*
_output_shapes
: ј
lstm_833/while/Identity_1Identity0lstm_833_while_lstm_833_while_maximum_iterations^lstm_833/while/NoOp*
T0*
_output_shapes
: t
lstm_833/while/Identity_2Identitylstm_833/while/add:z:0^lstm_833/while/NoOp*
T0*
_output_shapes
: А
lstm_833/while/Identity_3IdentityClstm_833/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_833/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_833/while/Identity_4Identity&lstm_833/while/lstm_cell_833/mul_2:z:0^lstm_833/while/NoOp*
T0*'
_output_shapes
:         
Ћ
lstm_833/while/Identity_5Identity&lstm_833/while/lstm_cell_833/add_1:z:0^lstm_833/while/NoOp*
T0*'
_output_shapes
:         
э
lstm_833/while/NoOpNoOp4^lstm_833/while/lstm_cell_833/BiasAdd/ReadVariableOp3^lstm_833/while/lstm_cell_833/MatMul/ReadVariableOp5^lstm_833/while/lstm_cell_833/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_833_while_identity lstm_833/while/Identity:output:0"?
lstm_833_while_identity_1"lstm_833/while/Identity_1:output:0"?
lstm_833_while_identity_2"lstm_833/while/Identity_2:output:0"?
lstm_833_while_identity_3"lstm_833/while/Identity_3:output:0"?
lstm_833_while_identity_4"lstm_833/while/Identity_4:output:0"?
lstm_833_while_identity_5"lstm_833/while/Identity_5:output:0"T
'lstm_833_while_lstm_833_strided_slice_1)lstm_833_while_lstm_833_strided_slice_1_0"~
<lstm_833_while_lstm_cell_833_biasadd_readvariableop_resource>lstm_833_while_lstm_cell_833_biasadd_readvariableop_resource_0"ђ
=lstm_833_while_lstm_cell_833_matmul_1_readvariableop_resource?lstm_833_while_lstm_cell_833_matmul_1_readvariableop_resource_0"|
;lstm_833_while_lstm_cell_833_matmul_readvariableop_resource=lstm_833_while_lstm_cell_833_matmul_readvariableop_resource_0"╠
clstm_833_while_tensorarrayv2read_tensorlistgetitem_lstm_833_tensorarrayunstack_tensorlistfromtensorelstm_833_while_tensorarrayv2read_tensorlistgetitem_lstm_833_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2j
3lstm_833/while/lstm_cell_833/BiasAdd/ReadVariableOp3lstm_833/while/lstm_cell_833/BiasAdd/ReadVariableOp2h
2lstm_833/while/lstm_cell_833/MatMul/ReadVariableOp2lstm_833/while/lstm_cell_833/MatMul/ReadVariableOp2l
4lstm_833/while/lstm_cell_833/MatMul_1/ReadVariableOp4lstm_833/while/lstm_cell_833/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5025299
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5025299___redundant_placeholder05
1while_while_cond_5025299___redundant_placeholder15
1while_while_cond_5025299___redundant_placeholder25
1while_while_cond_5025299___redundant_placeholder3
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
ћC
З

lstm_833_while_body_5026320.
*lstm_833_while_lstm_833_while_loop_counter4
0lstm_833_while_lstm_833_while_maximum_iterations
lstm_833_while_placeholder 
lstm_833_while_placeholder_1 
lstm_833_while_placeholder_2 
lstm_833_while_placeholder_3-
)lstm_833_while_lstm_833_strided_slice_1_0i
elstm_833_while_tensorarrayv2read_tensorlistgetitem_lstm_833_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_833_while_lstm_cell_833_matmul_readvariableop_resource_0:2(Q
?lstm_833_while_lstm_cell_833_matmul_1_readvariableop_resource_0:
(L
>lstm_833_while_lstm_cell_833_biasadd_readvariableop_resource_0:(
lstm_833_while_identity
lstm_833_while_identity_1
lstm_833_while_identity_2
lstm_833_while_identity_3
lstm_833_while_identity_4
lstm_833_while_identity_5+
'lstm_833_while_lstm_833_strided_slice_1g
clstm_833_while_tensorarrayv2read_tensorlistgetitem_lstm_833_tensorarrayunstack_tensorlistfromtensorM
;lstm_833_while_lstm_cell_833_matmul_readvariableop_resource:2(O
=lstm_833_while_lstm_cell_833_matmul_1_readvariableop_resource:
(J
<lstm_833_while_lstm_cell_833_biasadd_readvariableop_resource:(ѕб3lstm_833/while/lstm_cell_833/BiasAdd/ReadVariableOpб2lstm_833/while/lstm_cell_833/MatMul/ReadVariableOpб4lstm_833/while/lstm_cell_833/MatMul_1/ReadVariableOpЉ
@lstm_833/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
2lstm_833/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_833_while_tensorarrayv2read_tensorlistgetitem_lstm_833_tensorarrayunstack_tensorlistfromtensor_0lstm_833_while_placeholderIlstm_833/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0░
2lstm_833/while/lstm_cell_833/MatMul/ReadVariableOpReadVariableOp=lstm_833_while_lstm_cell_833_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0о
#lstm_833/while/lstm_cell_833/MatMulMatMul9lstm_833/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_833/while/lstm_cell_833/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┤
4lstm_833/while/lstm_cell_833/MatMul_1/ReadVariableOpReadVariableOp?lstm_833_while_lstm_cell_833_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0й
%lstm_833/while/lstm_cell_833/MatMul_1MatMullstm_833_while_placeholder_2<lstm_833/while/lstm_cell_833/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (╗
 lstm_833/while/lstm_cell_833/addAddV2-lstm_833/while/lstm_cell_833/MatMul:product:0/lstm_833/while/lstm_cell_833/MatMul_1:product:0*
T0*'
_output_shapes
:         («
3lstm_833/while/lstm_cell_833/BiasAdd/ReadVariableOpReadVariableOp>lstm_833_while_lstm_cell_833_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0─
$lstm_833/while/lstm_cell_833/BiasAddBiasAdd$lstm_833/while/lstm_cell_833/add:z:0;lstm_833/while/lstm_cell_833/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (n
,lstm_833/while/lstm_cell_833/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_833/while/lstm_cell_833/splitSplit5lstm_833/while/lstm_cell_833/split/split_dim:output:0-lstm_833/while/lstm_cell_833/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitј
$lstm_833/while/lstm_cell_833/SigmoidSigmoid+lstm_833/while/lstm_cell_833/split:output:0*
T0*'
_output_shapes
:         
љ
&lstm_833/while/lstm_cell_833/Sigmoid_1Sigmoid+lstm_833/while/lstm_cell_833/split:output:1*
T0*'
_output_shapes
:         
Б
 lstm_833/while/lstm_cell_833/mulMul*lstm_833/while/lstm_cell_833/Sigmoid_1:y:0lstm_833_while_placeholder_3*
T0*'
_output_shapes
:         
ѕ
!lstm_833/while/lstm_cell_833/ReluRelu+lstm_833/while/lstm_cell_833/split:output:2*
T0*'
_output_shapes
:         
Х
"lstm_833/while/lstm_cell_833/mul_1Mul(lstm_833/while/lstm_cell_833/Sigmoid:y:0/lstm_833/while/lstm_cell_833/Relu:activations:0*
T0*'
_output_shapes
:         
Ф
"lstm_833/while/lstm_cell_833/add_1AddV2$lstm_833/while/lstm_cell_833/mul:z:0&lstm_833/while/lstm_cell_833/mul_1:z:0*
T0*'
_output_shapes
:         
љ
&lstm_833/while/lstm_cell_833/Sigmoid_2Sigmoid+lstm_833/while/lstm_cell_833/split:output:3*
T0*'
_output_shapes
:         
Ё
#lstm_833/while/lstm_cell_833/Relu_1Relu&lstm_833/while/lstm_cell_833/add_1:z:0*
T0*'
_output_shapes
:         
║
"lstm_833/while/lstm_cell_833/mul_2Mul*lstm_833/while/lstm_cell_833/Sigmoid_2:y:01lstm_833/while/lstm_cell_833/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ж
3lstm_833/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_833_while_placeholder_1lstm_833_while_placeholder&lstm_833/while/lstm_cell_833/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_833/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_833/while/addAddV2lstm_833_while_placeholderlstm_833/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_833/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_833/while/add_1AddV2*lstm_833_while_lstm_833_while_loop_counterlstm_833/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_833/while/IdentityIdentitylstm_833/while/add_1:z:0^lstm_833/while/NoOp*
T0*
_output_shapes
: ј
lstm_833/while/Identity_1Identity0lstm_833_while_lstm_833_while_maximum_iterations^lstm_833/while/NoOp*
T0*
_output_shapes
: t
lstm_833/while/Identity_2Identitylstm_833/while/add:z:0^lstm_833/while/NoOp*
T0*
_output_shapes
: А
lstm_833/while/Identity_3IdentityClstm_833/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_833/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_833/while/Identity_4Identity&lstm_833/while/lstm_cell_833/mul_2:z:0^lstm_833/while/NoOp*
T0*'
_output_shapes
:         
Ћ
lstm_833/while/Identity_5Identity&lstm_833/while/lstm_cell_833/add_1:z:0^lstm_833/while/NoOp*
T0*'
_output_shapes
:         
э
lstm_833/while/NoOpNoOp4^lstm_833/while/lstm_cell_833/BiasAdd/ReadVariableOp3^lstm_833/while/lstm_cell_833/MatMul/ReadVariableOp5^lstm_833/while/lstm_cell_833/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_833_while_identity lstm_833/while/Identity:output:0"?
lstm_833_while_identity_1"lstm_833/while/Identity_1:output:0"?
lstm_833_while_identity_2"lstm_833/while/Identity_2:output:0"?
lstm_833_while_identity_3"lstm_833/while/Identity_3:output:0"?
lstm_833_while_identity_4"lstm_833/while/Identity_4:output:0"?
lstm_833_while_identity_5"lstm_833/while/Identity_5:output:0"T
'lstm_833_while_lstm_833_strided_slice_1)lstm_833_while_lstm_833_strided_slice_1_0"~
<lstm_833_while_lstm_cell_833_biasadd_readvariableop_resource>lstm_833_while_lstm_cell_833_biasadd_readvariableop_resource_0"ђ
=lstm_833_while_lstm_cell_833_matmul_1_readvariableop_resource?lstm_833_while_lstm_cell_833_matmul_1_readvariableop_resource_0"|
;lstm_833_while_lstm_cell_833_matmul_readvariableop_resource=lstm_833_while_lstm_cell_833_matmul_readvariableop_resource_0"╠
clstm_833_while_tensorarrayv2read_tensorlistgetitem_lstm_833_tensorarrayunstack_tensorlistfromtensorelstm_833_while_tensorarrayv2read_tensorlistgetitem_lstm_833_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2j
3lstm_833/while/lstm_cell_833/BiasAdd/ReadVariableOp3lstm_833/while/lstm_cell_833/BiasAdd/ReadVariableOp2h
2lstm_833/while/lstm_cell_833/MatMul/ReadVariableOp2lstm_833/while/lstm_cell_833/MatMul/ReadVariableOp2l
4lstm_833/while/lstm_cell_833/MatMul_1/ReadVariableOp4lstm_833/while/lstm_cell_833/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ЬT
п
*sequential_277_lstm_833_while_body_5023579L
Hsequential_277_lstm_833_while_sequential_277_lstm_833_while_loop_counterR
Nsequential_277_lstm_833_while_sequential_277_lstm_833_while_maximum_iterations-
)sequential_277_lstm_833_while_placeholder/
+sequential_277_lstm_833_while_placeholder_1/
+sequential_277_lstm_833_while_placeholder_2/
+sequential_277_lstm_833_while_placeholder_3K
Gsequential_277_lstm_833_while_sequential_277_lstm_833_strided_slice_1_0ѕ
Ѓsequential_277_lstm_833_while_tensorarrayv2read_tensorlistgetitem_sequential_277_lstm_833_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_277_lstm_833_while_lstm_cell_833_matmul_readvariableop_resource_0:2(`
Nsequential_277_lstm_833_while_lstm_cell_833_matmul_1_readvariableop_resource_0:
([
Msequential_277_lstm_833_while_lstm_cell_833_biasadd_readvariableop_resource_0:(*
&sequential_277_lstm_833_while_identity,
(sequential_277_lstm_833_while_identity_1,
(sequential_277_lstm_833_while_identity_2,
(sequential_277_lstm_833_while_identity_3,
(sequential_277_lstm_833_while_identity_4,
(sequential_277_lstm_833_while_identity_5I
Esequential_277_lstm_833_while_sequential_277_lstm_833_strided_slice_1є
Ђsequential_277_lstm_833_while_tensorarrayv2read_tensorlistgetitem_sequential_277_lstm_833_tensorarrayunstack_tensorlistfromtensor\
Jsequential_277_lstm_833_while_lstm_cell_833_matmul_readvariableop_resource:2(^
Lsequential_277_lstm_833_while_lstm_cell_833_matmul_1_readvariableop_resource:
(Y
Ksequential_277_lstm_833_while_lstm_cell_833_biasadd_readvariableop_resource:(ѕбBsequential_277/lstm_833/while/lstm_cell_833/BiasAdd/ReadVariableOpбAsequential_277/lstm_833/while/lstm_cell_833/MatMul/ReadVariableOpбCsequential_277/lstm_833/while/lstm_cell_833/MatMul_1/ReadVariableOpа
Osequential_277/lstm_833/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Ъ
Asequential_277/lstm_833/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЃsequential_277_lstm_833_while_tensorarrayv2read_tensorlistgetitem_sequential_277_lstm_833_tensorarrayunstack_tensorlistfromtensor_0)sequential_277_lstm_833_while_placeholderXsequential_277/lstm_833/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╬
Asequential_277/lstm_833/while/lstm_cell_833/MatMul/ReadVariableOpReadVariableOpLsequential_277_lstm_833_while_lstm_cell_833_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ѓ
2sequential_277/lstm_833/while/lstm_cell_833/MatMulMatMulHsequential_277/lstm_833/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_277/lstm_833/while/lstm_cell_833/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (м
Csequential_277/lstm_833/while/lstm_cell_833/MatMul_1/ReadVariableOpReadVariableOpNsequential_277_lstm_833_while_lstm_cell_833_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0Ж
4sequential_277/lstm_833/while/lstm_cell_833/MatMul_1MatMul+sequential_277_lstm_833_while_placeholder_2Ksequential_277/lstm_833/while/lstm_cell_833/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (У
/sequential_277/lstm_833/while/lstm_cell_833/addAddV2<sequential_277/lstm_833/while/lstm_cell_833/MatMul:product:0>sequential_277/lstm_833/while/lstm_cell_833/MatMul_1:product:0*
T0*'
_output_shapes
:         (╠
Bsequential_277/lstm_833/while/lstm_cell_833/BiasAdd/ReadVariableOpReadVariableOpMsequential_277_lstm_833_while_lstm_cell_833_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0ы
3sequential_277/lstm_833/while/lstm_cell_833/BiasAddBiasAdd3sequential_277/lstm_833/while/lstm_cell_833/add:z:0Jsequential_277/lstm_833/while/lstm_cell_833/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (}
;sequential_277/lstm_833/while/lstm_cell_833/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
1sequential_277/lstm_833/while/lstm_cell_833/splitSplitDsequential_277/lstm_833/while/lstm_cell_833/split/split_dim:output:0<sequential_277/lstm_833/while/lstm_cell_833/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitг
3sequential_277/lstm_833/while/lstm_cell_833/SigmoidSigmoid:sequential_277/lstm_833/while/lstm_cell_833/split:output:0*
T0*'
_output_shapes
:         
«
5sequential_277/lstm_833/while/lstm_cell_833/Sigmoid_1Sigmoid:sequential_277/lstm_833/while/lstm_cell_833/split:output:1*
T0*'
_output_shapes
:         
л
/sequential_277/lstm_833/while/lstm_cell_833/mulMul9sequential_277/lstm_833/while/lstm_cell_833/Sigmoid_1:y:0+sequential_277_lstm_833_while_placeholder_3*
T0*'
_output_shapes
:         
д
0sequential_277/lstm_833/while/lstm_cell_833/ReluRelu:sequential_277/lstm_833/while/lstm_cell_833/split:output:2*
T0*'
_output_shapes
:         
с
1sequential_277/lstm_833/while/lstm_cell_833/mul_1Mul7sequential_277/lstm_833/while/lstm_cell_833/Sigmoid:y:0>sequential_277/lstm_833/while/lstm_cell_833/Relu:activations:0*
T0*'
_output_shapes
:         
п
1sequential_277/lstm_833/while/lstm_cell_833/add_1AddV23sequential_277/lstm_833/while/lstm_cell_833/mul:z:05sequential_277/lstm_833/while/lstm_cell_833/mul_1:z:0*
T0*'
_output_shapes
:         
«
5sequential_277/lstm_833/while/lstm_cell_833/Sigmoid_2Sigmoid:sequential_277/lstm_833/while/lstm_cell_833/split:output:3*
T0*'
_output_shapes
:         
Б
2sequential_277/lstm_833/while/lstm_cell_833/Relu_1Relu5sequential_277/lstm_833/while/lstm_cell_833/add_1:z:0*
T0*'
_output_shapes
:         
у
1sequential_277/lstm_833/while/lstm_cell_833/mul_2Mul9sequential_277/lstm_833/while/lstm_cell_833/Sigmoid_2:y:0@sequential_277/lstm_833/while/lstm_cell_833/Relu_1:activations:0*
T0*'
_output_shapes
:         
д
Bsequential_277/lstm_833/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_277_lstm_833_while_placeholder_1)sequential_277_lstm_833_while_placeholder5sequential_277/lstm_833/while/lstm_cell_833/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмe
#sequential_277/lstm_833/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ц
!sequential_277/lstm_833/while/addAddV2)sequential_277_lstm_833_while_placeholder,sequential_277/lstm_833/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_277/lstm_833/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :К
#sequential_277/lstm_833/while/add_1AddV2Hsequential_277_lstm_833_while_sequential_277_lstm_833_while_loop_counter.sequential_277/lstm_833/while/add_1/y:output:0*
T0*
_output_shapes
: А
&sequential_277/lstm_833/while/IdentityIdentity'sequential_277/lstm_833/while/add_1:z:0#^sequential_277/lstm_833/while/NoOp*
T0*
_output_shapes
: ╩
(sequential_277/lstm_833/while/Identity_1IdentityNsequential_277_lstm_833_while_sequential_277_lstm_833_while_maximum_iterations#^sequential_277/lstm_833/while/NoOp*
T0*
_output_shapes
: А
(sequential_277/lstm_833/while/Identity_2Identity%sequential_277/lstm_833/while/add:z:0#^sequential_277/lstm_833/while/NoOp*
T0*
_output_shapes
: ╬
(sequential_277/lstm_833/while/Identity_3IdentityRsequential_277/lstm_833/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_277/lstm_833/while/NoOp*
T0*
_output_shapes
: ┬
(sequential_277/lstm_833/while/Identity_4Identity5sequential_277/lstm_833/while/lstm_cell_833/mul_2:z:0#^sequential_277/lstm_833/while/NoOp*
T0*'
_output_shapes
:         
┬
(sequential_277/lstm_833/while/Identity_5Identity5sequential_277/lstm_833/while/lstm_cell_833/add_1:z:0#^sequential_277/lstm_833/while/NoOp*
T0*'
_output_shapes
:         
│
"sequential_277/lstm_833/while/NoOpNoOpC^sequential_277/lstm_833/while/lstm_cell_833/BiasAdd/ReadVariableOpB^sequential_277/lstm_833/while/lstm_cell_833/MatMul/ReadVariableOpD^sequential_277/lstm_833/while/lstm_cell_833/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_277_lstm_833_while_identity/sequential_277/lstm_833/while/Identity:output:0"]
(sequential_277_lstm_833_while_identity_11sequential_277/lstm_833/while/Identity_1:output:0"]
(sequential_277_lstm_833_while_identity_21sequential_277/lstm_833/while/Identity_2:output:0"]
(sequential_277_lstm_833_while_identity_31sequential_277/lstm_833/while/Identity_3:output:0"]
(sequential_277_lstm_833_while_identity_41sequential_277/lstm_833/while/Identity_4:output:0"]
(sequential_277_lstm_833_while_identity_51sequential_277/lstm_833/while/Identity_5:output:0"ю
Ksequential_277_lstm_833_while_lstm_cell_833_biasadd_readvariableop_resourceMsequential_277_lstm_833_while_lstm_cell_833_biasadd_readvariableop_resource_0"ъ
Lsequential_277_lstm_833_while_lstm_cell_833_matmul_1_readvariableop_resourceNsequential_277_lstm_833_while_lstm_cell_833_matmul_1_readvariableop_resource_0"џ
Jsequential_277_lstm_833_while_lstm_cell_833_matmul_readvariableop_resourceLsequential_277_lstm_833_while_lstm_cell_833_matmul_readvariableop_resource_0"љ
Esequential_277_lstm_833_while_sequential_277_lstm_833_strided_slice_1Gsequential_277_lstm_833_while_sequential_277_lstm_833_strided_slice_1_0"і
Ђsequential_277_lstm_833_while_tensorarrayv2read_tensorlistgetitem_sequential_277_lstm_833_tensorarrayunstack_tensorlistfromtensorЃsequential_277_lstm_833_while_tensorarrayv2read_tensorlistgetitem_sequential_277_lstm_833_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2ѕ
Bsequential_277/lstm_833/while/lstm_cell_833/BiasAdd/ReadVariableOpBsequential_277/lstm_833/while/lstm_cell_833/BiasAdd/ReadVariableOp2є
Asequential_277/lstm_833/while/lstm_cell_833/MatMul/ReadVariableOpAsequential_277/lstm_833/while/lstm_cell_833/MatMul/ReadVariableOp2і
Csequential_277/lstm_833/while/lstm_cell_833/MatMul_1/ReadVariableOpCsequential_277/lstm_833/while/lstm_cell_833/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
■Ђ
Џ
K__inference_sequential_277_layer_call_and_return_conditional_losses_5026837

inputsH
5lstm_831_lstm_cell_831_matmul_readvariableop_resource:	љJ
7lstm_831_lstm_cell_831_matmul_1_readvariableop_resource:	dљE
6lstm_831_lstm_cell_831_biasadd_readvariableop_resource:	љH
5lstm_832_lstm_cell_832_matmul_readvariableop_resource:	d╚J
7lstm_832_lstm_cell_832_matmul_1_readvariableop_resource:	2╚E
6lstm_832_lstm_cell_832_biasadd_readvariableop_resource:	╚G
5lstm_833_lstm_cell_833_matmul_readvariableop_resource:2(I
7lstm_833_lstm_cell_833_matmul_1_readvariableop_resource:
(D
6lstm_833_lstm_cell_833_biasadd_readvariableop_resource:(:
(dense_277_matmul_readvariableop_resource:
7
)dense_277_biasadd_readvariableop_resource:
identityѕб dense_277/BiasAdd/ReadVariableOpбdense_277/MatMul/ReadVariableOpб-lstm_831/lstm_cell_831/BiasAdd/ReadVariableOpб,lstm_831/lstm_cell_831/MatMul/ReadVariableOpб.lstm_831/lstm_cell_831/MatMul_1/ReadVariableOpбlstm_831/whileб-lstm_832/lstm_cell_832/BiasAdd/ReadVariableOpб,lstm_832/lstm_cell_832/MatMul/ReadVariableOpб.lstm_832/lstm_cell_832/MatMul_1/ReadVariableOpбlstm_832/whileб-lstm_833/lstm_cell_833/BiasAdd/ReadVariableOpб,lstm_833/lstm_cell_833/MatMul/ReadVariableOpб.lstm_833/lstm_cell_833/MatMul_1/ReadVariableOpбlstm_833/whileD
lstm_831/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_831/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_831/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_831/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_831/strided_sliceStridedSlicelstm_831/Shape:output:0%lstm_831/strided_slice/stack:output:0'lstm_831/strided_slice/stack_1:output:0'lstm_831/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_831/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dј
lstm_831/zeros/packedPacklstm_831/strided_slice:output:0 lstm_831/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_831/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_831/zerosFilllstm_831/zeros/packed:output:0lstm_831/zeros/Const:output:0*
T0*'
_output_shapes
:         d[
lstm_831/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dњ
lstm_831/zeros_1/packedPacklstm_831/strided_slice:output:0"lstm_831/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_831/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_831/zeros_1Fill lstm_831/zeros_1/packed:output:0lstm_831/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dl
lstm_831/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_831/transpose	Transposeinputs lstm_831/transpose/perm:output:0*
T0*+
_output_shapes
:         V
lstm_831/Shape_1Shapelstm_831/transpose:y:0*
T0*
_output_shapes
:h
lstm_831/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_831/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_831/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_831/strided_slice_1StridedSlicelstm_831/Shape_1:output:0'lstm_831/strided_slice_1/stack:output:0)lstm_831/strided_slice_1/stack_1:output:0)lstm_831/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_831/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_831/TensorArrayV2TensorListReserve-lstm_831/TensorArrayV2/element_shape:output:0!lstm_831/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_831/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ч
0lstm_831/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_831/transpose:y:0Glstm_831/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_831/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_831/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_831/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_831/strided_slice_2StridedSlicelstm_831/transpose:y:0'lstm_831/strided_slice_2/stack:output:0)lstm_831/strided_slice_2/stack_1:output:0)lstm_831/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskБ
,lstm_831/lstm_cell_831/MatMul/ReadVariableOpReadVariableOp5lstm_831_lstm_cell_831_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0│
lstm_831/lstm_cell_831/MatMulMatMul!lstm_831/strided_slice_2:output:04lstm_831/lstm_cell_831/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љД
.lstm_831/lstm_cell_831/MatMul_1/ReadVariableOpReadVariableOp7lstm_831_lstm_cell_831_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0Г
lstm_831/lstm_cell_831/MatMul_1MatMullstm_831/zeros:output:06lstm_831/lstm_cell_831/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љф
lstm_831/lstm_cell_831/addAddV2'lstm_831/lstm_cell_831/MatMul:product:0)lstm_831/lstm_cell_831/MatMul_1:product:0*
T0*(
_output_shapes
:         љА
-lstm_831/lstm_cell_831/BiasAdd/ReadVariableOpReadVariableOp6lstm_831_lstm_cell_831_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0│
lstm_831/lstm_cell_831/BiasAddBiasAddlstm_831/lstm_cell_831/add:z:05lstm_831/lstm_cell_831/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љh
&lstm_831/lstm_cell_831/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_831/lstm_cell_831/splitSplit/lstm_831/lstm_cell_831/split/split_dim:output:0'lstm_831/lstm_cell_831/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitѓ
lstm_831/lstm_cell_831/SigmoidSigmoid%lstm_831/lstm_cell_831/split:output:0*
T0*'
_output_shapes
:         dё
 lstm_831/lstm_cell_831/Sigmoid_1Sigmoid%lstm_831/lstm_cell_831/split:output:1*
T0*'
_output_shapes
:         dћ
lstm_831/lstm_cell_831/mulMul$lstm_831/lstm_cell_831/Sigmoid_1:y:0lstm_831/zeros_1:output:0*
T0*'
_output_shapes
:         d|
lstm_831/lstm_cell_831/ReluRelu%lstm_831/lstm_cell_831/split:output:2*
T0*'
_output_shapes
:         dц
lstm_831/lstm_cell_831/mul_1Mul"lstm_831/lstm_cell_831/Sigmoid:y:0)lstm_831/lstm_cell_831/Relu:activations:0*
T0*'
_output_shapes
:         dЎ
lstm_831/lstm_cell_831/add_1AddV2lstm_831/lstm_cell_831/mul:z:0 lstm_831/lstm_cell_831/mul_1:z:0*
T0*'
_output_shapes
:         dё
 lstm_831/lstm_cell_831/Sigmoid_2Sigmoid%lstm_831/lstm_cell_831/split:output:3*
T0*'
_output_shapes
:         dy
lstm_831/lstm_cell_831/Relu_1Relu lstm_831/lstm_cell_831/add_1:z:0*
T0*'
_output_shapes
:         dе
lstm_831/lstm_cell_831/mul_2Mul$lstm_831/lstm_cell_831/Sigmoid_2:y:0+lstm_831/lstm_cell_831/Relu_1:activations:0*
T0*'
_output_shapes
:         dw
&lstm_831/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
lstm_831/TensorArrayV2_1TensorListReserve/lstm_831/TensorArrayV2_1/element_shape:output:0!lstm_831/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_831/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_831/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_831/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_831/whileWhile$lstm_831/while/loop_counter:output:0*lstm_831/while/maximum_iterations:output:0lstm_831/time:output:0!lstm_831/TensorArrayV2_1:handle:0lstm_831/zeros:output:0lstm_831/zeros_1:output:0!lstm_831/strided_slice_1:output:0@lstm_831/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_831_lstm_cell_831_matmul_readvariableop_resource7lstm_831_lstm_cell_831_matmul_1_readvariableop_resource6lstm_831_lstm_cell_831_biasadd_readvariableop_resource*
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
lstm_831_while_body_5026469*'
condR
lstm_831_while_cond_5026468*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations і
9lstm_831/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   П
+lstm_831/TensorArrayV2Stack/TensorListStackTensorListStacklstm_831/while:output:3Blstm_831/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0q
lstm_831/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_831/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_831/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_831/strided_slice_3StridedSlice4lstm_831/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_831/strided_slice_3/stack:output:0)lstm_831/strided_slice_3/stack_1:output:0)lstm_831/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskn
lstm_831/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_831/transpose_1	Transpose4lstm_831/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_831/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dd
lstm_831/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_832/ShapeShapelstm_831/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_832/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_832/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_832/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_832/strided_sliceStridedSlicelstm_832/Shape:output:0%lstm_832/strided_slice/stack:output:0'lstm_832/strided_slice/stack_1:output:0'lstm_832/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_832/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ј
lstm_832/zeros/packedPacklstm_832/strided_slice:output:0 lstm_832/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_832/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_832/zerosFilllstm_832/zeros/packed:output:0lstm_832/zeros/Const:output:0*
T0*'
_output_shapes
:         2[
lstm_832/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2њ
lstm_832/zeros_1/packedPacklstm_832/strided_slice:output:0"lstm_832/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_832/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_832/zeros_1Fill lstm_832/zeros_1/packed:output:0lstm_832/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2l
lstm_832/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_832/transpose	Transposelstm_831/transpose_1:y:0 lstm_832/transpose/perm:output:0*
T0*+
_output_shapes
:         dV
lstm_832/Shape_1Shapelstm_832/transpose:y:0*
T0*
_output_shapes
:h
lstm_832/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_832/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_832/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_832/strided_slice_1StridedSlicelstm_832/Shape_1:output:0'lstm_832/strided_slice_1/stack:output:0)lstm_832/strided_slice_1/stack_1:output:0)lstm_832/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_832/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_832/TensorArrayV2TensorListReserve-lstm_832/TensorArrayV2/element_shape:output:0!lstm_832/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_832/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ч
0lstm_832/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_832/transpose:y:0Glstm_832/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_832/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_832/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_832/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_832/strided_slice_2StridedSlicelstm_832/transpose:y:0'lstm_832/strided_slice_2/stack:output:0)lstm_832/strided_slice_2/stack_1:output:0)lstm_832/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskБ
,lstm_832/lstm_cell_832/MatMul/ReadVariableOpReadVariableOp5lstm_832_lstm_cell_832_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0│
lstm_832/lstm_cell_832/MatMulMatMul!lstm_832/strided_slice_2:output:04lstm_832/lstm_cell_832/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Д
.lstm_832/lstm_cell_832/MatMul_1/ReadVariableOpReadVariableOp7lstm_832_lstm_cell_832_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0Г
lstm_832/lstm_cell_832/MatMul_1MatMullstm_832/zeros:output:06lstm_832/lstm_cell_832/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ф
lstm_832/lstm_cell_832/addAddV2'lstm_832/lstm_cell_832/MatMul:product:0)lstm_832/lstm_cell_832/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚А
-lstm_832/lstm_cell_832/BiasAdd/ReadVariableOpReadVariableOp6lstm_832_lstm_cell_832_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0│
lstm_832/lstm_cell_832/BiasAddBiasAddlstm_832/lstm_cell_832/add:z:05lstm_832/lstm_cell_832/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚h
&lstm_832/lstm_cell_832/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_832/lstm_cell_832/splitSplit/lstm_832/lstm_cell_832/split/split_dim:output:0'lstm_832/lstm_cell_832/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitѓ
lstm_832/lstm_cell_832/SigmoidSigmoid%lstm_832/lstm_cell_832/split:output:0*
T0*'
_output_shapes
:         2ё
 lstm_832/lstm_cell_832/Sigmoid_1Sigmoid%lstm_832/lstm_cell_832/split:output:1*
T0*'
_output_shapes
:         2ћ
lstm_832/lstm_cell_832/mulMul$lstm_832/lstm_cell_832/Sigmoid_1:y:0lstm_832/zeros_1:output:0*
T0*'
_output_shapes
:         2|
lstm_832/lstm_cell_832/ReluRelu%lstm_832/lstm_cell_832/split:output:2*
T0*'
_output_shapes
:         2ц
lstm_832/lstm_cell_832/mul_1Mul"lstm_832/lstm_cell_832/Sigmoid:y:0)lstm_832/lstm_cell_832/Relu:activations:0*
T0*'
_output_shapes
:         2Ў
lstm_832/lstm_cell_832/add_1AddV2lstm_832/lstm_cell_832/mul:z:0 lstm_832/lstm_cell_832/mul_1:z:0*
T0*'
_output_shapes
:         2ё
 lstm_832/lstm_cell_832/Sigmoid_2Sigmoid%lstm_832/lstm_cell_832/split:output:3*
T0*'
_output_shapes
:         2y
lstm_832/lstm_cell_832/Relu_1Relu lstm_832/lstm_cell_832/add_1:z:0*
T0*'
_output_shapes
:         2е
lstm_832/lstm_cell_832/mul_2Mul$lstm_832/lstm_cell_832/Sigmoid_2:y:0+lstm_832/lstm_cell_832/Relu_1:activations:0*
T0*'
_output_shapes
:         2w
&lstm_832/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
lstm_832/TensorArrayV2_1TensorListReserve/lstm_832/TensorArrayV2_1/element_shape:output:0!lstm_832/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_832/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_832/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_832/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_832/whileWhile$lstm_832/while/loop_counter:output:0*lstm_832/while/maximum_iterations:output:0lstm_832/time:output:0!lstm_832/TensorArrayV2_1:handle:0lstm_832/zeros:output:0lstm_832/zeros_1:output:0!lstm_832/strided_slice_1:output:0@lstm_832/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_832_lstm_cell_832_matmul_readvariableop_resource7lstm_832_lstm_cell_832_matmul_1_readvariableop_resource6lstm_832_lstm_cell_832_biasadd_readvariableop_resource*
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
lstm_832_while_body_5026608*'
condR
lstm_832_while_cond_5026607*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations і
9lstm_832/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   П
+lstm_832/TensorArrayV2Stack/TensorListStackTensorListStacklstm_832/while:output:3Blstm_832/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0q
lstm_832/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_832/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_832/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_832/strided_slice_3StridedSlice4lstm_832/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_832/strided_slice_3/stack:output:0)lstm_832/strided_slice_3/stack_1:output:0)lstm_832/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskn
lstm_832/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_832/transpose_1	Transpose4lstm_832/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_832/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2d
lstm_832/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_833/ShapeShapelstm_832/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_833/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_833/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_833/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_833/strided_sliceStridedSlicelstm_833/Shape:output:0%lstm_833/strided_slice/stack:output:0'lstm_833/strided_slice/stack_1:output:0'lstm_833/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_833/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ј
lstm_833/zeros/packedPacklstm_833/strided_slice:output:0 lstm_833/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_833/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_833/zerosFilllstm_833/zeros/packed:output:0lstm_833/zeros/Const:output:0*
T0*'
_output_shapes
:         
[
lstm_833/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
њ
lstm_833/zeros_1/packedPacklstm_833/strided_slice:output:0"lstm_833/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_833/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_833/zeros_1Fill lstm_833/zeros_1/packed:output:0lstm_833/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
l
lstm_833/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_833/transpose	Transposelstm_832/transpose_1:y:0 lstm_833/transpose/perm:output:0*
T0*+
_output_shapes
:         2V
lstm_833/Shape_1Shapelstm_833/transpose:y:0*
T0*
_output_shapes
:h
lstm_833/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_833/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_833/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_833/strided_slice_1StridedSlicelstm_833/Shape_1:output:0'lstm_833/strided_slice_1/stack:output:0)lstm_833/strided_slice_1/stack_1:output:0)lstm_833/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_833/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_833/TensorArrayV2TensorListReserve-lstm_833/TensorArrayV2/element_shape:output:0!lstm_833/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_833/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ч
0lstm_833/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_833/transpose:y:0Glstm_833/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_833/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_833/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_833/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_833/strided_slice_2StridedSlicelstm_833/transpose:y:0'lstm_833/strided_slice_2/stack:output:0)lstm_833/strided_slice_2/stack_1:output:0)lstm_833/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskб
,lstm_833/lstm_cell_833/MatMul/ReadVariableOpReadVariableOp5lstm_833_lstm_cell_833_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▓
lstm_833/lstm_cell_833/MatMulMatMul!lstm_833/strided_slice_2:output:04lstm_833/lstm_cell_833/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (д
.lstm_833/lstm_cell_833/MatMul_1/ReadVariableOpReadVariableOp7lstm_833_lstm_cell_833_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0г
lstm_833/lstm_cell_833/MatMul_1MatMullstm_833/zeros:output:06lstm_833/lstm_cell_833/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Е
lstm_833/lstm_cell_833/addAddV2'lstm_833/lstm_cell_833/MatMul:product:0)lstm_833/lstm_cell_833/MatMul_1:product:0*
T0*'
_output_shapes
:         (а
-lstm_833/lstm_cell_833/BiasAdd/ReadVariableOpReadVariableOp6lstm_833_lstm_cell_833_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▓
lstm_833/lstm_cell_833/BiasAddBiasAddlstm_833/lstm_cell_833/add:z:05lstm_833/lstm_cell_833/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (h
&lstm_833/lstm_cell_833/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_833/lstm_cell_833/splitSplit/lstm_833/lstm_cell_833/split/split_dim:output:0'lstm_833/lstm_cell_833/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitѓ
lstm_833/lstm_cell_833/SigmoidSigmoid%lstm_833/lstm_cell_833/split:output:0*
T0*'
_output_shapes
:         
ё
 lstm_833/lstm_cell_833/Sigmoid_1Sigmoid%lstm_833/lstm_cell_833/split:output:1*
T0*'
_output_shapes
:         
ћ
lstm_833/lstm_cell_833/mulMul$lstm_833/lstm_cell_833/Sigmoid_1:y:0lstm_833/zeros_1:output:0*
T0*'
_output_shapes
:         
|
lstm_833/lstm_cell_833/ReluRelu%lstm_833/lstm_cell_833/split:output:2*
T0*'
_output_shapes
:         
ц
lstm_833/lstm_cell_833/mul_1Mul"lstm_833/lstm_cell_833/Sigmoid:y:0)lstm_833/lstm_cell_833/Relu:activations:0*
T0*'
_output_shapes
:         
Ў
lstm_833/lstm_cell_833/add_1AddV2lstm_833/lstm_cell_833/mul:z:0 lstm_833/lstm_cell_833/mul_1:z:0*
T0*'
_output_shapes
:         
ё
 lstm_833/lstm_cell_833/Sigmoid_2Sigmoid%lstm_833/lstm_cell_833/split:output:3*
T0*'
_output_shapes
:         
y
lstm_833/lstm_cell_833/Relu_1Relu lstm_833/lstm_cell_833/add_1:z:0*
T0*'
_output_shapes
:         
е
lstm_833/lstm_cell_833/mul_2Mul$lstm_833/lstm_cell_833/Sigmoid_2:y:0+lstm_833/lstm_cell_833/Relu_1:activations:0*
T0*'
_output_shapes
:         
w
&lstm_833/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   М
lstm_833/TensorArrayV2_1TensorListReserve/lstm_833/TensorArrayV2_1/element_shape:output:0!lstm_833/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_833/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_833/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_833/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_833/whileWhile$lstm_833/while/loop_counter:output:0*lstm_833/while/maximum_iterations:output:0lstm_833/time:output:0!lstm_833/TensorArrayV2_1:handle:0lstm_833/zeros:output:0lstm_833/zeros_1:output:0!lstm_833/strided_slice_1:output:0@lstm_833/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_833_lstm_cell_833_matmul_readvariableop_resource7lstm_833_lstm_cell_833_matmul_1_readvariableop_resource6lstm_833_lstm_cell_833_biasadd_readvariableop_resource*
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
lstm_833_while_body_5026747*'
condR
lstm_833_while_cond_5026746*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations і
9lstm_833/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   П
+lstm_833/TensorArrayV2Stack/TensorListStackTensorListStacklstm_833/while:output:3Blstm_833/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0q
lstm_833/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_833/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_833/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_833/strided_slice_3StridedSlice4lstm_833/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_833/strided_slice_3/stack:output:0)lstm_833/strided_slice_3/stack_1:output:0)lstm_833/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskn
lstm_833/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_833/transpose_1	Transpose4lstm_833/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_833/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
d
lstm_833/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ѕ
dense_277/MatMul/ReadVariableOpReadVariableOp(dense_277_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0ў
dense_277/MatMulMatMul!lstm_833/strided_slice_3:output:0'dense_277/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         є
 dense_277/BiasAdd/ReadVariableOpReadVariableOp)dense_277_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ћ
dense_277/BiasAddBiasAdddense_277/MatMul:product:0(dense_277/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_277/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Ь
NoOpNoOp!^dense_277/BiasAdd/ReadVariableOp ^dense_277/MatMul/ReadVariableOp.^lstm_831/lstm_cell_831/BiasAdd/ReadVariableOp-^lstm_831/lstm_cell_831/MatMul/ReadVariableOp/^lstm_831/lstm_cell_831/MatMul_1/ReadVariableOp^lstm_831/while.^lstm_832/lstm_cell_832/BiasAdd/ReadVariableOp-^lstm_832/lstm_cell_832/MatMul/ReadVariableOp/^lstm_832/lstm_cell_832/MatMul_1/ReadVariableOp^lstm_832/while.^lstm_833/lstm_cell_833/BiasAdd/ReadVariableOp-^lstm_833/lstm_cell_833/MatMul/ReadVariableOp/^lstm_833/lstm_cell_833/MatMul_1/ReadVariableOp^lstm_833/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_277/BiasAdd/ReadVariableOp dense_277/BiasAdd/ReadVariableOp2B
dense_277/MatMul/ReadVariableOpdense_277/MatMul/ReadVariableOp2^
-lstm_831/lstm_cell_831/BiasAdd/ReadVariableOp-lstm_831/lstm_cell_831/BiasAdd/ReadVariableOp2\
,lstm_831/lstm_cell_831/MatMul/ReadVariableOp,lstm_831/lstm_cell_831/MatMul/ReadVariableOp2`
.lstm_831/lstm_cell_831/MatMul_1/ReadVariableOp.lstm_831/lstm_cell_831/MatMul_1/ReadVariableOp2 
lstm_831/whilelstm_831/while2^
-lstm_832/lstm_cell_832/BiasAdd/ReadVariableOp-lstm_832/lstm_cell_832/BiasAdd/ReadVariableOp2\
,lstm_832/lstm_cell_832/MatMul/ReadVariableOp,lstm_832/lstm_cell_832/MatMul/ReadVariableOp2`
.lstm_832/lstm_cell_832/MatMul_1/ReadVariableOp.lstm_832/lstm_cell_832/MatMul_1/ReadVariableOp2 
lstm_832/whilelstm_832/while2^
-lstm_833/lstm_cell_833/BiasAdd/ReadVariableOp-lstm_833/lstm_cell_833/BiasAdd/ReadVariableOp2\
,lstm_833/lstm_cell_833/MatMul/ReadVariableOp,lstm_833/lstm_cell_833/MatMul/ReadVariableOp2`
.lstm_833/lstm_cell_833/MatMul_1/ReadVariableOp.lstm_833/lstm_cell_833/MatMul_1/ReadVariableOp2 
lstm_833/whilelstm_833/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
аK
Ц
E__inference_lstm_832_layer_call_and_return_conditional_losses_5027783
inputs_0?
,lstm_cell_832_matmul_readvariableop_resource:	d╚A
.lstm_cell_832_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_832_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_832/BiasAdd/ReadVariableOpб#lstm_cell_832/MatMul/ReadVariableOpб%lstm_cell_832/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_832/MatMul/ReadVariableOpReadVariableOp,lstm_cell_832_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_832/MatMulMatMulstrided_slice_2:output:0+lstm_cell_832/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_832/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_832_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_832/MatMul_1MatMulzeros:output:0-lstm_cell_832/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_832/addAddV2lstm_cell_832/MatMul:product:0 lstm_cell_832/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_832/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_832_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_832/BiasAddBiasAddlstm_cell_832/add:z:0,lstm_cell_832/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_832/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_832/splitSplit&lstm_cell_832/split/split_dim:output:0lstm_cell_832/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_832/SigmoidSigmoidlstm_cell_832/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_832/Sigmoid_1Sigmoidlstm_cell_832/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_832/mulMullstm_cell_832/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_832/ReluRelulstm_cell_832/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_832/mul_1Mullstm_cell_832/Sigmoid:y:0 lstm_cell_832/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_832/add_1AddV2lstm_cell_832/mul:z:0lstm_cell_832/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_832/Sigmoid_2Sigmoidlstm_cell_832/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_832/Relu_1Relulstm_cell_832/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_832/mul_2Mullstm_cell_832/Sigmoid_2:y:0"lstm_cell_832/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_832_matmul_readvariableop_resource.lstm_cell_832_matmul_1_readvariableop_resource-lstm_cell_832_biasadd_readvariableop_resource*
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
while_body_5027699*
condR
while_cond_5027698*K
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
NoOpNoOp%^lstm_cell_832/BiasAdd/ReadVariableOp$^lstm_cell_832/MatMul/ReadVariableOp&^lstm_cell_832/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_832/BiasAdd/ReadVariableOp$lstm_cell_832/BiasAdd/ReadVariableOp2J
#lstm_cell_832/MatMul/ReadVariableOp#lstm_cell_832/MatMul/ReadVariableOp2N
%lstm_cell_832/MatMul_1/ReadVariableOp%lstm_cell_832/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
к
ў
+__inference_dense_277_layer_call_fn_5028694

inputs
unknown:

	unknown_0:
identityѕбStatefulPartitionedCall█
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
GPU 2J 8ѓ *O
fJRH
F__inference_dense_277_layer_call_and_return_conditional_losses_5025186o
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
и

Ч
lstm_833_while_cond_5026746.
*lstm_833_while_lstm_833_while_loop_counter4
0lstm_833_while_lstm_833_while_maximum_iterations
lstm_833_while_placeholder 
lstm_833_while_placeholder_1 
lstm_833_while_placeholder_2 
lstm_833_while_placeholder_30
,lstm_833_while_less_lstm_833_strided_slice_1G
Clstm_833_while_lstm_833_while_cond_5026746___redundant_placeholder0G
Clstm_833_while_lstm_833_while_cond_5026746___redundant_placeholder1G
Clstm_833_while_lstm_833_while_cond_5026746___redundant_placeholder2G
Clstm_833_while_lstm_833_while_cond_5026746___redundant_placeholder3
lstm_833_while_identity
є
lstm_833/while/LessLesslstm_833_while_placeholder,lstm_833_while_less_lstm_833_strided_slice_1*
T0*
_output_shapes
: ]
lstm_833/while/IdentityIdentitylstm_833/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_833_while_identity lstm_833/while/Identity:output:0*(
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
:"ѓL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Й
serving_defaultф
M
lstm_831_input;
 serving_default_lstm_831_input:0         =
	dense_2770
StatefulPartitionedCall:0         tensorflow/serving/predict:н═
Ё
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
є__call__
+Є&call_and_return_all_conditional_losses
ѕ_default_save_signature"
_tf_keras_sequential
┼
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
Ѕ__call__
+і&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
┼
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
І__call__
+ї&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
┼
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
Ї__call__
+ј&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
й

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
Ј__call__
+љ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ъ
#iter

$beta_1

%beta_2
	&decay
'learning_ratempmq(mr)ms*mt+mu,mv-mw.mx/my0mzv{v|(v})v~*v+vђ,vЂ-vѓ.vЃ/vё0vЁ"
	optimizer
n
(0
)1
*2
+3
,4
-5
.6
/7
08
9
10"
trackable_list_wrapper
n
(0
)1
*2
+3
,4
-5
.6
/7
08
9
10"
trackable_list_wrapper
 "
trackable_list_wrapper
╬
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
є__call__
ѕ_default_save_signature
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses"
_generic_user_object
-
Љserving_default"
signature_map
с
6
state_size

(kernel
)recurrent_kernel
*bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
њ__call__
+Њ&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
 "
trackable_list_wrapper
╝

;states
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
Ѕ__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses"
_generic_user_object
с
A
state_size

+kernel
,recurrent_kernel
-bias
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
ћ__call__
+Ћ&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
 "
trackable_list_wrapper
╝

Fstates
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses
І__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses"
_generic_user_object
с
L
state_size

.kernel
/recurrent_kernel
0bias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
ќ__call__
+Ќ&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
 "
trackable_list_wrapper
╝

Qstates
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
regularization_losses
Ї__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses"
_generic_user_object
": 
2dense_277/kernel
:2dense_277/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
░
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
 trainable_variables
!regularization_losses
Ј__call__
+љ&call_and_return_all_conditional_losses
'љ"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0:.	љ2lstm_831/lstm_cell_831/kernel
::8	dљ2'lstm_831/lstm_cell_831/recurrent_kernel
*:(љ2lstm_831/lstm_cell_831/bias
0:.	d╚2lstm_832/lstm_cell_832/kernel
::8	2╚2'lstm_832/lstm_cell_832/recurrent_kernel
*:(╚2lstm_832/lstm_cell_832/bias
/:-2(2lstm_833/lstm_cell_833/kernel
9:7
(2'lstm_833/lstm_cell_833/recurrent_kernel
):'(2lstm_833/lstm_cell_833/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
'
\0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
 "
trackable_list_wrapper
░
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
7	variables
8trainable_variables
9regularization_losses
њ__call__
+Њ&call_and_return_all_conditional_losses
'Њ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
 "
trackable_list_wrapper
░
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
ћ__call__
+Ћ&call_and_return_all_conditional_losses
'Ћ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
 "
trackable_list_wrapper
░
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
ќ__call__
+Ќ&call_and_return_all_conditional_losses
'Ќ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
	ltotal
	mcount
n	variables
o	keras_api"
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
l0
m1"
trackable_list_wrapper
-
n	variables"
_generic_user_object
':%
2Adam/dense_277/kernel/m
!:2Adam/dense_277/bias/m
5:3	љ2$Adam/lstm_831/lstm_cell_831/kernel/m
?:=	dљ2.Adam/lstm_831/lstm_cell_831/recurrent_kernel/m
/:-љ2"Adam/lstm_831/lstm_cell_831/bias/m
5:3	d╚2$Adam/lstm_832/lstm_cell_832/kernel/m
?:=	2╚2.Adam/lstm_832/lstm_cell_832/recurrent_kernel/m
/:-╚2"Adam/lstm_832/lstm_cell_832/bias/m
4:22(2$Adam/lstm_833/lstm_cell_833/kernel/m
>:<
(2.Adam/lstm_833/lstm_cell_833/recurrent_kernel/m
.:,(2"Adam/lstm_833/lstm_cell_833/bias/m
':%
2Adam/dense_277/kernel/v
!:2Adam/dense_277/bias/v
5:3	љ2$Adam/lstm_831/lstm_cell_831/kernel/v
?:=	dљ2.Adam/lstm_831/lstm_cell_831/recurrent_kernel/v
/:-љ2"Adam/lstm_831/lstm_cell_831/bias/v
5:3	d╚2$Adam/lstm_832/lstm_cell_832/kernel/v
?:=	2╚2.Adam/lstm_832/lstm_cell_832/recurrent_kernel/v
/:-╚2"Adam/lstm_832/lstm_cell_832/bias/v
4:22(2$Adam/lstm_833/lstm_cell_833/kernel/v
>:<
(2.Adam/lstm_833/lstm_cell_833/recurrent_kernel/v
.:,(2"Adam/lstm_833/lstm_cell_833/bias/v
ј2І
0__inference_sequential_277_layer_call_fn_5025218
0__inference_sequential_277_layer_call_fn_5025956
0__inference_sequential_277_layer_call_fn_5025983
0__inference_sequential_277_layer_call_fn_5025834└
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
Щ2э
K__inference_sequential_277_layer_call_and_return_conditional_losses_5026410
K__inference_sequential_277_layer_call_and_return_conditional_losses_5026837
K__inference_sequential_277_layer_call_and_return_conditional_losses_5025864
K__inference_sequential_277_layer_call_and_return_conditional_losses_5025894└
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
"__inference__wrapped_model_5023669lstm_831_input"ў
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
*__inference_lstm_831_layer_call_fn_5026848
*__inference_lstm_831_layer_call_fn_5026859
*__inference_lstm_831_layer_call_fn_5026870
*__inference_lstm_831_layer_call_fn_5026881Н
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
E__inference_lstm_831_layer_call_and_return_conditional_losses_5027024
E__inference_lstm_831_layer_call_and_return_conditional_losses_5027167
E__inference_lstm_831_layer_call_and_return_conditional_losses_5027310
E__inference_lstm_831_layer_call_and_return_conditional_losses_5027453Н
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
*__inference_lstm_832_layer_call_fn_5027464
*__inference_lstm_832_layer_call_fn_5027475
*__inference_lstm_832_layer_call_fn_5027486
*__inference_lstm_832_layer_call_fn_5027497Н
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
E__inference_lstm_832_layer_call_and_return_conditional_losses_5027640
E__inference_lstm_832_layer_call_and_return_conditional_losses_5027783
E__inference_lstm_832_layer_call_and_return_conditional_losses_5027926
E__inference_lstm_832_layer_call_and_return_conditional_losses_5028069Н
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
*__inference_lstm_833_layer_call_fn_5028080
*__inference_lstm_833_layer_call_fn_5028091
*__inference_lstm_833_layer_call_fn_5028102
*__inference_lstm_833_layer_call_fn_5028113Н
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
E__inference_lstm_833_layer_call_and_return_conditional_losses_5028256
E__inference_lstm_833_layer_call_and_return_conditional_losses_5028399
E__inference_lstm_833_layer_call_and_return_conditional_losses_5028542
E__inference_lstm_833_layer_call_and_return_conditional_losses_5028685Н
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
Н2м
+__inference_dense_277_layer_call_fn_5028694б
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
­2ь
F__inference_dense_277_layer_call_and_return_conditional_losses_5028704б
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
%__inference_signature_wrapper_5025929lstm_831_input"ћ
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
/__inference_lstm_cell_831_layer_call_fn_5028721
/__inference_lstm_cell_831_layer_call_fn_5028738Й
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
J__inference_lstm_cell_831_layer_call_and_return_conditional_losses_5028770
J__inference_lstm_cell_831_layer_call_and_return_conditional_losses_5028802Й
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
/__inference_lstm_cell_832_layer_call_fn_5028819
/__inference_lstm_cell_832_layer_call_fn_5028836Й
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
J__inference_lstm_cell_832_layer_call_and_return_conditional_losses_5028868
J__inference_lstm_cell_832_layer_call_and_return_conditional_losses_5028900Й
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
/__inference_lstm_cell_833_layer_call_fn_5028917
/__inference_lstm_cell_833_layer_call_fn_5028934Й
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
J__inference_lstm_cell_833_layer_call_and_return_conditional_losses_5028966
J__inference_lstm_cell_833_layer_call_and_return_conditional_losses_5028998Й
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
 е
"__inference__wrapped_model_5023669Ђ()*+,-./0;б8
1б.
,і)
lstm_831_input         
ф "5ф2
0
	dense_277#і 
	dense_277         д
F__inference_dense_277_layer_call_and_return_conditional_losses_5028704\/б,
%б"
 і
inputs         

ф "%б"
і
0         
џ ~
+__inference_dense_277_layer_call_fn_5028694O/б,
%б"
 і
inputs         

ф "і         н
E__inference_lstm_831_layer_call_and_return_conditional_losses_5027024і()*OбL
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
E__inference_lstm_831_layer_call_and_return_conditional_losses_5027167і()*OбL
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
E__inference_lstm_831_layer_call_and_return_conditional_losses_5027310q()*?б<
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
E__inference_lstm_831_layer_call_and_return_conditional_losses_5027453q()*?б<
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
*__inference_lstm_831_layer_call_fn_5026848}()*OбL
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
*__inference_lstm_831_layer_call_fn_5026859}()*OбL
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
*__inference_lstm_831_layer_call_fn_5026870d()*?б<
5б2
$і!
inputs         

 
p 

 
ф "і         dњ
*__inference_lstm_831_layer_call_fn_5026881d()*?б<
5б2
$і!
inputs         

 
p

 
ф "і         dн
E__inference_lstm_832_layer_call_and_return_conditional_losses_5027640і+,-OбL
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
E__inference_lstm_832_layer_call_and_return_conditional_losses_5027783і+,-OбL
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
E__inference_lstm_832_layer_call_and_return_conditional_losses_5027926q+,-?б<
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
E__inference_lstm_832_layer_call_and_return_conditional_losses_5028069q+,-?б<
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
*__inference_lstm_832_layer_call_fn_5027464}+,-OбL
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
*__inference_lstm_832_layer_call_fn_5027475}+,-OбL
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
*__inference_lstm_832_layer_call_fn_5027486d+,-?б<
5б2
$і!
inputs         d

 
p 

 
ф "і         2њ
*__inference_lstm_832_layer_call_fn_5027497d+,-?б<
5б2
$і!
inputs         d

 
p

 
ф "і         2к
E__inference_lstm_833_layer_call_and_return_conditional_losses_5028256}./0OбL
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
E__inference_lstm_833_layer_call_and_return_conditional_losses_5028399}./0OбL
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
E__inference_lstm_833_layer_call_and_return_conditional_losses_5028542m./0?б<
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
E__inference_lstm_833_layer_call_and_return_conditional_losses_5028685m./0?б<
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
*__inference_lstm_833_layer_call_fn_5028080p./0OбL
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
*__inference_lstm_833_layer_call_fn_5028091p./0OбL
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
*__inference_lstm_833_layer_call_fn_5028102`./0?б<
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
*__inference_lstm_833_layer_call_fn_5028113`./0?б<
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
J__inference_lstm_cell_831_layer_call_and_return_conditional_losses_5028770§()*ђб}
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
J__inference_lstm_cell_831_layer_call_and_return_conditional_losses_5028802§()*ђб}
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
/__inference_lstm_cell_831_layer_call_fn_5028721ь()*ђб}
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
/__inference_lstm_cell_831_layer_call_fn_5028738ь()*ђб}
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
J__inference_lstm_cell_832_layer_call_and_return_conditional_losses_5028868§+,-ђб}
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
J__inference_lstm_cell_832_layer_call_and_return_conditional_losses_5028900§+,-ђб}
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
/__inference_lstm_cell_832_layer_call_fn_5028819ь+,-ђб}
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
/__inference_lstm_cell_832_layer_call_fn_5028836ь+,-ђб}
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
J__inference_lstm_cell_833_layer_call_and_return_conditional_losses_5028966§./0ђб}
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
J__inference_lstm_cell_833_layer_call_and_return_conditional_losses_5028998§./0ђб}
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
/__inference_lstm_cell_833_layer_call_fn_5028917ь./0ђб}
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
/__inference_lstm_cell_833_layer_call_fn_5028934ь./0ђб}
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
╚
K__inference_sequential_277_layer_call_and_return_conditional_losses_5025864y()*+,-./0Cб@
9б6
,і)
lstm_831_input         
p 

 
ф "%б"
і
0         
џ ╚
K__inference_sequential_277_layer_call_and_return_conditional_losses_5025894y()*+,-./0Cб@
9б6
,і)
lstm_831_input         
p

 
ф "%б"
і
0         
џ └
K__inference_sequential_277_layer_call_and_return_conditional_losses_5026410q()*+,-./0;б8
1б.
$і!
inputs         
p 

 
ф "%б"
і
0         
џ └
K__inference_sequential_277_layer_call_and_return_conditional_losses_5026837q()*+,-./0;б8
1б.
$і!
inputs         
p

 
ф "%б"
і
0         
џ а
0__inference_sequential_277_layer_call_fn_5025218l()*+,-./0Cб@
9б6
,і)
lstm_831_input         
p 

 
ф "і         а
0__inference_sequential_277_layer_call_fn_5025834l()*+,-./0Cб@
9б6
,і)
lstm_831_input         
p

 
ф "і         ў
0__inference_sequential_277_layer_call_fn_5025956d()*+,-./0;б8
1б.
$і!
inputs         
p 

 
ф "і         ў
0__inference_sequential_277_layer_call_fn_5025983d()*+,-./0;б8
1б.
$і!
inputs         
p

 
ф "і         й
%__inference_signature_wrapper_5025929Њ()*+,-./0MбJ
б 
Cф@
>
lstm_831_input,і)
lstm_831_input         "5ф2
0
	dense_277#і 
	dense_277         
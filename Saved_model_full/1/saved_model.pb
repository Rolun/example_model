ÝĆ
ö-Č-
:
Add
x"T
y"T
z"T"
Ttype:
2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	
î
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
°
BatchDatasetV2
input_dataset

batch_size	
drop_remainder


handle"
parallel_copybool( "
output_types
list(type)(0" 
output_shapeslist(shape)(0
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

Ŕ
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

ż
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

h
Equal
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
ˇ
FlatMapDataset
input_dataset
other_arguments2
Targuments

handle"	
ffunc"

Targuments
list(type)("
output_types
list(type)(0" 
output_shapeslist(shape)(0
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype

IteratorGetNext
iterator

components2output_types"
output_types
list(type)(0" 
output_shapeslist(shape)(0
C
IteratorToStringHandle
resource_handle
string_handle


IteratorV2

handle"
shared_namestring"
	containerstring"
output_types
list(type)(0" 
output_shapeslist(shape)(0
,
MakeIterator
dataset
iterator
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp

OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint˙˙˙˙˙˙˙˙˙"	
Ttype"
TItype0	:
2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
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
=
SigmoidGrad
y"T
dy"T
z"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
TensorDataset

components2Toutput_types

handle"
Toutput_types
list(type)(0" 
output_shapeslist(shape)(0
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 


ZipDataset
input_datasets*N

handle"
output_types
list(type)(0" 
output_shapeslist(shape)(0"
Nint(0"serve*1.15.02v1.15.0-rc3-22-g590d6eef7eűů
_
normalize_element/component_0Const*
value	B : *
dtype0*
_output_shapes
: 

TensorDatasetTensorDatasetnormalize_element/component_0*
output_shapes
: *
Toutput_types
2*
_output_shapes
: 
Â
FlatMapDatasetFlatMapDatasetTensorDataset*
output_types
2*

Targuments
 *
output_shapes	
:*4
f/R-
+__inference_Dataset_flat_map_flat_map_fn_22*
_output_shapes
: 
a
normalize_element_1/component_0Const*
value	B : *
dtype0*
_output_shapes
: 

TensorDataset_1TensorDatasetnormalize_element_1/component_0*
output_shapes
: *
Toutput_types
2*
_output_shapes
: 
Á
FlatMapDataset_1FlatMapDatasetTensorDataset_1*
output_types
2*

Targuments
 *
output_shapes
: *4
f/R-
+__inference_Dataset_flat_map_flat_map_fn_45*
_output_shapes
: 


ZipDataset
ZipDatasetFlatMapDatasetFlatMapDataset_1*
output_types
2*
output_shapes
	:: *
N*
_output_shapes
: 
a
normalize_element_2/component_0Const*
value	B : *
dtype0*
_output_shapes
: 

TensorDataset_2TensorDatasetnormalize_element_2/component_0*
output_shapes
: *
Toutput_types
2*
_output_shapes
: 
Ć
FlatMapDataset_2FlatMapDatasetTensorDataset_2*
output_types
2*

Targuments
 *
output_shapes	
:*4
f/R-
+__inference_Dataset_flat_map_flat_map_fn_69*
_output_shapes
: 
a
normalize_element_3/component_0Const*
value	B : *
dtype0*
_output_shapes
: 

TensorDataset_3TensorDatasetnormalize_element_3/component_0*
output_shapes
: *
Toutput_types
2*
_output_shapes
: 
Á
FlatMapDataset_3FlatMapDatasetTensorDataset_3*
output_types
2*

Targuments
 *
output_shapes
: *4
f/R-
+__inference_Dataset_flat_map_flat_map_fn_92*
_output_shapes
: 

ZipDataset_1
ZipDatasetFlatMapDataset_2FlatMapDataset_3*
output_types
2*
output_shapes
	:: *
N*
_output_shapes
: 
a
normalize_element_4/component_0Const*
value	B : *
dtype0*
_output_shapes
: 

TensorDataset_4TensorDatasetnormalize_element_4/component_0*
output_shapes
: *
Toutput_types
2*
_output_shapes
: 
Ç
FlatMapDataset_4FlatMapDatasetTensorDataset_4*
output_types
2*

Targuments
 *
output_shapes	
:*5
f0R.
,__inference_Dataset_flat_map_flat_map_fn_116*
_output_shapes
: 
a
normalize_element_5/component_0Const*
value	B : *
dtype0*
_output_shapes
: 

TensorDataset_5TensorDatasetnormalize_element_5/component_0*
output_shapes
: *
Toutput_types
2*
_output_shapes
: 
Â
FlatMapDataset_5FlatMapDatasetTensorDataset_5*
output_types
2*

Targuments
 *
output_shapes
: *5
f0R.
,__inference_Dataset_flat_map_flat_map_fn_139*
_output_shapes
: 

ZipDataset_2
ZipDatasetFlatMapDataset_4FlatMapDataset_5*
output_types
2*
output_shapes
	:: *
N*
_output_shapes
: 
L

batch_sizeConst*
value	B	 R
*
dtype0	*
_output_shapes
: 
P
drop_remainderConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
Ĺ
BatchDatasetV2BatchDatasetV2
ZipDataset
batch_sizedrop_remainder*
output_types
2*
parallel_copy( *6
output_shapes%
#:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
_output_shapes
: 
N
batch_size_1Const*
value	B	 R
*
dtype0	*
_output_shapes
: 
R
drop_remainder_1Const*
value	B
 Z *
dtype0
*
_output_shapes
: 
Í
BatchDatasetV2_1BatchDatasetV2ZipDataset_1batch_size_1drop_remainder_1*
output_types
2*
parallel_copy( *6
output_shapes%
#:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
_output_shapes
: 
N
batch_size_2Const*
value	B	 R*
dtype0	*
_output_shapes
: 
R
drop_remainder_2Const*
value	B
 Z *
dtype0
*
_output_shapes
: 
Í
BatchDatasetV2_2BatchDatasetV2ZipDataset_2batch_size_2drop_remainder_2*
output_types
2*
parallel_copy( *6
output_shapes%
#:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
_output_shapes
: 
G
ConstConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
s
1TrainNormal_Normal_1/train/is_train/initial_valueConst*
value	B
 Z *
dtype0
*
_output_shapes
: 

#TrainNormal_Normal_1/train/is_train
VariableV2*
shape: *
shared_name *
dtype0
*
_output_shapes
: *
	container 

*TrainNormal_Normal_1/train/is_train/AssignAssign#TrainNormal_Normal_1/train/is_train1TrainNormal_Normal_1/train/is_train/initial_value*
use_locking(*
T0
*6
_class,
*(loc:@TrainNormal_Normal_1/train/is_train*
validate_shape(*
_output_shapes
: 
˛
(TrainNormal_Normal_1/train/is_train/readIdentity#TrainNormal_Normal_1/train/is_train*
T0
*6
_class,
*(loc:@TrainNormal_Normal_1/train/is_train*
_output_shapes
: 
¤

IteratorV2
IteratorV2*
output_types
2*
shared_name *6
output_shapes%
#:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
_output_shapes
: *
	container 
T
IteratorToStringHandleIteratorToStringHandle
IteratorV2*
_output_shapes
: 
[
make_initializerMakeIteratorBatchDatasetV2
IteratorV2*
_class
loc:@IteratorV2
N
Assign/valueConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
Ĺ
AssignAssign#TrainNormal_Normal_1/train/is_trainAssign/value*
use_locking( *
T0
*6
_class,
*(loc:@TrainNormal_Normal_1/train/is_train*
validate_shape(*
_output_shapes
: 
 
group_deps/NoOpNoOp^Assign
,
group_deps/NoOp_1NoOp^make_initializer
8

group_depsNoOp^group_deps/NoOp^group_deps/NoOp_1
_
make_initializer_1MakeIteratorBatchDatasetV2_1
IteratorV2*
_class
loc:@IteratorV2
P
Assign_1/valueConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
É
Assign_1Assign#TrainNormal_Normal_1/train/is_trainAssign_1/value*
use_locking( *
T0
*6
_class,
*(loc:@TrainNormal_Normal_1/train/is_train*
validate_shape(*
_output_shapes
: 
$
group_deps_1/NoOpNoOp	^Assign_1
0
group_deps_1/NoOp_1NoOp^make_initializer_1
>
group_deps_1NoOp^group_deps_1/NoOp^group_deps_1/NoOp_1
_
make_initializer_2MakeIteratorBatchDatasetV2_2
IteratorV2*
_class
loc:@IteratorV2
P
Assign_2/valueConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
É
Assign_2Assign#TrainNormal_Normal_1/train/is_trainAssign_2/value*
use_locking( *
T0
*6
_class,
*(loc:@TrainNormal_Normal_1/train/is_train*
validate_shape(*
_output_shapes
: 
$
group_deps_2/NoOpNoOp	^Assign_2
0
group_deps_2/NoOp_1NoOp^make_initializer_2
>
group_deps_2NoOp^group_deps_2/NoOp^group_deps_2/NoOp_1
ˇ
IteratorGetNextIteratorGetNext
IteratorV2*
output_types
2*6
output_shapes%
#:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*7
_output_shapes%
#:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
f
Reshape/shapeConst*%
valueB"˙˙˙˙         *
dtype0*
_output_shapes
:
z
ReshapeReshapeIteratorGetNextReshape/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
g
transpose/permConst*%
valueB"             *
dtype0*
_output_shapes
:
v
	transpose	TransposeReshapetranspose/perm*
Tperm0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ď
ADeepLearningConv_Convolution_1/W/Initializer/random_uniform/shapeConst*%
valueB"            *3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*
dtype0*
_output_shapes
:
š
?DeepLearningConv_Convolution_1/W/Initializer/random_uniform/minConst*
valueB
 *HYž*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*
dtype0*
_output_shapes
: 
š
?DeepLearningConv_Convolution_1/W/Initializer/random_uniform/maxConst*
valueB
 *HY>*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*
dtype0*
_output_shapes
: 
Š
IDeepLearningConv_Convolution_1/W/Initializer/random_uniform/RandomUniformRandomUniformADeepLearningConv_Convolution_1/W/Initializer/random_uniform/shape*

seed *
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*
seed2 *
dtype0*&
_output_shapes
:

?DeepLearningConv_Convolution_1/W/Initializer/random_uniform/subSub?DeepLearningConv_Convolution_1/W/Initializer/random_uniform/max?DeepLearningConv_Convolution_1/W/Initializer/random_uniform/min*
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*
_output_shapes
: 
¸
?DeepLearningConv_Convolution_1/W/Initializer/random_uniform/mulMulIDeepLearningConv_Convolution_1/W/Initializer/random_uniform/RandomUniform?DeepLearningConv_Convolution_1/W/Initializer/random_uniform/sub*
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*&
_output_shapes
:
Ş
;DeepLearningConv_Convolution_1/W/Initializer/random_uniformAdd?DeepLearningConv_Convolution_1/W/Initializer/random_uniform/mul?DeepLearningConv_Convolution_1/W/Initializer/random_uniform/min*
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*&
_output_shapes
:
Ů
 DeepLearningConv_Convolution_1/W
VariableV2*
shared_name *3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*
	container *
shape:*
dtype0*&
_output_shapes
:

'DeepLearningConv_Convolution_1/W/AssignAssign DeepLearningConv_Convolution_1/W;DeepLearningConv_Convolution_1/W/Initializer/random_uniform*
use_locking(*
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*
validate_shape(*&
_output_shapes
:
š
%DeepLearningConv_Convolution_1/W/readIdentity DeepLearningConv_Convolution_1/W*
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*&
_output_shapes
:
´
2DeepLearningConv_Convolution_1/b/Initializer/zerosConst*
valueB*    *3
_class)
'%loc:@DeepLearningConv_Convolution_1/b*
dtype0*
_output_shapes
:
Á
 DeepLearningConv_Convolution_1/b
VariableV2*
shared_name *3
_class)
'%loc:@DeepLearningConv_Convolution_1/b*
	container *
shape:*
dtype0*
_output_shapes
:

'DeepLearningConv_Convolution_1/b/AssignAssign DeepLearningConv_Convolution_1/b2DeepLearningConv_Convolution_1/b/Initializer/zeros*
use_locking(*
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/b*
validate_shape(*
_output_shapes
:
­
%DeepLearningConv_Convolution_1/b/readIdentity DeepLearningConv_Convolution_1/b*
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/b*
_output_shapes
:
˘
%DeepLearningConv_Convolution_1/Conv2DConv2D	transpose%DeepLearningConv_Convolution_1/W/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
ą
"DeepLearningConv_Convolution_1/AddAdd%DeepLearningConv_Convolution_1/Conv2D%DeepLearningConv_Convolution_1/b/read*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙

&DeepLearningConv_Convolution_1/SigmoidSigmoid"DeepLearningConv_Convolution_1/Add*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
CastCastIteratorGetNext:1*

SrcT0*
Truncate( *#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
U
one_hot/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
V
one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
O
one_hot/depthConst*
value	B :
*
dtype0*
_output_shapes
: 

one_hotOneHotCastone_hot/depthone_hot/on_valueone_hot/off_value*
T0*
axis˙˙˙˙˙˙˙˙˙*
TI0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


7DeepLearningFC_Fully_Connected_1/truncated_normal/shapeConst*
valueB"   
   *
dtype0*
_output_shapes
:
{
6DeepLearningFC_Fully_Connected_1/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
}
8DeepLearningFC_Fully_Connected_1/truncated_normal/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 
Ý
ADeepLearningFC_Fully_Connected_1/truncated_normal/TruncatedNormalTruncatedNormal7DeepLearningFC_Fully_Connected_1/truncated_normal/shape*

seed *
T0*
dtype0*
_output_shapes
:	 
*
seed2 
ă
5DeepLearningFC_Fully_Connected_1/truncated_normal/mulMulADeepLearningFC_Fully_Connected_1/truncated_normal/TruncatedNormal8DeepLearningFC_Fully_Connected_1/truncated_normal/stddev*
T0*
_output_shapes
:	 

Ń
1DeepLearningFC_Fully_Connected_1/truncated_normalAdd5DeepLearningFC_Fully_Connected_1/truncated_normal/mul6DeepLearningFC_Fully_Connected_1/truncated_normal/mean*
T0*
_output_shapes
:	 


"DeepLearningFC_Fully_Connected_1/W
VariableV2*
shape:	 
*
shared_name *
dtype0*
_output_shapes
:	 
*
	container 

)DeepLearningFC_Fully_Connected_1/W/AssignAssign"DeepLearningFC_Fully_Connected_1/W1DeepLearningFC_Fully_Connected_1/truncated_normal*
use_locking(*
T0*5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/W*
validate_shape(*
_output_shapes
:	 

¸
'DeepLearningFC_Fully_Connected_1/W/readIdentity"DeepLearningFC_Fully_Connected_1/W*
T0*5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/W*
_output_shapes
:	 

s
&DeepLearningFC_Fully_Connected_1/ConstConst*
valueB
*ÍĚĚ=*
dtype0*
_output_shapes
:


"DeepLearningFC_Fully_Connected_1/b
VariableV2*
shape:
*
shared_name *
dtype0*
_output_shapes
:
*
	container 

)DeepLearningFC_Fully_Connected_1/b/AssignAssign"DeepLearningFC_Fully_Connected_1/b&DeepLearningFC_Fully_Connected_1/Const*
use_locking(*
T0*5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/b*
validate_shape(*
_output_shapes
:

ł
'DeepLearningFC_Fully_Connected_1/b/readIdentity"DeepLearningFC_Fully_Connected_1/b*
T0*5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/b*
_output_shapes
:


.DeepLearningFC_Fully_Connected_1/Reshape/shapeConst*
valueB"˙˙˙˙   *
dtype0*
_output_shapes
:
Ě
(DeepLearningFC_Fully_Connected_1/ReshapeReshape&DeepLearningConv_Convolution_1/Sigmoid.DeepLearningFC_Fully_Connected_1/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ü
'DeepLearningFC_Fully_Connected_1/MatMulMatMul(DeepLearningFC_Fully_Connected_1/Reshape'DeepLearningFC_Fully_Connected_1/W/read*
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
transpose_a( 
ą
$DeepLearningFC_Fully_Connected_1/addAddV2'DeepLearningFC_Fully_Connected_1/MatMul'DeepLearningFC_Fully_Connected_1/b/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


(DeepLearningFC_Fully_Connected_1/SigmoidSigmoid$DeepLearningFC_Fully_Connected_1/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

p
PlaceholderPlaceholder*
shape:˙˙˙˙˙˙˙˙˙*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
Placeholder_1Placeholder*
shape:˙˙˙˙˙˙˙˙˙*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
Reshape_1/shapeConst*%
valueB"˙˙˙˙         *
dtype0*
_output_shapes
:
z
	Reshape_1ReshapePlaceholderReshape_1/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
transpose_1/permConst*%
valueB"             *
dtype0*
_output_shapes
:
|
transpose_1	Transpose	Reshape_1transpose_1/perm*
Tperm0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ś
'DeepLearningConv_Convolution_1_1/Conv2DConv2Dtranspose_1%DeepLearningConv_Convolution_1/W/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
ľ
$DeepLearningConv_Convolution_1_1/AddAdd'DeepLearningConv_Convolution_1_1/Conv2D%DeepLearningConv_Convolution_1/b/read*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙

(DeepLearningConv_Convolution_1_1/SigmoidSigmoid$DeepLearningConv_Convolution_1_1/Add*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
Cast_1CastPlaceholder_1*

SrcT0*
Truncate( *#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
W
one_hot_1/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
X
one_hot_1/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Q
one_hot_1/depthConst*
value	B :
*
dtype0*
_output_shapes
: 
Ś
	one_hot_1OneHotCast_1one_hot_1/depthone_hot_1/on_valueone_hot_1/off_value*
T0*
axis˙˙˙˙˙˙˙˙˙*
TI0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


9DeepLearningFC_Fully_Connected_1_1/truncated_normal/shapeConst*
valueB"   
   *
dtype0*
_output_shapes
:
}
8DeepLearningFC_Fully_Connected_1_1/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 

:DeepLearningFC_Fully_Connected_1_1/truncated_normal/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 
á
CDeepLearningFC_Fully_Connected_1_1/truncated_normal/TruncatedNormalTruncatedNormal9DeepLearningFC_Fully_Connected_1_1/truncated_normal/shape*

seed *
T0*
dtype0*
_output_shapes
:	 
*
seed2 
é
7DeepLearningFC_Fully_Connected_1_1/truncated_normal/mulMulCDeepLearningFC_Fully_Connected_1_1/truncated_normal/TruncatedNormal:DeepLearningFC_Fully_Connected_1_1/truncated_normal/stddev*
T0*
_output_shapes
:	 

×
3DeepLearningFC_Fully_Connected_1_1/truncated_normalAdd7DeepLearningFC_Fully_Connected_1_1/truncated_normal/mul8DeepLearningFC_Fully_Connected_1_1/truncated_normal/mean*
T0*
_output_shapes
:	 

u
(DeepLearningFC_Fully_Connected_1_1/ConstConst*
valueB
*ÍĚĚ=*
dtype0*
_output_shapes
:


0DeepLearningFC_Fully_Connected_1_1/Reshape/shapeConst*
valueB"˙˙˙˙   *
dtype0*
_output_shapes
:
Ň
*DeepLearningFC_Fully_Connected_1_1/ReshapeReshape(DeepLearningConv_Convolution_1_1/Sigmoid0DeepLearningFC_Fully_Connected_1_1/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ŕ
)DeepLearningFC_Fully_Connected_1_1/MatMulMatMul*DeepLearningFC_Fully_Connected_1_1/Reshape'DeepLearningFC_Fully_Connected_1/W/read*
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
transpose_a( 
ľ
&DeepLearningFC_Fully_Connected_1_1/addAddV2)DeepLearningFC_Fully_Connected_1_1/MatMul'DeepLearningFC_Fully_Connected_1/b/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


*DeepLearningFC_Fully_Connected_1_1/SigmoidSigmoid&DeepLearningFC_Fully_Connected_1_1/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

o
subSub(DeepLearningFC_Fully_Connected_1/Sigmoidone_hot*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

G
SquareSquaresub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

X
Const_1Const*
valueB"       *
dtype0*
_output_shapes
:
[
MeanMeanSquareConst_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
[
ArgMax/dimensionConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

ArgMaxArgMax(DeepLearningFC_Fully_Connected_1/SigmoidArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
ArgMax_1/dimensionConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
|
ArgMax_1ArgMaxone_hotArgMax_1/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
EqualEqualArgMaxArgMax_1*
incompatible_shape_error(*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
b
Cast_2CastEqual*

SrcT0
*
Truncate( *#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
Q
Const_2Const*
valueB: *
dtype0*
_output_shapes
:
]
Mean_1MeanCast_2Const_2*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
r
!gradients/Mean_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:

gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
_
gradients/Mean_grad/ShapeShapeSquare*
T0*
out_type0*
_output_shapes
:

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*

Tmultiples0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

a
gradients/Mean_grad/Shape_1ShapeSquare*
T0*
out_type0*
_output_shapes
:
^
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
c
gradients/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
e
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
_
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
~
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

~
gradients/Square_grad/ConstConst^gradients/Mean_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
t
gradients/Square_grad/MulMulsubgradients/Square_grad/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


gradients/Square_grad/Mul_1Mulgradients/Mean_grad/truedivgradients/Square_grad/Mul*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


gradients/sub_grad/ShapeShape(DeepLearningFC_Fully_Connected_1/Sigmoid*
T0*
out_type0*
_output_shapes
:
a
gradients/sub_grad/Shape_1Shapeone_hot*
T0*
out_type0*
_output_shapes
:
´
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
¤
gradients/sub_grad/SumSumgradients/Square_grad/Mul_1(gradients/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

l
gradients/sub_grad/NegNeggradients/Square_grad/Mul_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ł
gradients/sub_grad/Sum_1Sumgradients/sub_grad/Neg*gradients/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Sum_1gradients/sub_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ę
Cgradients/DeepLearningFC_Fully_Connected_1/Sigmoid_grad/SigmoidGradSigmoidGrad(DeepLearningFC_Fully_Connected_1/Sigmoidgradients/sub_grad/Reshape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 
9gradients/DeepLearningFC_Fully_Connected_1/add_grad/ShapeShape'DeepLearningFC_Fully_Connected_1/MatMul*
T0*
out_type0*
_output_shapes
:
˘
;gradients/DeepLearningFC_Fully_Connected_1/add_grad/Shape_1Shape'DeepLearningFC_Fully_Connected_1/b/read*
T0*
out_type0*
_output_shapes
:

Igradients/DeepLearningFC_Fully_Connected_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs9gradients/DeepLearningFC_Fully_Connected_1/add_grad/Shape;gradients/DeepLearningFC_Fully_Connected_1/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

7gradients/DeepLearningFC_Fully_Connected_1/add_grad/SumSumCgradients/DeepLearningFC_Fully_Connected_1/Sigmoid_grad/SigmoidGradIgradients/DeepLearningFC_Fully_Connected_1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ú
;gradients/DeepLearningFC_Fully_Connected_1/add_grad/ReshapeReshape7gradients/DeepLearningFC_Fully_Connected_1/add_grad/Sum9gradients/DeepLearningFC_Fully_Connected_1/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


9gradients/DeepLearningFC_Fully_Connected_1/add_grad/Sum_1SumCgradients/DeepLearningFC_Fully_Connected_1/Sigmoid_grad/SigmoidGradKgradients/DeepLearningFC_Fully_Connected_1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ó
=gradients/DeepLearningFC_Fully_Connected_1/add_grad/Reshape_1Reshape9gradients/DeepLearningFC_Fully_Connected_1/add_grad/Sum_1;gradients/DeepLearningFC_Fully_Connected_1/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:


=gradients/DeepLearningFC_Fully_Connected_1/MatMul_grad/MatMulMatMul;gradients/DeepLearningFC_Fully_Connected_1/add_grad/Reshape'DeepLearningFC_Fully_Connected_1/W/read*
transpose_b(*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( 

?gradients/DeepLearningFC_Fully_Connected_1/MatMul_grad/MatMul_1MatMul(DeepLearningFC_Fully_Connected_1/Reshape;gradients/DeepLearningFC_Fully_Connected_1/add_grad/Reshape*
transpose_b( *
T0*
_output_shapes
:	 
*
transpose_a(
Ł
=gradients/DeepLearningFC_Fully_Connected_1/Reshape_grad/ShapeShape&DeepLearningConv_Convolution_1/Sigmoid*
T0*
out_type0*
_output_shapes
:

?gradients/DeepLearningFC_Fully_Connected_1/Reshape_grad/ReshapeReshape=gradients/DeepLearningFC_Fully_Connected_1/MatMul_grad/MatMul=gradients/DeepLearningFC_Fully_Connected_1/Reshape_grad/Shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
ó
Agradients/DeepLearningConv_Convolution_1/Sigmoid_grad/SigmoidGradSigmoidGrad&DeepLearningConv_Convolution_1/Sigmoid?gradients/DeepLearningFC_Fully_Connected_1/Reshape_grad/Reshape*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙

7gradients/DeepLearningConv_Convolution_1/Add_grad/ShapeShape%DeepLearningConv_Convolution_1/Conv2D*
T0*
out_type0*
_output_shapes
:

9gradients/DeepLearningConv_Convolution_1/Add_grad/Shape_1Shape%DeepLearningConv_Convolution_1/b/read*
T0*
out_type0*
_output_shapes
:

Ggradients/DeepLearningConv_Convolution_1/Add_grad/BroadcastGradientArgsBroadcastGradientArgs7gradients/DeepLearningConv_Convolution_1/Add_grad/Shape9gradients/DeepLearningConv_Convolution_1/Add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

5gradients/DeepLearningConv_Convolution_1/Add_grad/SumSumAgradients/DeepLearningConv_Convolution_1/Sigmoid_grad/SigmoidGradGgradients/DeepLearningConv_Convolution_1/Add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ü
9gradients/DeepLearningConv_Convolution_1/Add_grad/ReshapeReshape5gradients/DeepLearningConv_Convolution_1/Add_grad/Sum7gradients/DeepLearningConv_Convolution_1/Add_grad/Shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙

7gradients/DeepLearningConv_Convolution_1/Add_grad/Sum_1SumAgradients/DeepLearningConv_Convolution_1/Sigmoid_grad/SigmoidGradIgradients/DeepLearningConv_Convolution_1/Add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
í
;gradients/DeepLearningConv_Convolution_1/Add_grad/Reshape_1Reshape7gradients/DeepLearningConv_Convolution_1/Add_grad/Sum_19gradients/DeepLearningConv_Convolution_1/Add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
ť
;gradients/DeepLearningConv_Convolution_1/Conv2D_grad/ShapeNShapeN	transpose%DeepLearningConv_Convolution_1/W/read*
T0*
out_type0*
N* 
_output_shapes
::
ż
Hgradients/DeepLearningConv_Convolution_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput;gradients/DeepLearningConv_Convolution_1/Conv2D_grad/ShapeN%DeepLearningConv_Convolution_1/W/read9gradients/DeepLearningConv_Convolution_1/Add_grad/Reshape*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙

Igradients/DeepLearningConv_Convolution_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter	transpose=gradients/DeepLearningConv_Convolution_1/Conv2D_grad/ShapeN:19gradients/DeepLearningConv_Convolution_1/Add_grad/Reshape*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:
T
gradients_1/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
Z
gradients_1/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
gradients_1/FillFillgradients_1/Shapegradients_1/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
t
#gradients_1/Mean_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:

gradients_1/Mean_grad/ReshapeReshapegradients_1/Fill#gradients_1/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
a
gradients_1/Mean_grad/ShapeShapeSquare*
T0*
out_type0*
_output_shapes
:
˘
gradients_1/Mean_grad/TileTilegradients_1/Mean_grad/Reshapegradients_1/Mean_grad/Shape*

Tmultiples0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

c
gradients_1/Mean_grad/Shape_1ShapeSquare*
T0*
out_type0*
_output_shapes
:
`
gradients_1/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
e
gradients_1/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:

gradients_1/Mean_grad/ProdProdgradients_1/Mean_grad/Shape_1gradients_1/Mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
g
gradients_1/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
 
gradients_1/Mean_grad/Prod_1Prodgradients_1/Mean_grad/Shape_2gradients_1/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
a
gradients_1/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients_1/Mean_grad/MaximumMaximumgradients_1/Mean_grad/Prod_1gradients_1/Mean_grad/Maximum/y*
T0*
_output_shapes
: 

gradients_1/Mean_grad/floordivFloorDivgradients_1/Mean_grad/Prodgradients_1/Mean_grad/Maximum*
T0*
_output_shapes
: 

gradients_1/Mean_grad/CastCastgradients_1/Mean_grad/floordiv*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0

gradients_1/Mean_grad/truedivRealDivgradients_1/Mean_grad/Tilegradients_1/Mean_grad/Cast*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


gradients_1/Square_grad/ConstConst^gradients_1/Mean_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
x
gradients_1/Square_grad/MulMulsubgradients_1/Square_grad/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


gradients_1/Square_grad/Mul_1Mulgradients_1/Mean_grad/truedivgradients_1/Square_grad/Mul*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


gradients_1/sub_grad/ShapeShape(DeepLearningFC_Fully_Connected_1/Sigmoid*
T0*
out_type0*
_output_shapes
:
c
gradients_1/sub_grad/Shape_1Shapeone_hot*
T0*
out_type0*
_output_shapes
:
ş
*gradients_1/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_grad/Shapegradients_1/sub_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ş
gradients_1/sub_grad/SumSumgradients_1/Square_grad/Mul_1*gradients_1/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients_1/sub_grad/ReshapeReshapegradients_1/sub_grad/Sumgradients_1/sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

p
gradients_1/sub_grad/NegNeggradients_1/Square_grad/Mul_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Š
gradients_1/sub_grad/Sum_1Sumgradients_1/sub_grad/Neg,gradients_1/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ł
gradients_1/sub_grad/Reshape_1Reshapegradients_1/sub_grad/Sum_1gradients_1/sub_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Î
Egradients_1/DeepLearningFC_Fully_Connected_1/Sigmoid_grad/SigmoidGradSigmoidGrad(DeepLearningFC_Fully_Connected_1/Sigmoidgradients_1/sub_grad/Reshape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

˘
;gradients_1/DeepLearningFC_Fully_Connected_1/add_grad/ShapeShape'DeepLearningFC_Fully_Connected_1/MatMul*
T0*
out_type0*
_output_shapes
:
¤
=gradients_1/DeepLearningFC_Fully_Connected_1/add_grad/Shape_1Shape'DeepLearningFC_Fully_Connected_1/b/read*
T0*
out_type0*
_output_shapes
:

Kgradients_1/DeepLearningFC_Fully_Connected_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs;gradients_1/DeepLearningFC_Fully_Connected_1/add_grad/Shape=gradients_1/DeepLearningFC_Fully_Connected_1/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

9gradients_1/DeepLearningFC_Fully_Connected_1/add_grad/SumSumEgradients_1/DeepLearningFC_Fully_Connected_1/Sigmoid_grad/SigmoidGradKgradients_1/DeepLearningFC_Fully_Connected_1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

=gradients_1/DeepLearningFC_Fully_Connected_1/add_grad/ReshapeReshape9gradients_1/DeepLearningFC_Fully_Connected_1/add_grad/Sum;gradients_1/DeepLearningFC_Fully_Connected_1/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


;gradients_1/DeepLearningFC_Fully_Connected_1/add_grad/Sum_1SumEgradients_1/DeepLearningFC_Fully_Connected_1/Sigmoid_grad/SigmoidGradMgradients_1/DeepLearningFC_Fully_Connected_1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ů
?gradients_1/DeepLearningFC_Fully_Connected_1/add_grad/Reshape_1Reshape;gradients_1/DeepLearningFC_Fully_Connected_1/add_grad/Sum_1=gradients_1/DeepLearningFC_Fully_Connected_1/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:


?gradients_1/DeepLearningFC_Fully_Connected_1/MatMul_grad/MatMulMatMul=gradients_1/DeepLearningFC_Fully_Connected_1/add_grad/Reshape'DeepLearningFC_Fully_Connected_1/W/read*
transpose_b(*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( 

Agradients_1/DeepLearningFC_Fully_Connected_1/MatMul_grad/MatMul_1MatMul(DeepLearningFC_Fully_Connected_1/Reshape=gradients_1/DeepLearningFC_Fully_Connected_1/add_grad/Reshape*
transpose_b( *
T0*
_output_shapes
:	 
*
transpose_a(
Ľ
?gradients_1/DeepLearningFC_Fully_Connected_1/Reshape_grad/ShapeShape&DeepLearningConv_Convolution_1/Sigmoid*
T0*
out_type0*
_output_shapes
:

Agradients_1/DeepLearningFC_Fully_Connected_1/Reshape_grad/ReshapeReshape?gradients_1/DeepLearningFC_Fully_Connected_1/MatMul_grad/MatMul?gradients_1/DeepLearningFC_Fully_Connected_1/Reshape_grad/Shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
÷
Cgradients_1/DeepLearningConv_Convolution_1/Sigmoid_grad/SigmoidGradSigmoidGrad&DeepLearningConv_Convolution_1/SigmoidAgradients_1/DeepLearningFC_Fully_Connected_1/Reshape_grad/Reshape*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙

9gradients_1/DeepLearningConv_Convolution_1/Add_grad/ShapeShape%DeepLearningConv_Convolution_1/Conv2D*
T0*
out_type0*
_output_shapes
:
 
;gradients_1/DeepLearningConv_Convolution_1/Add_grad/Shape_1Shape%DeepLearningConv_Convolution_1/b/read*
T0*
out_type0*
_output_shapes
:

Igradients_1/DeepLearningConv_Convolution_1/Add_grad/BroadcastGradientArgsBroadcastGradientArgs9gradients_1/DeepLearningConv_Convolution_1/Add_grad/Shape;gradients_1/DeepLearningConv_Convolution_1/Add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

7gradients_1/DeepLearningConv_Convolution_1/Add_grad/SumSumCgradients_1/DeepLearningConv_Convolution_1/Sigmoid_grad/SigmoidGradIgradients_1/DeepLearningConv_Convolution_1/Add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

;gradients_1/DeepLearningConv_Convolution_1/Add_grad/ReshapeReshape7gradients_1/DeepLearningConv_Convolution_1/Add_grad/Sum9gradients_1/DeepLearningConv_Convolution_1/Add_grad/Shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙

9gradients_1/DeepLearningConv_Convolution_1/Add_grad/Sum_1SumCgradients_1/DeepLearningConv_Convolution_1/Sigmoid_grad/SigmoidGradKgradients_1/DeepLearningConv_Convolution_1/Add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ó
=gradients_1/DeepLearningConv_Convolution_1/Add_grad/Reshape_1Reshape9gradients_1/DeepLearningConv_Convolution_1/Add_grad/Sum_1;gradients_1/DeepLearningConv_Convolution_1/Add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
T
gradients_2/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
Z
gradients_2/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
gradients_2/FillFillgradients_2/Shapegradients_2/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
t
#gradients_2/Mean_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:

gradients_2/Mean_grad/ReshapeReshapegradients_2/Fill#gradients_2/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
a
gradients_2/Mean_grad/ShapeShapeSquare*
T0*
out_type0*
_output_shapes
:
˘
gradients_2/Mean_grad/TileTilegradients_2/Mean_grad/Reshapegradients_2/Mean_grad/Shape*

Tmultiples0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

c
gradients_2/Mean_grad/Shape_1ShapeSquare*
T0*
out_type0*
_output_shapes
:
`
gradients_2/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
e
gradients_2/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:

gradients_2/Mean_grad/ProdProdgradients_2/Mean_grad/Shape_1gradients_2/Mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
g
gradients_2/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
 
gradients_2/Mean_grad/Prod_1Prodgradients_2/Mean_grad/Shape_2gradients_2/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
a
gradients_2/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients_2/Mean_grad/MaximumMaximumgradients_2/Mean_grad/Prod_1gradients_2/Mean_grad/Maximum/y*
T0*
_output_shapes
: 

gradients_2/Mean_grad/floordivFloorDivgradients_2/Mean_grad/Prodgradients_2/Mean_grad/Maximum*
T0*
_output_shapes
: 

gradients_2/Mean_grad/CastCastgradients_2/Mean_grad/floordiv*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0

gradients_2/Mean_grad/truedivRealDivgradients_2/Mean_grad/Tilegradients_2/Mean_grad/Cast*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


gradients_2/Square_grad/ConstConst^gradients_2/Mean_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
x
gradients_2/Square_grad/MulMulsubgradients_2/Square_grad/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


gradients_2/Square_grad/Mul_1Mulgradients_2/Mean_grad/truedivgradients_2/Square_grad/Mul*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


gradients_2/sub_grad/ShapeShape(DeepLearningFC_Fully_Connected_1/Sigmoid*
T0*
out_type0*
_output_shapes
:
c
gradients_2/sub_grad/Shape_1Shapeone_hot*
T0*
out_type0*
_output_shapes
:
ş
*gradients_2/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/sub_grad/Shapegradients_2/sub_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ş
gradients_2/sub_grad/SumSumgradients_2/Square_grad/Mul_1*gradients_2/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients_2/sub_grad/ReshapeReshapegradients_2/sub_grad/Sumgradients_2/sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

p
gradients_2/sub_grad/NegNeggradients_2/Square_grad/Mul_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Š
gradients_2/sub_grad/Sum_1Sumgradients_2/sub_grad/Neg,gradients_2/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ł
gradients_2/sub_grad/Reshape_1Reshapegradients_2/sub_grad/Sum_1gradients_2/sub_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Î
Egradients_2/DeepLearningFC_Fully_Connected_1/Sigmoid_grad/SigmoidGradSigmoidGrad(DeepLearningFC_Fully_Connected_1/Sigmoidgradients_2/sub_grad/Reshape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

˘
;gradients_2/DeepLearningFC_Fully_Connected_1/add_grad/ShapeShape'DeepLearningFC_Fully_Connected_1/MatMul*
T0*
out_type0*
_output_shapes
:
¤
=gradients_2/DeepLearningFC_Fully_Connected_1/add_grad/Shape_1Shape'DeepLearningFC_Fully_Connected_1/b/read*
T0*
out_type0*
_output_shapes
:

Kgradients_2/DeepLearningFC_Fully_Connected_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs;gradients_2/DeepLearningFC_Fully_Connected_1/add_grad/Shape=gradients_2/DeepLearningFC_Fully_Connected_1/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

9gradients_2/DeepLearningFC_Fully_Connected_1/add_grad/SumSumEgradients_2/DeepLearningFC_Fully_Connected_1/Sigmoid_grad/SigmoidGradKgradients_2/DeepLearningFC_Fully_Connected_1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

=gradients_2/DeepLearningFC_Fully_Connected_1/add_grad/ReshapeReshape9gradients_2/DeepLearningFC_Fully_Connected_1/add_grad/Sum;gradients_2/DeepLearningFC_Fully_Connected_1/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


;gradients_2/DeepLearningFC_Fully_Connected_1/add_grad/Sum_1SumEgradients_2/DeepLearningFC_Fully_Connected_1/Sigmoid_grad/SigmoidGradMgradients_2/DeepLearningFC_Fully_Connected_1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ů
?gradients_2/DeepLearningFC_Fully_Connected_1/add_grad/Reshape_1Reshape;gradients_2/DeepLearningFC_Fully_Connected_1/add_grad/Sum_1=gradients_2/DeepLearningFC_Fully_Connected_1/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:


?gradients_2/DeepLearningFC_Fully_Connected_1/MatMul_grad/MatMulMatMul=gradients_2/DeepLearningFC_Fully_Connected_1/add_grad/Reshape'DeepLearningFC_Fully_Connected_1/W/read*
transpose_b(*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( 

Agradients_2/DeepLearningFC_Fully_Connected_1/MatMul_grad/MatMul_1MatMul(DeepLearningFC_Fully_Connected_1/Reshape=gradients_2/DeepLearningFC_Fully_Connected_1/add_grad/Reshape*
transpose_b( *
T0*
_output_shapes
:	 
*
transpose_a(
T
gradients_3/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
Z
gradients_3/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
gradients_3/FillFillgradients_3/Shapegradients_3/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
t
#gradients_3/Mean_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:

gradients_3/Mean_grad/ReshapeReshapegradients_3/Fill#gradients_3/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
a
gradients_3/Mean_grad/ShapeShapeSquare*
T0*
out_type0*
_output_shapes
:
˘
gradients_3/Mean_grad/TileTilegradients_3/Mean_grad/Reshapegradients_3/Mean_grad/Shape*

Tmultiples0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

c
gradients_3/Mean_grad/Shape_1ShapeSquare*
T0*
out_type0*
_output_shapes
:
`
gradients_3/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
e
gradients_3/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:

gradients_3/Mean_grad/ProdProdgradients_3/Mean_grad/Shape_1gradients_3/Mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
g
gradients_3/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
 
gradients_3/Mean_grad/Prod_1Prodgradients_3/Mean_grad/Shape_2gradients_3/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
a
gradients_3/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients_3/Mean_grad/MaximumMaximumgradients_3/Mean_grad/Prod_1gradients_3/Mean_grad/Maximum/y*
T0*
_output_shapes
: 

gradients_3/Mean_grad/floordivFloorDivgradients_3/Mean_grad/Prodgradients_3/Mean_grad/Maximum*
T0*
_output_shapes
: 

gradients_3/Mean_grad/CastCastgradients_3/Mean_grad/floordiv*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0

gradients_3/Mean_grad/truedivRealDivgradients_3/Mean_grad/Tilegradients_3/Mean_grad/Cast*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


gradients_3/Square_grad/ConstConst^gradients_3/Mean_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
x
gradients_3/Square_grad/MulMulsubgradients_3/Square_grad/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


gradients_3/Square_grad/Mul_1Mulgradients_3/Mean_grad/truedivgradients_3/Square_grad/Mul*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


gradients_3/sub_grad/ShapeShape(DeepLearningFC_Fully_Connected_1/Sigmoid*
T0*
out_type0*
_output_shapes
:
c
gradients_3/sub_grad/Shape_1Shapeone_hot*
T0*
out_type0*
_output_shapes
:
ş
*gradients_3/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_3/sub_grad/Shapegradients_3/sub_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ş
gradients_3/sub_grad/SumSumgradients_3/Square_grad/Mul_1*gradients_3/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients_3/sub_grad/ReshapeReshapegradients_3/sub_grad/Sumgradients_3/sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

p
gradients_3/sub_grad/NegNeggradients_3/Square_grad/Mul_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Š
gradients_3/sub_grad/Sum_1Sumgradients_3/sub_grad/Neg,gradients_3/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ł
gradients_3/sub_grad/Reshape_1Reshapegradients_3/sub_grad/Sum_1gradients_3/sub_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Î
Egradients_3/DeepLearningFC_Fully_Connected_1/Sigmoid_grad/SigmoidGradSigmoidGrad(DeepLearningFC_Fully_Connected_1/Sigmoidgradients_3/sub_grad/Reshape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

˘
;gradients_3/DeepLearningFC_Fully_Connected_1/add_grad/ShapeShape'DeepLearningFC_Fully_Connected_1/MatMul*
T0*
out_type0*
_output_shapes
:
¤
=gradients_3/DeepLearningFC_Fully_Connected_1/add_grad/Shape_1Shape'DeepLearningFC_Fully_Connected_1/b/read*
T0*
out_type0*
_output_shapes
:

Kgradients_3/DeepLearningFC_Fully_Connected_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs;gradients_3/DeepLearningFC_Fully_Connected_1/add_grad/Shape=gradients_3/DeepLearningFC_Fully_Connected_1/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

9gradients_3/DeepLearningFC_Fully_Connected_1/add_grad/SumSumEgradients_3/DeepLearningFC_Fully_Connected_1/Sigmoid_grad/SigmoidGradKgradients_3/DeepLearningFC_Fully_Connected_1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

=gradients_3/DeepLearningFC_Fully_Connected_1/add_grad/ReshapeReshape9gradients_3/DeepLearningFC_Fully_Connected_1/add_grad/Sum;gradients_3/DeepLearningFC_Fully_Connected_1/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


;gradients_3/DeepLearningFC_Fully_Connected_1/add_grad/Sum_1SumEgradients_3/DeepLearningFC_Fully_Connected_1/Sigmoid_grad/SigmoidGradMgradients_3/DeepLearningFC_Fully_Connected_1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ů
?gradients_3/DeepLearningFC_Fully_Connected_1/add_grad/Reshape_1Reshape;gradients_3/DeepLearningFC_Fully_Connected_1/add_grad/Sum_1=gradients_3/DeepLearningFC_Fully_Connected_1/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

T
gradients_4/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
Z
gradients_4/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
gradients_4/FillFillgradients_4/Shapegradients_4/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
t
#gradients_4/Mean_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:

gradients_4/Mean_grad/ReshapeReshapegradients_4/Fill#gradients_4/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
a
gradients_4/Mean_grad/ShapeShapeSquare*
T0*
out_type0*
_output_shapes
:
˘
gradients_4/Mean_grad/TileTilegradients_4/Mean_grad/Reshapegradients_4/Mean_grad/Shape*

Tmultiples0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

c
gradients_4/Mean_grad/Shape_1ShapeSquare*
T0*
out_type0*
_output_shapes
:
`
gradients_4/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
e
gradients_4/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:

gradients_4/Mean_grad/ProdProdgradients_4/Mean_grad/Shape_1gradients_4/Mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
g
gradients_4/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
 
gradients_4/Mean_grad/Prod_1Prodgradients_4/Mean_grad/Shape_2gradients_4/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
a
gradients_4/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients_4/Mean_grad/MaximumMaximumgradients_4/Mean_grad/Prod_1gradients_4/Mean_grad/Maximum/y*
T0*
_output_shapes
: 

gradients_4/Mean_grad/floordivFloorDivgradients_4/Mean_grad/Prodgradients_4/Mean_grad/Maximum*
T0*
_output_shapes
: 

gradients_4/Mean_grad/CastCastgradients_4/Mean_grad/floordiv*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0

gradients_4/Mean_grad/truedivRealDivgradients_4/Mean_grad/Tilegradients_4/Mean_grad/Cast*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


gradients_4/Square_grad/ConstConst^gradients_4/Mean_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
x
gradients_4/Square_grad/MulMulsubgradients_4/Square_grad/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


gradients_4/Square_grad/Mul_1Mulgradients_4/Mean_grad/truedivgradients_4/Square_grad/Mul*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


gradients_4/sub_grad/ShapeShape(DeepLearningFC_Fully_Connected_1/Sigmoid*
T0*
out_type0*
_output_shapes
:
c
gradients_4/sub_grad/Shape_1Shapeone_hot*
T0*
out_type0*
_output_shapes
:
ş
*gradients_4/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_4/sub_grad/Shapegradients_4/sub_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ş
gradients_4/sub_grad/SumSumgradients_4/Square_grad/Mul_1*gradients_4/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients_4/sub_grad/ReshapeReshapegradients_4/sub_grad/Sumgradients_4/sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

p
gradients_4/sub_grad/NegNeggradients_4/Square_grad/Mul_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Š
gradients_4/sub_grad/Sum_1Sumgradients_4/sub_grad/Neg,gradients_4/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ł
gradients_4/sub_grad/Reshape_1Reshapegradients_4/sub_grad/Sum_1gradients_4/sub_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

m
%gradients_4/sub_grad/tuple/group_depsNoOp^gradients_4/sub_grad/Reshape^gradients_4/sub_grad/Reshape_1
â
-gradients_4/sub_grad/tuple/control_dependencyIdentitygradients_4/sub_grad/Reshape&^gradients_4/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients_4/sub_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

č
/gradients_4/sub_grad/tuple/control_dependency_1Identitygradients_4/sub_grad/Reshape_1&^gradients_4/sub_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_4/sub_grad/Reshape_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ß
Egradients_4/DeepLearningFC_Fully_Connected_1/Sigmoid_grad/SigmoidGradSigmoidGrad(DeepLearningFC_Fully_Connected_1/Sigmoid-gradients_4/sub_grad/tuple/control_dependency*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

˘
;gradients_4/DeepLearningFC_Fully_Connected_1/add_grad/ShapeShape'DeepLearningFC_Fully_Connected_1/MatMul*
T0*
out_type0*
_output_shapes
:
¤
=gradients_4/DeepLearningFC_Fully_Connected_1/add_grad/Shape_1Shape'DeepLearningFC_Fully_Connected_1/b/read*
T0*
out_type0*
_output_shapes
:

Kgradients_4/DeepLearningFC_Fully_Connected_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs;gradients_4/DeepLearningFC_Fully_Connected_1/add_grad/Shape=gradients_4/DeepLearningFC_Fully_Connected_1/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

9gradients_4/DeepLearningFC_Fully_Connected_1/add_grad/SumSumEgradients_4/DeepLearningFC_Fully_Connected_1/Sigmoid_grad/SigmoidGradKgradients_4/DeepLearningFC_Fully_Connected_1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

=gradients_4/DeepLearningFC_Fully_Connected_1/add_grad/ReshapeReshape9gradients_4/DeepLearningFC_Fully_Connected_1/add_grad/Sum;gradients_4/DeepLearningFC_Fully_Connected_1/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


;gradients_4/DeepLearningFC_Fully_Connected_1/add_grad/Sum_1SumEgradients_4/DeepLearningFC_Fully_Connected_1/Sigmoid_grad/SigmoidGradMgradients_4/DeepLearningFC_Fully_Connected_1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ů
?gradients_4/DeepLearningFC_Fully_Connected_1/add_grad/Reshape_1Reshape;gradients_4/DeepLearningFC_Fully_Connected_1/add_grad/Sum_1=gradients_4/DeepLearningFC_Fully_Connected_1/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

Đ
Fgradients_4/DeepLearningFC_Fully_Connected_1/add_grad/tuple/group_depsNoOp>^gradients_4/DeepLearningFC_Fully_Connected_1/add_grad/Reshape@^gradients_4/DeepLearningFC_Fully_Connected_1/add_grad/Reshape_1
ć
Ngradients_4/DeepLearningFC_Fully_Connected_1/add_grad/tuple/control_dependencyIdentity=gradients_4/DeepLearningFC_Fully_Connected_1/add_grad/ReshapeG^gradients_4/DeepLearningFC_Fully_Connected_1/add_grad/tuple/group_deps*
T0*P
_classF
DBloc:@gradients_4/DeepLearningFC_Fully_Connected_1/add_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ß
Pgradients_4/DeepLearningFC_Fully_Connected_1/add_grad/tuple/control_dependency_1Identity?gradients_4/DeepLearningFC_Fully_Connected_1/add_grad/Reshape_1G^gradients_4/DeepLearningFC_Fully_Connected_1/add_grad/tuple/group_deps*
T0*R
_classH
FDloc:@gradients_4/DeepLearningFC_Fully_Connected_1/add_grad/Reshape_1*
_output_shapes
:


?gradients_4/DeepLearningFC_Fully_Connected_1/MatMul_grad/MatMulMatMulNgradients_4/DeepLearningFC_Fully_Connected_1/add_grad/tuple/control_dependency'DeepLearningFC_Fully_Connected_1/W/read*
transpose_b(*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( 

Agradients_4/DeepLearningFC_Fully_Connected_1/MatMul_grad/MatMul_1MatMul(DeepLearningFC_Fully_Connected_1/ReshapeNgradients_4/DeepLearningFC_Fully_Connected_1/add_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes
:	 
*
transpose_a(
×
Igradients_4/DeepLearningFC_Fully_Connected_1/MatMul_grad/tuple/group_depsNoOp@^gradients_4/DeepLearningFC_Fully_Connected_1/MatMul_grad/MatMulB^gradients_4/DeepLearningFC_Fully_Connected_1/MatMul_grad/MatMul_1
ń
Qgradients_4/DeepLearningFC_Fully_Connected_1/MatMul_grad/tuple/control_dependencyIdentity?gradients_4/DeepLearningFC_Fully_Connected_1/MatMul_grad/MatMulJ^gradients_4/DeepLearningFC_Fully_Connected_1/MatMul_grad/tuple/group_deps*
T0*R
_classH
FDloc:@gradients_4/DeepLearningFC_Fully_Connected_1/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
î
Sgradients_4/DeepLearningFC_Fully_Connected_1/MatMul_grad/tuple/control_dependency_1IdentityAgradients_4/DeepLearningFC_Fully_Connected_1/MatMul_grad/MatMul_1J^gradients_4/DeepLearningFC_Fully_Connected_1/MatMul_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@gradients_4/DeepLearningFC_Fully_Connected_1/MatMul_grad/MatMul_1*
_output_shapes
:	 

Ľ
?gradients_4/DeepLearningFC_Fully_Connected_1/Reshape_grad/ShapeShape&DeepLearningConv_Convolution_1/Sigmoid*
T0*
out_type0*
_output_shapes
:
¨
Agradients_4/DeepLearningFC_Fully_Connected_1/Reshape_grad/ReshapeReshapeQgradients_4/DeepLearningFC_Fully_Connected_1/MatMul_grad/tuple/control_dependency?gradients_4/DeepLearningFC_Fully_Connected_1/Reshape_grad/Shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
÷
Cgradients_4/DeepLearningConv_Convolution_1/Sigmoid_grad/SigmoidGradSigmoidGrad&DeepLearningConv_Convolution_1/SigmoidAgradients_4/DeepLearningFC_Fully_Connected_1/Reshape_grad/Reshape*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙

9gradients_4/DeepLearningConv_Convolution_1/Add_grad/ShapeShape%DeepLearningConv_Convolution_1/Conv2D*
T0*
out_type0*
_output_shapes
:
 
;gradients_4/DeepLearningConv_Convolution_1/Add_grad/Shape_1Shape%DeepLearningConv_Convolution_1/b/read*
T0*
out_type0*
_output_shapes
:

Igradients_4/DeepLearningConv_Convolution_1/Add_grad/BroadcastGradientArgsBroadcastGradientArgs9gradients_4/DeepLearningConv_Convolution_1/Add_grad/Shape;gradients_4/DeepLearningConv_Convolution_1/Add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

7gradients_4/DeepLearningConv_Convolution_1/Add_grad/SumSumCgradients_4/DeepLearningConv_Convolution_1/Sigmoid_grad/SigmoidGradIgradients_4/DeepLearningConv_Convolution_1/Add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

;gradients_4/DeepLearningConv_Convolution_1/Add_grad/ReshapeReshape7gradients_4/DeepLearningConv_Convolution_1/Add_grad/Sum9gradients_4/DeepLearningConv_Convolution_1/Add_grad/Shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙

9gradients_4/DeepLearningConv_Convolution_1/Add_grad/Sum_1SumCgradients_4/DeepLearningConv_Convolution_1/Sigmoid_grad/SigmoidGradKgradients_4/DeepLearningConv_Convolution_1/Add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ó
=gradients_4/DeepLearningConv_Convolution_1/Add_grad/Reshape_1Reshape9gradients_4/DeepLearningConv_Convolution_1/Add_grad/Sum_1;gradients_4/DeepLearningConv_Convolution_1/Add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
Ę
Dgradients_4/DeepLearningConv_Convolution_1/Add_grad/tuple/group_depsNoOp<^gradients_4/DeepLearningConv_Convolution_1/Add_grad/Reshape>^gradients_4/DeepLearningConv_Convolution_1/Add_grad/Reshape_1
ć
Lgradients_4/DeepLearningConv_Convolution_1/Add_grad/tuple/control_dependencyIdentity;gradients_4/DeepLearningConv_Convolution_1/Add_grad/ReshapeE^gradients_4/DeepLearningConv_Convolution_1/Add_grad/tuple/group_deps*
T0*N
_classD
B@loc:@gradients_4/DeepLearningConv_Convolution_1/Add_grad/Reshape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
×
Ngradients_4/DeepLearningConv_Convolution_1/Add_grad/tuple/control_dependency_1Identity=gradients_4/DeepLearningConv_Convolution_1/Add_grad/Reshape_1E^gradients_4/DeepLearningConv_Convolution_1/Add_grad/tuple/group_deps*
T0*P
_classF
DBloc:@gradients_4/DeepLearningConv_Convolution_1/Add_grad/Reshape_1*
_output_shapes
:
˝
=gradients_4/DeepLearningConv_Convolution_1/Conv2D_grad/ShapeNShapeN	transpose%DeepLearningConv_Convolution_1/W/read*
T0*
out_type0*
N* 
_output_shapes
::
Ö
Jgradients_4/DeepLearningConv_Convolution_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput=gradients_4/DeepLearningConv_Convolution_1/Conv2D_grad/ShapeN%DeepLearningConv_Convolution_1/W/readLgradients_4/DeepLearningConv_Convolution_1/Add_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
ľ
Kgradients_4/DeepLearningConv_Convolution_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter	transpose?gradients_4/DeepLearningConv_Convolution_1/Conv2D_grad/ShapeN:1Lgradients_4/DeepLearningConv_Convolution_1/Add_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:
ę
Ggradients_4/DeepLearningConv_Convolution_1/Conv2D_grad/tuple/group_depsNoOpL^gradients_4/DeepLearningConv_Convolution_1/Conv2D_grad/Conv2DBackpropFilterK^gradients_4/DeepLearningConv_Convolution_1/Conv2D_grad/Conv2DBackpropInput

Ogradients_4/DeepLearningConv_Convolution_1/Conv2D_grad/tuple/control_dependencyIdentityJgradients_4/DeepLearningConv_Convolution_1/Conv2D_grad/Conv2DBackpropInputH^gradients_4/DeepLearningConv_Convolution_1/Conv2D_grad/tuple/group_deps*
T0*]
_classS
QOloc:@gradients_4/DeepLearningConv_Convolution_1/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙

Qgradients_4/DeepLearningConv_Convolution_1/Conv2D_grad/tuple/control_dependency_1IdentityKgradients_4/DeepLearningConv_Convolution_1/Conv2D_grad/Conv2DBackpropFilterH^gradients_4/DeepLearningConv_Convolution_1/Conv2D_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients_4/DeepLearningConv_Convolution_1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:

beta1_power/initial_valueConst*
valueB
 *fff?*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*
dtype0*
_output_shapes
: 
¤
beta1_power
VariableV2*
shared_name *3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*
	container *
shape: *
dtype0*
_output_shapes
: 
Ă
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*
validate_shape(*
_output_shapes
: 

beta1_power/readIdentitybeta1_power*
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*
_output_shapes
: 

beta2_power/initial_valueConst*
valueB
 *wž?*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*
dtype0*
_output_shapes
: 
¤
beta2_power
VariableV2*
shared_name *3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*
	container *
shape: *
dtype0*
_output_shapes
: 
Ă
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*
validate_shape(*
_output_shapes
: 

beta2_power/readIdentitybeta2_power*
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*
_output_shapes
: 
Ń
7DeepLearningConv_Convolution_1/W/Adam/Initializer/zerosConst*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*%
valueB*    *
dtype0*&
_output_shapes
:
Ţ
%DeepLearningConv_Convolution_1/W/Adam
VariableV2*
shared_name *3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*
	container *
shape:*
dtype0*&
_output_shapes
:
Ľ
,DeepLearningConv_Convolution_1/W/Adam/AssignAssign%DeepLearningConv_Convolution_1/W/Adam7DeepLearningConv_Convolution_1/W/Adam/Initializer/zeros*
use_locking(*
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*
validate_shape(*&
_output_shapes
:
Ă
*DeepLearningConv_Convolution_1/W/Adam/readIdentity%DeepLearningConv_Convolution_1/W/Adam*
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*&
_output_shapes
:
Ó
9DeepLearningConv_Convolution_1/W/Adam_1/Initializer/zerosConst*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*%
valueB*    *
dtype0*&
_output_shapes
:
ŕ
'DeepLearningConv_Convolution_1/W/Adam_1
VariableV2*
shared_name *3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*
	container *
shape:*
dtype0*&
_output_shapes
:
Ť
.DeepLearningConv_Convolution_1/W/Adam_1/AssignAssign'DeepLearningConv_Convolution_1/W/Adam_19DeepLearningConv_Convolution_1/W/Adam_1/Initializer/zeros*
use_locking(*
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*
validate_shape(*&
_output_shapes
:
Ç
,DeepLearningConv_Convolution_1/W/Adam_1/readIdentity'DeepLearningConv_Convolution_1/W/Adam_1*
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*&
_output_shapes
:
š
7DeepLearningConv_Convolution_1/b/Adam/Initializer/zerosConst*3
_class)
'%loc:@DeepLearningConv_Convolution_1/b*
valueB*    *
dtype0*
_output_shapes
:
Ć
%DeepLearningConv_Convolution_1/b/Adam
VariableV2*
shared_name *3
_class)
'%loc:@DeepLearningConv_Convolution_1/b*
	container *
shape:*
dtype0*
_output_shapes
:

,DeepLearningConv_Convolution_1/b/Adam/AssignAssign%DeepLearningConv_Convolution_1/b/Adam7DeepLearningConv_Convolution_1/b/Adam/Initializer/zeros*
use_locking(*
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/b*
validate_shape(*
_output_shapes
:
ˇ
*DeepLearningConv_Convolution_1/b/Adam/readIdentity%DeepLearningConv_Convolution_1/b/Adam*
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/b*
_output_shapes
:
ť
9DeepLearningConv_Convolution_1/b/Adam_1/Initializer/zerosConst*3
_class)
'%loc:@DeepLearningConv_Convolution_1/b*
valueB*    *
dtype0*
_output_shapes
:
Č
'DeepLearningConv_Convolution_1/b/Adam_1
VariableV2*
shared_name *3
_class)
'%loc:@DeepLearningConv_Convolution_1/b*
	container *
shape:*
dtype0*
_output_shapes
:

.DeepLearningConv_Convolution_1/b/Adam_1/AssignAssign'DeepLearningConv_Convolution_1/b/Adam_19DeepLearningConv_Convolution_1/b/Adam_1/Initializer/zeros*
use_locking(*
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/b*
validate_shape(*
_output_shapes
:
ť
,DeepLearningConv_Convolution_1/b/Adam_1/readIdentity'DeepLearningConv_Convolution_1/b/Adam_1*
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/b*
_output_shapes
:
Ń
IDeepLearningFC_Fully_Connected_1/W/Adam/Initializer/zeros/shape_as_tensorConst*5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/W*
valueB"   
   *
dtype0*
_output_shapes
:
ť
?DeepLearningFC_Fully_Connected_1/W/Adam/Initializer/zeros/ConstConst*5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/W*
valueB
 *    *
dtype0*
_output_shapes
: 
Ŕ
9DeepLearningFC_Fully_Connected_1/W/Adam/Initializer/zerosFillIDeepLearningFC_Fully_Connected_1/W/Adam/Initializer/zeros/shape_as_tensor?DeepLearningFC_Fully_Connected_1/W/Adam/Initializer/zeros/Const*
T0*5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/W*

index_type0*
_output_shapes
:	 

Ô
'DeepLearningFC_Fully_Connected_1/W/Adam
VariableV2*
shared_name *5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/W*
	container *
shape:	 
*
dtype0*
_output_shapes
:	 

Ś
.DeepLearningFC_Fully_Connected_1/W/Adam/AssignAssign'DeepLearningFC_Fully_Connected_1/W/Adam9DeepLearningFC_Fully_Connected_1/W/Adam/Initializer/zeros*
use_locking(*
T0*5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/W*
validate_shape(*
_output_shapes
:	 

Â
,DeepLearningFC_Fully_Connected_1/W/Adam/readIdentity'DeepLearningFC_Fully_Connected_1/W/Adam*
T0*5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/W*
_output_shapes
:	 

Ó
KDeepLearningFC_Fully_Connected_1/W/Adam_1/Initializer/zeros/shape_as_tensorConst*5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/W*
valueB"   
   *
dtype0*
_output_shapes
:
˝
ADeepLearningFC_Fully_Connected_1/W/Adam_1/Initializer/zeros/ConstConst*5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/W*
valueB
 *    *
dtype0*
_output_shapes
: 
Ć
;DeepLearningFC_Fully_Connected_1/W/Adam_1/Initializer/zerosFillKDeepLearningFC_Fully_Connected_1/W/Adam_1/Initializer/zeros/shape_as_tensorADeepLearningFC_Fully_Connected_1/W/Adam_1/Initializer/zeros/Const*
T0*5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/W*

index_type0*
_output_shapes
:	 

Ö
)DeepLearningFC_Fully_Connected_1/W/Adam_1
VariableV2*
shared_name *5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/W*
	container *
shape:	 
*
dtype0*
_output_shapes
:	 

Ź
0DeepLearningFC_Fully_Connected_1/W/Adam_1/AssignAssign)DeepLearningFC_Fully_Connected_1/W/Adam_1;DeepLearningFC_Fully_Connected_1/W/Adam_1/Initializer/zeros*
use_locking(*
T0*5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/W*
validate_shape(*
_output_shapes
:	 

Ć
.DeepLearningFC_Fully_Connected_1/W/Adam_1/readIdentity)DeepLearningFC_Fully_Connected_1/W/Adam_1*
T0*5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/W*
_output_shapes
:	 

˝
9DeepLearningFC_Fully_Connected_1/b/Adam/Initializer/zerosConst*5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/b*
valueB
*    *
dtype0*
_output_shapes
:

Ę
'DeepLearningFC_Fully_Connected_1/b/Adam
VariableV2*
shared_name *5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/b*
	container *
shape:
*
dtype0*
_output_shapes
:

Ą
.DeepLearningFC_Fully_Connected_1/b/Adam/AssignAssign'DeepLearningFC_Fully_Connected_1/b/Adam9DeepLearningFC_Fully_Connected_1/b/Adam/Initializer/zeros*
use_locking(*
T0*5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/b*
validate_shape(*
_output_shapes
:

˝
,DeepLearningFC_Fully_Connected_1/b/Adam/readIdentity'DeepLearningFC_Fully_Connected_1/b/Adam*
T0*5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/b*
_output_shapes
:

ż
;DeepLearningFC_Fully_Connected_1/b/Adam_1/Initializer/zerosConst*5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/b*
valueB
*    *
dtype0*
_output_shapes
:

Ě
)DeepLearningFC_Fully_Connected_1/b/Adam_1
VariableV2*
shared_name *5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/b*
	container *
shape:
*
dtype0*
_output_shapes
:

§
0DeepLearningFC_Fully_Connected_1/b/Adam_1/AssignAssign)DeepLearningFC_Fully_Connected_1/b/Adam_1;DeepLearningFC_Fully_Connected_1/b/Adam_1/Initializer/zeros*
use_locking(*
T0*5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/b*
validate_shape(*
_output_shapes
:

Á
.DeepLearningFC_Fully_Connected_1/b/Adam_1/readIdentity)DeepLearningFC_Fully_Connected_1/b/Adam_1*
T0*5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/b*
_output_shapes
:

W
Adam/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
valueB
 *wž?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
ó
6Adam/update_DeepLearningConv_Convolution_1/W/ApplyAdam	ApplyAdam DeepLearningConv_Convolution_1/W%DeepLearningConv_Convolution_1/W/Adam'DeepLearningConv_Convolution_1/W/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonQgradients_4/DeepLearningConv_Convolution_1/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*
use_nesterov( *&
_output_shapes
:
ä
6Adam/update_DeepLearningConv_Convolution_1/b/ApplyAdam	ApplyAdam DeepLearningConv_Convolution_1/b%DeepLearningConv_Convolution_1/b/Adam'DeepLearningConv_Convolution_1/b/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonNgradients_4/DeepLearningConv_Convolution_1/Add_grad/tuple/control_dependency_1*
use_locking( *
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/b*
use_nesterov( *
_output_shapes
:
ř
8Adam/update_DeepLearningFC_Fully_Connected_1/W/ApplyAdam	ApplyAdam"DeepLearningFC_Fully_Connected_1/W'DeepLearningFC_Fully_Connected_1/W/Adam)DeepLearningFC_Fully_Connected_1/W/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonSgradients_4/DeepLearningFC_Fully_Connected_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/W*
use_nesterov( *
_output_shapes
:	 

đ
8Adam/update_DeepLearningFC_Fully_Connected_1/b/ApplyAdam	ApplyAdam"DeepLearningFC_Fully_Connected_1/b'DeepLearningFC_Fully_Connected_1/b/Adam)DeepLearningFC_Fully_Connected_1/b/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonPgradients_4/DeepLearningFC_Fully_Connected_1/add_grad/tuple/control_dependency_1*
use_locking( *
T0*5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/b*
use_nesterov( *
_output_shapes
:

ë
Adam/mulMulbeta1_power/read
Adam/beta17^Adam/update_DeepLearningConv_Convolution_1/W/ApplyAdam7^Adam/update_DeepLearningConv_Convolution_1/b/ApplyAdam9^Adam/update_DeepLearningFC_Fully_Connected_1/W/ApplyAdam9^Adam/update_DeepLearningFC_Fully_Connected_1/b/ApplyAdam*
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*
_output_shapes
: 
Ť
Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*
validate_shape(*
_output_shapes
: 
í

Adam/mul_1Mulbeta2_power/read
Adam/beta27^Adam/update_DeepLearningConv_Convolution_1/W/ApplyAdam7^Adam/update_DeepLearningConv_Convolution_1/b/ApplyAdam9^Adam/update_DeepLearningFC_Fully_Connected_1/W/ApplyAdam9^Adam/update_DeepLearningFC_Fully_Connected_1/b/ApplyAdam*
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*
_output_shapes
: 
Ż
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*
validate_shape(*
_output_shapes
: 

AdamNoOp^Adam/Assign^Adam/Assign_17^Adam/update_DeepLearningConv_Convolution_1/W/ApplyAdam7^Adam/update_DeepLearningConv_Convolution_1/b/ApplyAdam9^Adam/update_DeepLearningFC_Fully_Connected_1/W/ApplyAdam9^Adam/update_DeepLearningFC_Fully_Connected_1/b/ApplyAdam

group_deps_3NoOp^Adam

initNoOp-^DeepLearningConv_Convolution_1/W/Adam/Assign/^DeepLearningConv_Convolution_1/W/Adam_1/Assign(^DeepLearningConv_Convolution_1/W/Assign-^DeepLearningConv_Convolution_1/b/Adam/Assign/^DeepLearningConv_Convolution_1/b/Adam_1/Assign(^DeepLearningConv_Convolution_1/b/Assign/^DeepLearningFC_Fully_Connected_1/W/Adam/Assign1^DeepLearningFC_Fully_Connected_1/W/Adam_1/Assign*^DeepLearningFC_Fully_Connected_1/W/Assign/^DeepLearningFC_Fully_Connected_1/b/Adam/Assign1^DeepLearningFC_Fully_Connected_1/b/Adam_1/Assign*^DeepLearningFC_Fully_Connected_1/b/Assign+^TrainNormal_Normal_1/train/is_train/Assign^beta1_power/Assign^beta2_power/Assign
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_ed7238c192cb443fb33fefd1f3f77ae2/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
ő
save/SaveV2/tensor_namesConst*¨
valueBB DeepLearningConv_Convolution_1/WB%DeepLearningConv_Convolution_1/W/AdamB'DeepLearningConv_Convolution_1/W/Adam_1B DeepLearningConv_Convolution_1/bB%DeepLearningConv_Convolution_1/b/AdamB'DeepLearningConv_Convolution_1/b/Adam_1B"DeepLearningFC_Fully_Connected_1/WB'DeepLearningFC_Fully_Connected_1/W/AdamB)DeepLearningFC_Fully_Connected_1/W/Adam_1B"DeepLearningFC_Fully_Connected_1/bB'DeepLearningFC_Fully_Connected_1/b/AdamB)DeepLearningFC_Fully_Connected_1/b/Adam_1B#TrainNormal_Normal_1/train/is_trainBbeta1_powerBbeta2_power*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*1
value(B&B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices DeepLearningConv_Convolution_1/W%DeepLearningConv_Convolution_1/W/Adam'DeepLearningConv_Convolution_1/W/Adam_1 DeepLearningConv_Convolution_1/b%DeepLearningConv_Convolution_1/b/Adam'DeepLearningConv_Convolution_1/b/Adam_1"DeepLearningFC_Fully_Connected_1/W'DeepLearningFC_Fully_Connected_1/W/Adam)DeepLearningFC_Fully_Connected_1/W/Adam_1"DeepLearningFC_Fully_Connected_1/b'DeepLearningFC_Fully_Connected_1/b/Adam)DeepLearningFC_Fully_Connected_1/b/Adam_1#TrainNormal_Normal_1/train/is_trainbeta1_powerbeta2_power*
dtypes
2


save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*

axis *
N*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 
ř
save/RestoreV2/tensor_namesConst*¨
valueBB DeepLearningConv_Convolution_1/WB%DeepLearningConv_Convolution_1/W/AdamB'DeepLearningConv_Convolution_1/W/Adam_1B DeepLearningConv_Convolution_1/bB%DeepLearningConv_Convolution_1/b/AdamB'DeepLearningConv_Convolution_1/b/Adam_1B"DeepLearningFC_Fully_Connected_1/WB'DeepLearningFC_Fully_Connected_1/W/AdamB)DeepLearningFC_Fully_Connected_1/W/Adam_1B"DeepLearningFC_Fully_Connected_1/bB'DeepLearningFC_Fully_Connected_1/b/AdamB)DeepLearningFC_Fully_Connected_1/b/Adam_1B#TrainNormal_Normal_1/train/is_trainBbeta1_powerBbeta2_power*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst*1
value(B&B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ö
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2
*P
_output_shapes>
<:::::::::::::::
Ö
save/AssignAssign DeepLearningConv_Convolution_1/Wsave/RestoreV2*
use_locking(*
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*
validate_shape(*&
_output_shapes
:
ß
save/Assign_1Assign%DeepLearningConv_Convolution_1/W/Adamsave/RestoreV2:1*
use_locking(*
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*
validate_shape(*&
_output_shapes
:
á
save/Assign_2Assign'DeepLearningConv_Convolution_1/W/Adam_1save/RestoreV2:2*
use_locking(*
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*
validate_shape(*&
_output_shapes
:
Î
save/Assign_3Assign DeepLearningConv_Convolution_1/bsave/RestoreV2:3*
use_locking(*
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/b*
validate_shape(*
_output_shapes
:
Ó
save/Assign_4Assign%DeepLearningConv_Convolution_1/b/Adamsave/RestoreV2:4*
use_locking(*
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/b*
validate_shape(*
_output_shapes
:
Ő
save/Assign_5Assign'DeepLearningConv_Convolution_1/b/Adam_1save/RestoreV2:5*
use_locking(*
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/b*
validate_shape(*
_output_shapes
:
×
save/Assign_6Assign"DeepLearningFC_Fully_Connected_1/Wsave/RestoreV2:6*
use_locking(*
T0*5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/W*
validate_shape(*
_output_shapes
:	 

Ü
save/Assign_7Assign'DeepLearningFC_Fully_Connected_1/W/Adamsave/RestoreV2:7*
use_locking(*
T0*5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/W*
validate_shape(*
_output_shapes
:	 

Ţ
save/Assign_8Assign)DeepLearningFC_Fully_Connected_1/W/Adam_1save/RestoreV2:8*
use_locking(*
T0*5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/W*
validate_shape(*
_output_shapes
:	 

Ň
save/Assign_9Assign"DeepLearningFC_Fully_Connected_1/bsave/RestoreV2:9*
use_locking(*
T0*5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/b*
validate_shape(*
_output_shapes
:

Ů
save/Assign_10Assign'DeepLearningFC_Fully_Connected_1/b/Adamsave/RestoreV2:10*
use_locking(*
T0*5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/b*
validate_shape(*
_output_shapes
:

Ű
save/Assign_11Assign)DeepLearningFC_Fully_Connected_1/b/Adam_1save/RestoreV2:11*
use_locking(*
T0*5
_class+
)'loc:@DeepLearningFC_Fully_Connected_1/b*
validate_shape(*
_output_shapes
:

Ň
save/Assign_12Assign#TrainNormal_Normal_1/train/is_trainsave/RestoreV2:12*
use_locking(*
T0
*6
_class,
*(loc:@TrainNormal_Normal_1/train/is_train*
validate_shape(*
_output_shapes
: 
ˇ
save/Assign_13Assignbeta1_powersave/RestoreV2:13*
use_locking(*
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*
validate_shape(*
_output_shapes
: 
ˇ
save/Assign_14Assignbeta2_powersave/RestoreV2:14*
use_locking(*
T0*3
_class)
'%loc:@DeepLearningConv_Convolution_1/W*
validate_shape(*
_output_shapes
: 

save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shardÁZ

Y
1__inference_Dataset_from_generator_finalize_fn_42

args_0	
identity	˘PyFuncd
PyFuncPyFuncargs_0*
Tout
2	*
token
pyfunc_5*
Tin
2	*
_output_shapes
:Q
IdentityIdentityPyFunc:output:0^PyFunc*
T0	*
_output_shapes
:"
identityIdentity:output:0*
_input_shapes
:2
PyFuncPyFunc:& "
 
_user_specified_nameargs_0

Z
2__inference_Dataset_from_generator_finalize_fn_136

args_0	
identity	˘PyFunce
PyFuncPyFuncargs_0*
Tout
2	*
token	pyfunc_17*
Tin
2	*
_output_shapes
:Q
IdentityIdentityPyFunc:output:0^PyFunc*
T0	*
_output_shapes
:"
identityIdentity:output:0*
_input_shapes
:2
PyFuncPyFunc:& "
 
_user_specified_nameargs_0

`
8__inference_Dataset_from_generator_get_iterator_id_fn_32

args_0
identity	˘PyFuncY
PyFuncPyFunc*
Tout
2	*
token
pyfunc_3*	
Tin
 *
_output_shapes
:Q
IdentityIdentityPyFunc:output:0^PyFunc*
T0	*
_output_shapes
:"
identityIdentity:output:0*
_input_shapes
: 2
PyFuncPyFunc:& "
 
_user_specified_nameargs_0
ę
^
,__inference_Dataset_flat_map_flat_map_fn_139

args_0
identity˘GeneratorDataset
GeneratorDatasetGeneratorDatasetargs_0*
Tfinalize_func_args
 *
output_shapes
: *G
finalize_func6R4
2__inference_Dataset_from_generator_finalize_fn_136*J
	init_func=R;
9__inference_Dataset_from_generator_get_iterator_id_fn_126*
output_types
2*
Tinit_func_args
2*I
	next_func<R:
8__inference_Dataset_from_generator_generator_next_fn_131*
Tnext_func_args
 *
_output_shapes
: c
IdentityIdentityGeneratorDataset:handle:0^GeneratorDataset*
T0*
_output_shapes
: "
identityIdentity:output:0*
_input_shapes
: 2$
GeneratorDatasetGeneratorDataset:& "
 
_user_specified_nameargs_0
ë
]
+__inference_Dataset_flat_map_flat_map_fn_69

args_0
identity˘GeneratorDataset 
GeneratorDatasetGeneratorDatasetargs_0*
Tfinalize_func_args
 *
output_shapes	
:*F
finalize_func5R3
1__inference_Dataset_from_generator_finalize_fn_66*I
	init_func<R:
8__inference_Dataset_from_generator_get_iterator_id_fn_56*
output_types
2*
Tinit_func_args
2*H
	next_func;R9
7__inference_Dataset_from_generator_generator_next_fn_61*
Tnext_func_args
 *
_output_shapes
: c
IdentityIdentityGeneratorDataset:handle:0^GeneratorDataset*
T0*
_output_shapes
: "
identityIdentity:output:0*
_input_shapes
: 2$
GeneratorDatasetGeneratorDataset:& "
 
_user_specified_nameargs_0

_
7__inference_Dataset_from_generator_generator_next_fn_84

args_0	
identity˘PyFuncc
PyFuncPyFuncargs_0*
Tout
2*
token	pyfunc_10*
Tin
2	*
_output_shapes
: O
IdentityIdentityPyFunc:output:0^PyFunc*
T0*
_output_shapes
: "
identityIdentity:output:0*
_input_shapes
:2
PyFuncPyFunc:& "
 
_user_specified_nameargs_0

_
7__inference_Dataset_from_generator_generator_next_fn_61

args_0	
identity˘PyFuncg
PyFuncPyFuncargs_0*
Tout
2*
token
pyfunc_7*
Tin
2	*
_output_shapes	
:T
IdentityIdentityPyFunc:output:0^PyFunc*
T0*
_output_shapes	
:"
identityIdentity:output:0*
_input_shapes
:2
PyFuncPyFunc:& "
 
_user_specified_nameargs_0
˙
_
7__inference_Dataset_from_generator_get_iterator_id_fn_9

args_0
identity	˘PyFuncY
PyFuncPyFunc*
Tout
2	*
token
pyfunc_0*	
Tin
 *
_output_shapes
:Q
IdentityIdentityPyFunc:output:0^PyFunc*
T0	*
_output_shapes
:"
identityIdentity:output:0*
_input_shapes
: 2
PyFuncPyFunc:& "
 
_user_specified_nameargs_0

Y
1__inference_Dataset_from_generator_finalize_fn_66

args_0	
identity	˘PyFuncd
PyFuncPyFuncargs_0*
Tout
2	*
token
pyfunc_8*
Tin
2	*
_output_shapes
:Q
IdentityIdentityPyFunc:output:0^PyFunc*
T0	*
_output_shapes
:"
identityIdentity:output:0*
_input_shapes
:2
PyFuncPyFunc:& "
 
_user_specified_nameargs_0
ę
]
+__inference_Dataset_flat_map_flat_map_fn_22

args_0
identity˘GeneratorDataset
GeneratorDatasetGeneratorDatasetargs_0*
Tfinalize_func_args
 *
output_shapes	
:*F
finalize_func5R3
1__inference_Dataset_from_generator_finalize_fn_19*H
	init_func;R9
7__inference_Dataset_from_generator_get_iterator_id_fn_9*
output_types
2*
Tinit_func_args
2*H
	next_func;R9
7__inference_Dataset_from_generator_generator_next_fn_14*
Tnext_func_args
 *
_output_shapes
: c
IdentityIdentityGeneratorDataset:handle:0^GeneratorDataset*
T0*
_output_shapes
: "
identityIdentity:output:0*
_input_shapes
: 2$
GeneratorDatasetGeneratorDataset:& "
 
_user_specified_nameargs_0

`
8__inference_Dataset_from_generator_get_iterator_id_fn_56

args_0
identity	˘PyFuncY
PyFuncPyFunc*
Tout
2	*
token
pyfunc_6*	
Tin
 *
_output_shapes
:Q
IdentityIdentityPyFunc:output:0^PyFunc*
T0	*
_output_shapes
:"
identityIdentity:output:0*
_input_shapes
: 2
PyFuncPyFunc:& "
 
_user_specified_nameargs_0
ć
]
+__inference_Dataset_flat_map_flat_map_fn_92

args_0
identity˘GeneratorDataset
GeneratorDatasetGeneratorDatasetargs_0*
Tfinalize_func_args
 *
output_shapes
: *F
finalize_func5R3
1__inference_Dataset_from_generator_finalize_fn_89*I
	init_func<R:
8__inference_Dataset_from_generator_get_iterator_id_fn_79*
output_types
2*
Tinit_func_args
2*H
	next_func;R9
7__inference_Dataset_from_generator_generator_next_fn_84*
Tnext_func_args
 *
_output_shapes
: c
IdentityIdentityGeneratorDataset:handle:0^GeneratorDataset*
T0*
_output_shapes
: "
identityIdentity:output:0*
_input_shapes
: 2$
GeneratorDatasetGeneratorDataset:& "
 
_user_specified_nameargs_0

a
9__inference_Dataset_from_generator_get_iterator_id_fn_103

args_0
identity	˘PyFuncZ
PyFuncPyFunc*
Tout
2	*
token	pyfunc_12*	
Tin
 *
_output_shapes
:Q
IdentityIdentityPyFunc:output:0^PyFunc*
T0	*
_output_shapes
:"
identityIdentity:output:0*
_input_shapes
: 2
PyFuncPyFunc:& "
 
_user_specified_nameargs_0

`
8__inference_Dataset_from_generator_get_iterator_id_fn_79

args_0
identity	˘PyFuncY
PyFuncPyFunc*
Tout
2	*
token
pyfunc_9*	
Tin
 *
_output_shapes
:Q
IdentityIdentityPyFunc:output:0^PyFunc*
T0	*
_output_shapes
:"
identityIdentity:output:0*
_input_shapes
: 2
PyFuncPyFunc:& "
 
_user_specified_nameargs_0
ď
^
,__inference_Dataset_flat_map_flat_map_fn_116

args_0
identity˘GeneratorDatasetŁ
GeneratorDatasetGeneratorDatasetargs_0*
Tfinalize_func_args
 *
output_shapes	
:*G
finalize_func6R4
2__inference_Dataset_from_generator_finalize_fn_113*J
	init_func=R;
9__inference_Dataset_from_generator_get_iterator_id_fn_103*
output_types
2*
Tinit_func_args
2*I
	next_func<R:
8__inference_Dataset_from_generator_generator_next_fn_108*
Tnext_func_args
 *
_output_shapes
: c
IdentityIdentityGeneratorDataset:handle:0^GeneratorDataset*
T0*
_output_shapes
: "
identityIdentity:output:0*
_input_shapes
: 2$
GeneratorDatasetGeneratorDataset:& "
 
_user_specified_nameargs_0

`
8__inference_Dataset_from_generator_generator_next_fn_131

args_0	
identity˘PyFuncc
PyFuncPyFuncargs_0*
Tout
2*
token	pyfunc_16*
Tin
2	*
_output_shapes
: O
IdentityIdentityPyFunc:output:0^PyFunc*
T0*
_output_shapes
: "
identityIdentity:output:0*
_input_shapes
:2
PyFuncPyFunc:& "
 
_user_specified_nameargs_0
ć
]
+__inference_Dataset_flat_map_flat_map_fn_45

args_0
identity˘GeneratorDataset
GeneratorDatasetGeneratorDatasetargs_0*
Tfinalize_func_args
 *
output_shapes
: *F
finalize_func5R3
1__inference_Dataset_from_generator_finalize_fn_42*I
	init_func<R:
8__inference_Dataset_from_generator_get_iterator_id_fn_32*
output_types
2*
Tinit_func_args
2*H
	next_func;R9
7__inference_Dataset_from_generator_generator_next_fn_37*
Tnext_func_args
 *
_output_shapes
: c
IdentityIdentityGeneratorDataset:handle:0^GeneratorDataset*
T0*
_output_shapes
: "
identityIdentity:output:0*
_input_shapes
: 2$
GeneratorDatasetGeneratorDataset:& "
 
_user_specified_nameargs_0

Z
2__inference_Dataset_from_generator_finalize_fn_113

args_0	
identity	˘PyFunce
PyFuncPyFuncargs_0*
Tout
2	*
token	pyfunc_14*
Tin
2	*
_output_shapes
:Q
IdentityIdentityPyFunc:output:0^PyFunc*
T0	*
_output_shapes
:"
identityIdentity:output:0*
_input_shapes
:2
PyFuncPyFunc:& "
 
_user_specified_nameargs_0

`
8__inference_Dataset_from_generator_generator_next_fn_108

args_0	
identity˘PyFunch
PyFuncPyFuncargs_0*
Tout
2*
token	pyfunc_13*
Tin
2	*
_output_shapes	
:T
IdentityIdentityPyFunc:output:0^PyFunc*
T0*
_output_shapes	
:"
identityIdentity:output:0*
_input_shapes
:2
PyFuncPyFunc:& "
 
_user_specified_nameargs_0

_
7__inference_Dataset_from_generator_generator_next_fn_14

args_0	
identity˘PyFuncg
PyFuncPyFuncargs_0*
Tout
2*
token
pyfunc_1*
Tin
2	*
_output_shapes	
:T
IdentityIdentityPyFunc:output:0^PyFunc*
T0*
_output_shapes	
:"
identityIdentity:output:0*
_input_shapes
:2
PyFuncPyFunc:& "
 
_user_specified_nameargs_0

a
9__inference_Dataset_from_generator_get_iterator_id_fn_126

args_0
identity	˘PyFuncZ
PyFuncPyFunc*
Tout
2	*
token	pyfunc_15*	
Tin
 *
_output_shapes
:Q
IdentityIdentityPyFunc:output:0^PyFunc*
T0	*
_output_shapes
:"
identityIdentity:output:0*
_input_shapes
: 2
PyFuncPyFunc:& "
 
_user_specified_nameargs_0

Y
1__inference_Dataset_from_generator_finalize_fn_89

args_0	
identity	˘PyFunce
PyFuncPyFuncargs_0*
Tout
2	*
token	pyfunc_11*
Tin
2	*
_output_shapes
:Q
IdentityIdentityPyFunc:output:0^PyFunc*
T0	*
_output_shapes
:"
identityIdentity:output:0*
_input_shapes
:2
PyFuncPyFunc:& "
 
_user_specified_nameargs_0

Y
1__inference_Dataset_from_generator_finalize_fn_19

args_0	
identity	˘PyFuncd
PyFuncPyFuncargs_0*
Tout
2	*
token
pyfunc_2*
Tin
2	*
_output_shapes
:Q
IdentityIdentityPyFunc:output:0^PyFunc*
T0	*
_output_shapes
:"
identityIdentity:output:0*
_input_shapes
:2
PyFuncPyFunc:& "
 
_user_specified_nameargs_0

_
7__inference_Dataset_from_generator_generator_next_fn_37

args_0	
identity˘PyFuncb
PyFuncPyFuncargs_0*
Tout
2*
token
pyfunc_4*
Tin
2	*
_output_shapes
: O
IdentityIdentityPyFunc:output:0^PyFunc*
T0*
_output_shapes
: "
identityIdentity:output:0*
_input_shapes
:2
PyFuncPyFunc:& "
 
_user_specified_nameargs_0"<
save/Const:0save/Identity:0save/restore_all (5 @F8" 
trainable_variables
ś
%TrainNormal_Normal_1/train/is_train:0*TrainNormal_Normal_1/train/is_train/Assign*TrainNormal_Normal_1/train/is_train/read:023TrainNormal_Normal_1/train/is_train/initial_value:08
ˇ
"DeepLearningConv_Convolution_1/W:0'DeepLearningConv_Convolution_1/W/Assign'DeepLearningConv_Convolution_1/W/read:02=DeepLearningConv_Convolution_1/W/Initializer/random_uniform:08
Ž
"DeepLearningConv_Convolution_1/b:0'DeepLearningConv_Convolution_1/b/Assign'DeepLearningConv_Convolution_1/b/read:024DeepLearningConv_Convolution_1/b/Initializer/zeros:08
ł
$DeepLearningFC_Fully_Connected_1/W:0)DeepLearningFC_Fully_Connected_1/W/Assign)DeepLearningFC_Fully_Connected_1/W/read:023DeepLearningFC_Fully_Connected_1/truncated_normal:08
¨
$DeepLearningFC_Fully_Connected_1/b:0)DeepLearningFC_Fully_Connected_1/b/Assign)DeepLearningFC_Fully_Connected_1/b/read:02(DeepLearningFC_Fully_Connected_1/Const:08"
train_op

Adam"
	variables
ś
%TrainNormal_Normal_1/train/is_train:0*TrainNormal_Normal_1/train/is_train/Assign*TrainNormal_Normal_1/train/is_train/read:023TrainNormal_Normal_1/train/is_train/initial_value:08
ˇ
"DeepLearningConv_Convolution_1/W:0'DeepLearningConv_Convolution_1/W/Assign'DeepLearningConv_Convolution_1/W/read:02=DeepLearningConv_Convolution_1/W/Initializer/random_uniform:08
Ž
"DeepLearningConv_Convolution_1/b:0'DeepLearningConv_Convolution_1/b/Assign'DeepLearningConv_Convolution_1/b/read:024DeepLearningConv_Convolution_1/b/Initializer/zeros:08
ł
$DeepLearningFC_Fully_Connected_1/W:0)DeepLearningFC_Fully_Connected_1/W/Assign)DeepLearningFC_Fully_Connected_1/W/read:023DeepLearningFC_Fully_Connected_1/truncated_normal:08
¨
$DeepLearningFC_Fully_Connected_1/b:0)DeepLearningFC_Fully_Connected_1/b/Assign)DeepLearningFC_Fully_Connected_1/b/read:02(DeepLearningFC_Fully_Connected_1/Const:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
Ŕ
'DeepLearningConv_Convolution_1/W/Adam:0,DeepLearningConv_Convolution_1/W/Adam/Assign,DeepLearningConv_Convolution_1/W/Adam/read:029DeepLearningConv_Convolution_1/W/Adam/Initializer/zeros:0
Č
)DeepLearningConv_Convolution_1/W/Adam_1:0.DeepLearningConv_Convolution_1/W/Adam_1/Assign.DeepLearningConv_Convolution_1/W/Adam_1/read:02;DeepLearningConv_Convolution_1/W/Adam_1/Initializer/zeros:0
Ŕ
'DeepLearningConv_Convolution_1/b/Adam:0,DeepLearningConv_Convolution_1/b/Adam/Assign,DeepLearningConv_Convolution_1/b/Adam/read:029DeepLearningConv_Convolution_1/b/Adam/Initializer/zeros:0
Č
)DeepLearningConv_Convolution_1/b/Adam_1:0.DeepLearningConv_Convolution_1/b/Adam_1/Assign.DeepLearningConv_Convolution_1/b/Adam_1/read:02;DeepLearningConv_Convolution_1/b/Adam_1/Initializer/zeros:0
Č
)DeepLearningFC_Fully_Connected_1/W/Adam:0.DeepLearningFC_Fully_Connected_1/W/Adam/Assign.DeepLearningFC_Fully_Connected_1/W/Adam/read:02;DeepLearningFC_Fully_Connected_1/W/Adam/Initializer/zeros:0
Đ
+DeepLearningFC_Fully_Connected_1/W/Adam_1:00DeepLearningFC_Fully_Connected_1/W/Adam_1/Assign0DeepLearningFC_Fully_Connected_1/W/Adam_1/read:02=DeepLearningFC_Fully_Connected_1/W/Adam_1/Initializer/zeros:0
Č
)DeepLearningFC_Fully_Connected_1/b/Adam:0.DeepLearningFC_Fully_Connected_1/b/Adam/Assign.DeepLearningFC_Fully_Connected_1/b/Adam/read:02;DeepLearningFC_Fully_Connected_1/b/Adam/Initializer/zeros:0
Đ
+DeepLearningFC_Fully_Connected_1/b/Adam_1:00DeepLearningFC_Fully_Connected_1/b/Adam_1/Assign0DeepLearningFC_Fully_Connected_1/b/Adam_1/read:02=DeepLearningFC_Fully_Connected_1/b/Adam_1/Initializer/zeros:0"
	iterators

IteratorV2:0*Ż
serving_default
.
input%
Placeholder:0˙˙˙˙˙˙˙˙˙M
outputC
,DeepLearningFC_Fully_Connected_1_1/Sigmoid:0˙˙˙˙˙˙˙˙˙
tensorflow/serving/predict
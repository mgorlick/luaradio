local radio = require('radio')
local jigs = require('tests.jigs')

jigs.TestBlock(radio.ComplexToFloatBlock, {
    {
        desc = "256 ComplexFloat32 input, 2 256 Float32 outputs",
        args = {},
        inputs = {radio.ComplexFloat32Type.vector_from_array({{-0.69584030, 0.77077544}, {0.36500293, -0.02155859}, {-0.75008589, 0.60249484}, {-0.09661829, -0.61594445}, {0.74459571, 0.81729430}, {-0.99463606, 0.14529929}, {0.56801373, -0.66499299}, {0.76050633, 0.62730038}, {-0.14614090, 0.81276506}, {-0.00046893, -0.57718098}, {-0.80584729, 0.45478749}, {-0.90856600, -0.29085508}, {-0.81536329, 0.07004186}, {0.14154316, -0.98850656}, {0.80473906, -0.80194169}, {-0.53790027, -0.92211658}, {0.42069989, -0.16599597}, {0.48523703, -0.69649607}, {-0.27122626, 0.03462196}, {0.45637649, -0.64073408}, {-0.47637185, -0.36603263}, {-0.25277233, 0.30738792}, {0.36171880, -0.34798515}, {0.75729805, 0.36191621}, {-0.77739042, 0.63231367}, {0.95151585, -0.05083428}, {0.94608533, -0.95641106}, {-0.32063568, -0.79664320}, {0.13062766, 0.64432585}, {-0.69998312, -0.88235879}, {-0.38076821, 0.70654416}, {-0.70129293, -0.03053314}, {0.23541325, -0.30891317}, {0.48085371, 0.62721944}, {-0.92137825, -0.79598498}, {0.62219936, -0.18518052}, {0.62155449, 0.42532429}, {0.75482184, -0.58052641}, {-0.59769630, -0.90952963}, {-0.89008754, 0.88389021}, {0.19184627, 0.05449598}, {0.08062391, -0.22964343}, {0.02989614, 0.52151620}, {-0.80031246, -0.53835857}, {-0.41262940, 0.22443792}, {0.70234561, -0.15391502}, {0.35549709, -0.90766066}, {0.45788592, 0.80357355}, {-0.33668956, -0.74326968}, {-0.88815999, -0.80444592}, {-0.35220584, -0.05321440}, {0.55195463, 0.27696168}, {-0.49336445, -0.04220626}, {0.78843069, -0.63461858}, {-0.58236700, -0.66262972}, {-0.69630098, 0.25531864}, {-0.02754216, 0.79337054}, {0.65907639, -0.01111811}, {-0.69129258, -0.94852418}, {-0.88454366, 0.92705065}, {-0.00088402, -0.25645372}, {0.11444949, -0.94206136}, {0.08340357, 0.06457212}, {0.18303981, -0.54415417}, {0.16286860, -0.91517782}, {-0.79638696, -0.35871223}, {-0.04726867, -0.14093049}, {-0.57620227, -0.73640323}, {0.60402191, -0.62141252}, {-0.45877755, 0.88212591}, {-0.08752551, 0.90595824}, {0.30683422, -0.25287753}, {-0.00401944, -0.34736073}, {0.50392765, -0.99955702}, {-0.62812281, -0.92034745}, {0.31840259, -0.78574783}, {-0.70208621, -0.34891665}, {-0.43101636, 0.12576708}, {-0.68151295, 0.84135973}, {-0.15583400, -0.62704635}, {0.73659027, 0.92626488}, {0.47355139, -0.77589458}, {-0.15798238, 0.87420458}, {-0.43222660, -0.32409361}, {-0.65105480, -0.46871555}, {-0.18598484, -0.56113517}, {0.15665081, -0.73777694}, {-0.86095333, -0.29965198}, {0.73497766, 0.73876262}, {-0.01516105, 0.55584270}, {0.58720183, 0.32246685}, {0.71243352, -0.53186601}, {0.04453108, 0.71215481}, {-0.81770527, -0.93230474}, {-0.14741684, 0.15497011}, {0.77538425, -0.07759062}, {-0.78979200, -0.64769626}, {0.55469221, 0.11134107}, {0.24799021, 0.37419435}, {0.04602626, -0.62044585}, {0.36323509, -0.00335837}, {0.56143588, 0.92471296}, {0.55826545, 0.56857556}, {-0.41433248, 0.59331459}, {-0.40379620, 0.87045032}, {-0.63425732, 0.80210578}, {0.56137025, -0.09513529}, {-0.04012311, 0.55908489}, {-0.13615403, 0.46164811}, {0.72700942, -0.14111800}, {0.13404571, 0.71446896}, {0.49195233, 0.96459401}, {-0.39115089, -0.28064311}, {-0.16689120, -0.20235039}, {0.52411902, -0.00350566}, {-0.01115281, 0.72008306}, {-0.47266591, 0.24268204}, {-0.30512339, -0.90912807}, {-0.70749986, -0.38629863}, {-0.92976850, 0.32326499}, {0.61311060, -0.84208679}, {0.11145013, -0.47584403}, {0.83960313, -0.13131815}, {-0.89131248, 0.11238814}, {-0.64844519, 0.04232801}, {-0.89890099, 0.57062709}, {0.87468040, 0.18807305}, {0.27888075, 0.42118451}, {-0.12305925, 0.65635413}, {-0.15985397, -0.83065975}, {0.68878329, -0.24578074}, {0.39845967, -0.83733881}, {0.46823040, -0.55633056}, {-0.84937841, 0.12095478}, {-0.62867397, 0.76603949}, {0.84526670, -0.79254854}, {-0.56323111, 0.67651862}, {0.06276686, 0.05803546}, {0.97890621, -0.28610277}, {0.46073344, 0.52628893}, {0.10756662, -0.93561447}, {0.56520092, 0.09415633}, {0.66321915, 0.62433791}, {0.76001632, 0.43982387}, {-0.44557357, -0.95960510}, {-0.31541646, 0.00088325}, {0.40670541, 0.76871443}, {-0.55468386, -0.35427493}, {-0.43284479, 0.18134601}, {-0.04656458, -0.53014344}, {0.15435284, 0.12535883}, {-0.00913689, 0.46752885}, {-0.88033378, 0.84620899}, {-0.16519581, 0.09574679}, {0.14157493, 0.98039979}, {-0.30963349, 0.39412913}, {0.42948395, 0.61771005}, {0.62035978, -0.94474739}, {-0.14003094, 0.24674328}, {-0.63811231, -0.00294122}, {-0.57193965, 0.90102226}, {0.09625135, 0.44230747}, {-0.66201293, -0.01252787}, {-0.96143538, 0.16623177}, {-0.04170170, -0.62279338}, {0.57137340, -0.13900520}, {0.92628646, 0.30716741}, {-0.69901073, -0.48315579}, {-0.50039983, 0.51868331}, {-0.80611891, -0.01984746}, {0.76445103, 0.67879134}, {0.22163381, -0.03133634}, {0.60622615, -0.69627845}, {0.87030005, 0.31584853}, {0.27639392, 0.72508699}, {0.41087312, -0.33167079}, {-0.93795061, 0.21425062}, {-0.23757441, -0.99289203}, {-0.25629705, -0.38607433}, {0.20530421, 0.27682063}, {-0.90672231, -0.64742821}, {-0.71850491, -0.09666342}, {0.60257441, -0.11517122}, {-0.85714418, -0.27082789}, {-0.53619146, -0.28764731}, {0.46424341, 0.27109000}, {0.60715955, 0.52879965}, {-0.22441977, -0.05099724}, {0.98635787, -0.28693765}, {-0.58568919, 0.61472279}, {-0.65879554, 0.42010137}, {0.77164495, -0.20357043}, {-0.77849513, -0.23079529}, {-0.73270625, -0.99324703}, {-0.06818827, -0.75835162}, {0.80797315, 0.78021997}, {0.63726240, -0.23920313}, {-0.42894575, -0.15147044}, {-0.46478051, -0.47849637}, {-0.63693535, 0.53429627}, {0.86239243, 0.46942097}, {-0.95856631, -0.15165575}, {0.92937815, -0.99490386}, {0.45757845, -0.09528074}, {-0.35676867, 0.16793083}, {0.00462643, -0.62736696}, {0.72075087, 0.31387252}, {-0.37644020, 0.06957990}, {0.71500629, 0.47894484}, {0.53938133, 0.21311609}, {0.10609978, 0.68456119}, {0.75065142, -0.61044550}, {-0.26903248, -0.96565878}, {0.04232545, 0.79633975}, {-0.16732997, 0.57701313}, {-0.47351763, 0.78687358}, {0.71240342, -0.26406464}, {-0.54488009, -0.86666018}, {0.03155196, 0.37687543}, {-0.53376842, 0.63236731}, {-0.97318321, -0.95770621}, {0.62168735, -0.87229407}, {-0.05040890, -0.56431484}, {-0.02769465, -0.64924979}, {0.97752017, 0.66228008}, {0.30129865, -0.30995095}, {0.98159450, -0.72149938}, {0.95219398, 0.47561684}, {-0.58670670, -0.28211817}, {0.90116626, -0.60504019}, {-0.37647256, 0.74942017}, {-0.97687483, 0.92457271}, {0.03941864, -0.57613736}, {0.52538705, -0.17477953}, {-0.64646924, -0.31795561}, {0.53314197, 0.16165519}, {0.28757414, -0.66981667}, {-0.87878448, 0.27272236}, {0.01232255, -0.07197494}, {0.25350019, 0.21704970}, {-0.21609905, 0.40787435}, {-0.82625389, 0.41023725}, {-0.32532239, 0.03898720}, {0.35171255, 0.70719457}, {-0.39985991, 0.08208769}, {0.24762063, 0.59617198}, {-0.37117925, -0.23839316}, {0.74392682, 0.92545253}, {0.57253027, -0.03086814}, {-0.30813724, -0.52932781}, {-0.61072510, -0.62819356}, {-0.18033576, -0.69742602}, {0.26199716, 0.37794593}, {0.55127788, 0.21815924}, {0.88646394, -0.37939048}, {0.05485858, -0.11899644}})},
        outputs = {radio.Float32Type.vector_from_array({-0.69584030, 0.36500293, -0.75008589, -0.09661829, 0.74459571, -0.99463606, 0.56801373, 0.76050633, -0.14614090, -0.00046893, -0.80584729, -0.90856600, -0.81536329, 0.14154316, 0.80473906, -0.53790027, 0.42069989, 0.48523703, -0.27122626, 0.45637649, -0.47637185, -0.25277233, 0.36171880, 0.75729805, -0.77739042, 0.95151585, 0.94608533, -0.32063568, 0.13062766, -0.69998312, -0.38076821, -0.70129293, 0.23541325, 0.48085371, -0.92137825, 0.62219936, 0.62155449, 0.75482184, -0.59769630, -0.89008754, 0.19184627, 0.08062391, 0.02989614, -0.80031246, -0.41262940, 0.70234561, 0.35549709, 0.45788592, -0.33668956, -0.88815999, -0.35220584, 0.55195463, -0.49336445, 0.78843069, -0.58236700, -0.69630098, -0.02754216, 0.65907639, -0.69129258, -0.88454366, -0.00088402, 0.11444949, 0.08340357, 0.18303981, 0.16286860, -0.79638696, -0.04726867, -0.57620227, 0.60402191, -0.45877755, -0.08752551, 0.30683422, -0.00401944, 0.50392765, -0.62812281, 0.31840259, -0.70208621, -0.43101636, -0.68151295, -0.15583400, 0.73659027, 0.47355139, -0.15798238, -0.43222660, -0.65105480, -0.18598484, 0.15665081, -0.86095333, 0.73497766, -0.01516105, 0.58720183, 0.71243352, 0.04453108, -0.81770527, -0.14741684, 0.77538425, -0.78979200, 0.55469221, 0.24799021, 0.04602626, 0.36323509, 0.56143588, 0.55826545, -0.41433248, -0.40379620, -0.63425732, 0.56137025, -0.04012311, -0.13615403, 0.72700942, 0.13404571, 0.49195233, -0.39115089, -0.16689120, 0.52411902, -0.01115281, -0.47266591, -0.30512339, -0.70749986, -0.92976850, 0.61311060, 0.11145013, 0.83960313, -0.89131248, -0.64844519, -0.89890099, 0.87468040, 0.27888075, -0.12305925, -0.15985397, 0.68878329, 0.39845967, 0.46823040, -0.84937841, -0.62867397, 0.84526670, -0.56323111, 0.06276686, 0.97890621, 0.46073344, 0.10756662, 0.56520092, 0.66321915, 0.76001632, -0.44557357, -0.31541646, 0.40670541, -0.55468386, -0.43284479, -0.04656458, 0.15435284, -0.00913689, -0.88033378, -0.16519581, 0.14157493, -0.30963349, 0.42948395, 0.62035978, -0.14003094, -0.63811231, -0.57193965, 0.09625135, -0.66201293, -0.96143538, -0.04170170, 0.57137340, 0.92628646, -0.69901073, -0.50039983, -0.80611891, 0.76445103, 0.22163381, 0.60622615, 0.87030005, 0.27639392, 0.41087312, -0.93795061, -0.23757441, -0.25629705, 0.20530421, -0.90672231, -0.71850491, 0.60257441, -0.85714418, -0.53619146, 0.46424341, 0.60715955, -0.22441977, 0.98635787, -0.58568919, -0.65879554, 0.77164495, -0.77849513, -0.73270625, -0.06818827, 0.80797315, 0.63726240, -0.42894575, -0.46478051, -0.63693535, 0.86239243, -0.95856631, 0.92937815, 0.45757845, -0.35676867, 0.00462643, 0.72075087, -0.37644020, 0.71500629, 0.53938133, 0.10609978, 0.75065142, -0.26903248, 0.04232545, -0.16732997, -0.47351763, 0.71240342, -0.54488009, 0.03155196, -0.53376842, -0.97318321, 0.62168735, -0.05040890, -0.02769465, 0.97752017, 0.30129865, 0.98159450, 0.95219398, -0.58670670, 0.90116626, -0.37647256, -0.97687483, 0.03941864, 0.52538705, -0.64646924, 0.53314197, 0.28757414, -0.87878448, 0.01232255, 0.25350019, -0.21609905, -0.82625389, -0.32532239, 0.35171255, -0.39985991, 0.24762063, -0.37117925, 0.74392682, 0.57253027, -0.30813724, -0.61072510, -0.18033576, 0.26199716, 0.55127788, 0.88646394, 0.05485858}), radio.Float32Type.vector_from_array({0.77077544, -0.02155859, 0.60249484, -0.61594445, 0.81729430, 0.14529929, -0.66499299, 0.62730038, 0.81276506, -0.57718098, 0.45478749, -0.29085508, 0.07004186, -0.98850656, -0.80194169, -0.92211658, -0.16599597, -0.69649607, 0.03462196, -0.64073408, -0.36603263, 0.30738792, -0.34798515, 0.36191621, 0.63231367, -0.05083428, -0.95641106, -0.79664320, 0.64432585, -0.88235879, 0.70654416, -0.03053314, -0.30891317, 0.62721944, -0.79598498, -0.18518052, 0.42532429, -0.58052641, -0.90952963, 0.88389021, 0.05449598, -0.22964343, 0.52151620, -0.53835857, 0.22443792, -0.15391502, -0.90766066, 0.80357355, -0.74326968, -0.80444592, -0.05321440, 0.27696168, -0.04220626, -0.63461858, -0.66262972, 0.25531864, 0.79337054, -0.01111811, -0.94852418, 0.92705065, -0.25645372, -0.94206136, 0.06457212, -0.54415417, -0.91517782, -0.35871223, -0.14093049, -0.73640323, -0.62141252, 0.88212591, 0.90595824, -0.25287753, -0.34736073, -0.99955702, -0.92034745, -0.78574783, -0.34891665, 0.12576708, 0.84135973, -0.62704635, 0.92626488, -0.77589458, 0.87420458, -0.32409361, -0.46871555, -0.56113517, -0.73777694, -0.29965198, 0.73876262, 0.55584270, 0.32246685, -0.53186601, 0.71215481, -0.93230474, 0.15497011, -0.07759062, -0.64769626, 0.11134107, 0.37419435, -0.62044585, -0.00335837, 0.92471296, 0.56857556, 0.59331459, 0.87045032, 0.80210578, -0.09513529, 0.55908489, 0.46164811, -0.14111800, 0.71446896, 0.96459401, -0.28064311, -0.20235039, -0.00350566, 0.72008306, 0.24268204, -0.90912807, -0.38629863, 0.32326499, -0.84208679, -0.47584403, -0.13131815, 0.11238814, 0.04232801, 0.57062709, 0.18807305, 0.42118451, 0.65635413, -0.83065975, -0.24578074, -0.83733881, -0.55633056, 0.12095478, 0.76603949, -0.79254854, 0.67651862, 0.05803546, -0.28610277, 0.52628893, -0.93561447, 0.09415633, 0.62433791, 0.43982387, -0.95960510, 0.00088325, 0.76871443, -0.35427493, 0.18134601, -0.53014344, 0.12535883, 0.46752885, 0.84620899, 0.09574679, 0.98039979, 0.39412913, 0.61771005, -0.94474739, 0.24674328, -0.00294122, 0.90102226, 0.44230747, -0.01252787, 0.16623177, -0.62279338, -0.13900520, 0.30716741, -0.48315579, 0.51868331, -0.01984746, 0.67879134, -0.03133634, -0.69627845, 0.31584853, 0.72508699, -0.33167079, 0.21425062, -0.99289203, -0.38607433, 0.27682063, -0.64742821, -0.09666342, -0.11517122, -0.27082789, -0.28764731, 0.27109000, 0.52879965, -0.05099724, -0.28693765, 0.61472279, 0.42010137, -0.20357043, -0.23079529, -0.99324703, -0.75835162, 0.78021997, -0.23920313, -0.15147044, -0.47849637, 0.53429627, 0.46942097, -0.15165575, -0.99490386, -0.09528074, 0.16793083, -0.62736696, 0.31387252, 0.06957990, 0.47894484, 0.21311609, 0.68456119, -0.61044550, -0.96565878, 0.79633975, 0.57701313, 0.78687358, -0.26406464, -0.86666018, 0.37687543, 0.63236731, -0.95770621, -0.87229407, -0.56431484, -0.64924979, 0.66228008, -0.30995095, -0.72149938, 0.47561684, -0.28211817, -0.60504019, 0.74942017, 0.92457271, -0.57613736, -0.17477953, -0.31795561, 0.16165519, -0.66981667, 0.27272236, -0.07197494, 0.21704970, 0.40787435, 0.41023725, 0.03898720, 0.70719457, 0.08208769, 0.59617198, -0.23839316, 0.92545253, -0.03086814, -0.52932781, -0.62819356, -0.69742602, 0.37794593, 0.21815924, -0.37939048, -0.11899644})}
    },
}, {epsilon = 1.0e-06})
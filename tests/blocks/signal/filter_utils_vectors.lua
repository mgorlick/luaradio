local radio = require('radio')

local M = {}
M.firwin_lowpass = radio.Float32Type.vector_from_array({-0.00028356, -0.00029013, 0.00030102, 0.00031644, -0.00033659, -0.00036167, 0.00039190, 0.00042749, -0.00046866, -0.00051562, 0.00056862, 0.00062788, -0.00069365, -0.00076619, 0.00084575, 0.00093261, -0.00102706, -0.00112941, 0.00123996, 0.00135907, -0.00148708, -0.00162440, 0.00177143, 0.00192862, -0.00209646, -0.00227548, 0.00246626, 0.00266945, -0.00288574, -0.00311593, 0.00336089, 0.00362159, -0.00389915, -0.00419481, 0.00450997, 0.00484627, -0.00520555, -0.00558995, 0.00600195, 0.00644443, -0.00692079, -0.00743501, 0.00799187, 0.00859705, -0.00925744, -0.00998142, 0.01077932, 0.01166397, -0.01265159, -0.01376284, 0.01502457, 0.01647228, -0.01815380, -0.02013529, 0.02251077, 0.02541862, -0.02907106, -0.03381100, 0.04023085, 0.04944972, -0.06386592, -0.08971526, 0.14986274, 0.45009482, 0.45009482, 0.14986274, -0.08971526, -0.06386592, 0.04944972, 0.04023085, -0.03381100, -0.02907106, 0.02541862, 0.02251077, -0.02013529, -0.01815380, 0.01647228, 0.01502457, -0.01376284, -0.01265159, 0.01166397, 0.01077932, -0.00998142, -0.00925744, 0.00859705, 0.00799187, -0.00743501, -0.00692079, 0.00644443, 0.00600195, -0.00558995, -0.00520555, 0.00484627, 0.00450997, -0.00419481, -0.00389915, 0.00362159, 0.00336089, -0.00311593, -0.00288574, 0.00266945, 0.00246626, -0.00227548, -0.00209646, 0.00192862, 0.00177143, -0.00162440, -0.00148708, 0.00135907, 0.00123996, -0.00112941, -0.00102706, 0.00093261, 0.00084575, -0.00076619, -0.00069365, 0.00062788, 0.00056862, -0.00051562, -0.00046866, 0.00042749, 0.00039190, -0.00036167, -0.00033659, 0.00031644, 0.00030102, -0.00029013, -0.00028356})
M.firwin_highpass = radio.Float32Type.vector_from_array({-0.00000000, 0.00040700, -0.00000000, -0.00044344, -0.00000000, 0.00050598, 0.00000000, -0.00059691, -0.00000000, 0.00071860, -0.00000000, -0.00087352, 0.00000000, 0.00106431, 0.00000000, -0.00129378, -0.00000000, 0.00156502, -0.00000000, -0.00188141, -0.00000000, 0.00224677, 0.00000000, -0.00266545, -0.00000000, 0.00314254, -0.00000000, -0.00368404, -0.00000000, 0.00429722, 0.00000000, -0.00499099, -0.00000000, 0.00577651, -0.00000000, -0.00666800, -0.00000000, 0.00768389, 0.00000000, -0.00884862, -0.00000000, 0.01019526, -0.00000000, -0.01176969, -0.00000000, 0.01363743, -0.00000000, -0.01589522, -0.00000000, 0.01869195, -0.00000000, -0.02226885, -0.00000000, 0.02704347, -0.00000000, -0.03380575, -0.00000000, 0.04425009, -0.00000000, -0.06278436, -0.00000000, 0.10557503, -0.00000000, -0.31813350, 0.50000000, -0.31813350, -0.00000000, 0.10557503, -0.00000000, -0.06278436, -0.00000000, 0.04425009, -0.00000000, -0.03380575, -0.00000000, 0.02704347, -0.00000000, -0.02226885, -0.00000000, 0.01869195, -0.00000000, -0.01589522, -0.00000000, 0.01363743, -0.00000000, -0.01176969, -0.00000000, 0.01019526, -0.00000000, -0.00884862, 0.00000000, 0.00768389, -0.00000000, -0.00666800, -0.00000000, 0.00577651, -0.00000000, -0.00499099, 0.00000000, 0.00429722, -0.00000000, -0.00368404, -0.00000000, 0.00314254, -0.00000000, -0.00266545, 0.00000000, 0.00224677, -0.00000000, -0.00188141, -0.00000000, 0.00156502, -0.00000000, -0.00129378, 0.00000000, 0.00106431, 0.00000000, -0.00087352, -0.00000000, 0.00071860, -0.00000000, -0.00059691, 0.00000000, 0.00050598, -0.00000000, -0.00044344, -0.00000000, 0.00040700, -0.00000000})
M.firwin_bandpass = radio.Float32Type.vector_from_array({0.00075683, -0.00000000, -0.00049620, -0.00000000, -0.00000000, 0.00000000, 0.00064392, -0.00000000, -0.00124352, 0.00000000, 0.00150599, -0.00000000, -0.00113355, 0.00000000, -0.00000000, 0.00000000, 0.00167399, -0.00000000, -0.00326658, 0.00000000, 0.00391400, -0.00000000, -0.00287915, 0.00000000, -0.00000000, 0.00000000, 0.00400260, -0.00000000, -0.00757261, 0.00000000, 0.00881324, -0.00000000, -0.00631455, 0.00000000, -0.00000000, 0.00000000, 0.00841595, -0.00000000, -0.01568450, 0.00000000, 0.01806380, -0.00000000, -0.01287306, 0.00000000, -0.00000000, -0.00000000, 0.01729243, -0.00000000, -0.03274294, 0.00000000, 0.03873157, -0.00000000, -0.02876555, -0.00000000, -0.00000000, 0.00000000, 0.04513664, -0.00000000, -0.09891146, 0.00000000, 0.15002747, -0.00000000, -0.18668343, -0.00000000, 0.20000000, -0.00000000, -0.18668343, -0.00000000, 0.15002747, 0.00000000, -0.09891146, -0.00000000, 0.04513664, 0.00000000, -0.00000000, -0.00000000, -0.02876555, -0.00000000, 0.03873157, 0.00000000, -0.03274294, -0.00000000, 0.01729243, -0.00000000, -0.00000000, 0.00000000, -0.01287306, -0.00000000, 0.01806380, 0.00000000, -0.01568450, -0.00000000, 0.00841595, 0.00000000, -0.00000000, 0.00000000, -0.00631455, -0.00000000, 0.00881324, 0.00000000, -0.00757261, -0.00000000, 0.00400260, 0.00000000, -0.00000000, 0.00000000, -0.00287915, -0.00000000, 0.00391400, 0.00000000, -0.00326658, -0.00000000, 0.00167399, 0.00000000, -0.00000000, 0.00000000, -0.00113355, -0.00000000, 0.00150599, 0.00000000, -0.00124352, -0.00000000, 0.00064392, 0.00000000, -0.00000000, -0.00000000, -0.00049620, -0.00000000, 0.00075683})
M.firwin_bandstop = radio.Float32Type.vector_from_array({-0.00075683, 0.00000000, 0.00049620, 0.00000000, -0.00000000, 0.00000000, -0.00064392, 0.00000000, 0.00124352, -0.00000000, -0.00150599, 0.00000000, 0.00113355, 0.00000000, 0.00000000, 0.00000000, -0.00167399, -0.00000000, 0.00326658, -0.00000000, -0.00391400, 0.00000000, 0.00287915, 0.00000000, -0.00000000, 0.00000000, -0.00400260, 0.00000000, 0.00757261, 0.00000000, -0.00881324, 0.00000000, 0.00631455, 0.00000000, -0.00000000, 0.00000000, -0.00841595, 0.00000000, 0.01568450, -0.00000000, -0.01806380, 0.00000000, 0.01287306, -0.00000000, -0.00000000, 0.00000000, -0.01729243, 0.00000000, 0.03274294, 0.00000000, -0.03873157, -0.00000000, 0.02876555, 0.00000000, -0.00000000, 0.00000000, -0.04513664, 0.00000000, 0.09891146, 0.00000000, -0.15002747, 0.00000000, 0.18668343, 0.00000000, 0.80000001, 0.00000000, 0.18668343, 0.00000000, -0.15002747, 0.00000000, 0.09891146, 0.00000000, -0.04513664, 0.00000000, -0.00000000, 0.00000000, 0.02876555, -0.00000000, -0.03873157, 0.00000000, 0.03274294, 0.00000000, -0.01729243, 0.00000000, -0.00000000, -0.00000000, 0.01287306, 0.00000000, -0.01806380, -0.00000000, 0.01568450, 0.00000000, -0.00841595, 0.00000000, -0.00000000, 0.00000000, 0.00631455, 0.00000000, -0.00881324, 0.00000000, 0.00757261, 0.00000000, -0.00400260, 0.00000000, -0.00000000, 0.00000000, 0.00287915, 0.00000000, -0.00391400, -0.00000000, 0.00326658, -0.00000000, -0.00167399, 0.00000000, 0.00000000, 0.00000000, 0.00113355, 0.00000000, -0.00150599, -0.00000000, 0.00124352, 0.00000000, -0.00064392, 0.00000000, -0.00000000, 0.00000000, 0.00049620, 0.00000000, -0.00075683})

M.fir_root_raised_cosine = radio.Float32Type.vector_from_array({0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099, 0.00990099})

M.fir_hilbert_transform = radio.Float32Type.vector_from_array({0.00000000, -0.00081401, 0.00000000, -0.00088687, 0.00000000, -0.00101196, 0.00000000, -0.00119383, 0.00000000, -0.00143720, 0.00000000, -0.00174704, 0.00000000, -0.00212861, 0.00000000, -0.00258757, 0.00000000, -0.00313004, 0.00000000, -0.00376282, 0.00000000, -0.00449354, 0.00000000, -0.00533091, 0.00000000, -0.00628508, 0.00000000, -0.00736808, 0.00000000, -0.00859444, 0.00000000, -0.00998198, 0.00000000, -0.01155303, 0.00000000, -0.01333600, 0.00000000, -0.01536779, 0.00000000, -0.01769725, 0.00000000, -0.02039053, 0.00000000, -0.02353939, 0.00000000, -0.02727486, 0.00000000, -0.03179044, 0.00000000, -0.03738391, 0.00000000, -0.04453770, 0.00000000, -0.05408693, 0.00000000, -0.06761150, 0.00000000, -0.08850018, 0.00000000, -0.12556872, 0.00000000, -0.21115005, 0.00000000, -0.63626701, 0.00000000, 0.63626701, 0.00000000, 0.21115005, 0.00000000, 0.12556872, 0.00000000, 0.08850018, 0.00000000, 0.06761150, 0.00000000, 0.05408693, 0.00000000, 0.04453770, 0.00000000, 0.03738391, 0.00000000, 0.03179044, 0.00000000, 0.02727486, 0.00000000, 0.02353939, 0.00000000, 0.02039053, 0.00000000, 0.01769725, 0.00000000, 0.01536779, 0.00000000, 0.01333600, 0.00000000, 0.01155303, 0.00000000, 0.00998198, 0.00000000, 0.00859444, 0.00000000, 0.00736808, 0.00000000, 0.00628508, 0.00000000, 0.00533091, 0.00000000, 0.00449354, 0.00000000, 0.00376282, 0.00000000, 0.00313004, 0.00000000, 0.00258757, 0.00000000, 0.00212861, 0.00000000, 0.00174704, 0.00000000, 0.00143720, 0.00000000, 0.00119383, 0.00000000, 0.00101196, 0.00000000, 0.00088687, 0.00000000, 0.00081401, 0.00000000})

return M
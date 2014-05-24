package lumen.platform.native.audio.openal;

import lumen.types.Types;
import lumen.platform.native.audio.openal.AL;

/** Internal helper class for interaction with OpenAL. */
@:noCompletion class OpenALHelper {

        /** Set up a source using default values for PITCH, GAIN, POSITION, VELOCITY, and LOOPING */
    public static function default_source_setup( source:Int ) {

            //default to 1 pitch
        AL.sourcef( source, AL.PITCH, 1.0 );
            //default to max volume
        AL.sourcef( source, AL.GAIN, 1.0 );
            //default to 2d sound
        AL.source3f( source, AL.POSITION, 0.0, 0.0, 0.0 );
        AL.source3f( source, AL.VELOCITY, 0.0, 0.0, 0.0 );
            //looping is false by default
        AL.sourcei( source, AL.LOOPING, AL.FALSE );

    } //default_source

        /** Determine the OpenAL format of an `AudioInfo` instance, such as AL.FORMAT_MONO16 or AL.FORMAT_STEREO16 */
    public static function determine_format( _info:AudioInfo ) {

            //default format is mono 16
        var format = AL.FORMAT_MONO16;

                //if 2+ channels, it's stereo
            if(_info.channels > 1) {
                if(_info.bits_per_sample == 8) {
                    format = AL.FORMAT_STEREO8;
                    trace("/ lumen /\t > format : STEREO 8");
                } else {
                    format = AL.FORMAT_STEREO16;
                    trace("/ lumen /\t > format : STEREO 16");
                }
            } else { //mono
                if(_info.bits_per_sample == 8) {
                    format = AL.FORMAT_MONO8;
                    trace("/ lumen /\t > format : MONO 8");
                } else {
                    format = AL.FORMAT_MONO16;
                    trace("/ lumen /\t > format : MONO 16");
                }
            }

        return format;

    } //determine_format

} //OpenALHelper


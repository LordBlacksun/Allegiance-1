#ifndef _sound_h_
#define _sound_h_

//////////////////////////////////////////////////////////////////////////////
//
// Sound
//
//////////////////////////////////////////////////////////////////////////////

class SoundEngine : public IObject {
public:
    virtual void Update() = 0;
};

TRef<SoundEngine> CreateSoundEngine(HWND hwnd);

#endif

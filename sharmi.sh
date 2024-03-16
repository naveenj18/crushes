import gradio as gr
from model import transcribe_audio

audio_input = [gr.Audio(label="Speak Here")]
text_output = gr.Textbox(label="Transcription")

def converter(audio_input):
    return transcribe_audio(audio_input)

gr.Interface(
    fn=converter,
    inputs=audio_input,
    outputs=text_output,
    title="Speech-to-Text Converter",
    description="Speak into the microphone and get text transcription."
).launch()
